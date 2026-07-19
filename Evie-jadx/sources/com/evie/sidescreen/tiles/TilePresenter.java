package com.evie.sidescreen.tiles;

import android.content.Context;
import android.content.res.Resources;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.R;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.mvp.MvpViewHolder;
import com.google.gson.internal.bind.util.ISO8601Utils;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class TilePresenter<VH extends MvpViewHolder> extends ItemPresenter<VH> implements TileBackgroundItemDecoration.TileBackgroundContractor, TileRowDividerItemDecoration.TileRowDividerContractor {
    protected final AnalyticsModel mAnalyticsModel;
    protected final ScreenInfo mScreenInfo;
    protected final SideScreenContentTile mTile;
    private boolean isTapped = false;
    private long firstVisibleTime = -1;
    private float firstVisiblePosition = -1.0f;

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean backgroundReliesOnAlpha() {
        return false;
    }

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean backgroundReliesOnPrevAlpha() {
        return false;
    }

    protected abstract Map<String, Object> getAnalyticsAttributes();

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean shouldFillInBackground() {
        return true;
    }

    public boolean shouldReportImpressionEvent() {
        return true;
    }

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean shouldRoundBottomCorners() {
        return false;
    }

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean shouldRoundTopCorners() {
        return false;
    }

    @Override // com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowBottomTileDivider() {
        return true;
    }

    @Override // com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowTopTileDivider() {
        return true;
    }

    public TilePresenter(SideScreenContentTile sideScreenContentTile, ScreenInfo screenInfo, AnalyticsModel analyticsModel) {
        this.mTile = sideScreenContentTile;
        this.mScreenInfo = screenInfo;
        this.mAnalyticsModel = analyticsModel;
    }

    protected static int getScreenWidthPixels(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    protected static String getTimeElapsedString(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            Date date = ISO8601Utils.parse(str, new ParsePosition(0));
            Resources resources = context.getResources();
            long time = new Date().getTime() - date.getTime();
            long days = TimeUnit.MILLISECONDS.toDays(time);
            long hours = TimeUnit.MILLISECONDS.toHours(time);
            long jMax = Math.max(0L, TimeUnit.MILLISECONDS.toMinutes(time));
            if (days > 0) {
                return resources.getString(R.string.ss_days_ago, Long.valueOf(days));
            }
            return hours > 0 ? resources.getString(R.string.ss_hours_ago, Long.valueOf(hours)) : resources.getString(R.string.ss_minutes_ago, Long.valueOf(jMax));
        } catch (ParseException unused) {
            return null;
        }
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onVisibilityChanged(boolean z) {
        super.onVisibilityChanged(z);
        if (z) {
            beginImpressionEvent();
        } else {
            endImpressionEvent(getAnalyticsAttributes());
        }
    }

    private void beginImpressionEvent() {
        this.firstVisibleTime = SystemClock.elapsedRealtime();
        if (this.mViewHolder == 0 || this.mViewHolder.itemView == null) {
            return;
        }
        this.firstVisiblePosition = getYPositionFraction(this.mViewHolder.itemView);
    }

    private void endImpressionEvent(Map<String, Object> map) {
        if (this.firstVisibleTime >= 0 && shouldReportImpressionEvent()) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.firstVisibleTime;
            if (jElapsedRealtime < 1000) {
                return;
            }
            float f = this.firstVisiblePosition;
            if (f >= 0.0f) {
                map.put("screen_position_start", Float.valueOf(f));
            }
            if (this.mViewHolder != 0 && this.mViewHolder.itemView != null) {
                map.put("screen_position_end", Float.valueOf(getYPositionFraction(this.mViewHolder.itemView)));
                map.put("is_screen_landscape", Boolean.valueOf(isScreenLandscape(this.mViewHolder.itemView.getContext())));
            }
            map.put("is_tapped", Boolean.valueOf(this.isTapped));
            map.put("duration", Long.valueOf(jElapsedRealtime));
            map.put("attribute_content_tile", this.mTile);
            map.put("attribute_screen_info", this.mScreenInfo);
            this.isTapped = false;
            this.mAnalyticsModel.trackEvent("ev_ss_article_impression", map);
            this.firstVisibleTime = -1L;
            this.firstVisiblePosition = -1.0f;
        }
    }

    private float getYPositionFraction(View view) {
        Context context = view.getContext();
        int[] iArr = new int[2];
        this.mViewHolder.itemView.getLocationInWindow(iArr);
        int statusBarHeight = iArr[1] - getStatusBarHeight(context);
        float usableDisplayHeight = getUsableDisplayHeight(context);
        return Math.round(((usableDisplayHeight - statusBarHeight) / usableDisplayHeight) * 100.0f) / 100.0f;
    }

    private int getUsableDisplayHeight(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    private int getStatusBarHeight(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("status_bar_height", "dimen", AbstractSpiCall.ANDROID_CLIENT_TYPE);
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private boolean isScreenLandscape(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics.heightPixels < displayMetrics.widthPixels;
    }

    public void onTapped() {
        this.isTapped = true;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public boolean isSameItem(Object obj) {
        if (super.isSameItem(obj)) {
            return Objects.equals(this.mTile, ((TilePresenter) obj).mTile);
        }
        return false;
    }
}
