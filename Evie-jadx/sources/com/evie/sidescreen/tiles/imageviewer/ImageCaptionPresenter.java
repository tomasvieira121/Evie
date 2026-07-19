package com.evie.sidescreen.tiles.imageviewer;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.tiles.TileRowDividerItemDecoration;
import com.google.gson.internal.bind.util.ISO8601Utils;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import org.schema.NewsArticle;
import org.schema.Organization;

/* JADX INFO: loaded from: classes.dex */
public class ImageCaptionPresenter extends ItemPresenter<ImageCaptionViewHolder> implements TileRowDividerItemDecoration.TileRowDividerContractor {
    private final NewsArticle mArticle;
    private final View.OnClickListener mOnClickListener;
    private final View.OnClickListener mOnMenuClickListener;

    @Override // com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowBottomTileDivider() {
        return true;
    }

    @Override // com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowTopTileDivider() {
        return false;
    }

    public ImageCaptionPresenter(NewsArticle newsArticle, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        this.mArticle = newsArticle;
        this.mOnClickListener = onClickListener;
        this.mOnMenuClickListener = onClickListener2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public ImageCaptionViewHolder createViewHolderInstance(View view) {
        return new ImageCaptionViewHolder(view);
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return ImageCaptionViewHolder.f363ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(ImageCaptionViewHolder imageCaptionViewHolder) {
        imageCaptionViewHolder.setText(this.mArticle.getHeadline());
        Organization publisherOrganization = this.mArticle.getPublisherOrganization();
        if (publisherOrganization != null) {
            if (!TextUtils.isEmpty(publisherOrganization.getName())) {
                imageCaptionViewHolder.showPublisher(publisherOrganization.getName());
            } else {
                imageCaptionViewHolder.hidePublisher();
            }
            if (publisherOrganization.getFaviconUrl() != null) {
                imageCaptionViewHolder.showHeaderLogo(publisherOrganization.getFaviconUrl());
            } else {
                imageCaptionViewHolder.hideHeaderLogo();
            }
        } else {
            imageCaptionViewHolder.hidePublisher();
            imageCaptionViewHolder.hideHeaderLogo();
        }
        String timeElapsedString = getTimeElapsedString(imageCaptionViewHolder.itemView.getContext(), this.mArticle.getDatePublished());
        if (!TextUtils.isEmpty(timeElapsedString)) {
            imageCaptionViewHolder.showTimeElapsed(timeElapsedString);
        } else {
            imageCaptionViewHolder.hideTimeElapsed();
        }
        imageCaptionViewHolder.hideLink();
        imageCaptionViewHolder.updateDividers();
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
}
