package com.evie.sidescreen.tiles.videos;

import android.content.Context;
import android.view.View;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.relatedcontent.RelatedVideosActivity;
import com.evie.sidescreen.tiles.TileRowDividerItemDecoration;

/* JADX INFO: loaded from: classes.dex */
public class AutoplayPresenter extends ItemPresenter<AutoplayViewHolder> implements TileRowDividerItemDecoration.TileRowDividerContractor {
    private final ActivityStarter mActivityStarter;
    private boolean mAutoplay;
    private final ScreenInfo mScreenInfo;
    private SideScreenContentTile mTile = null;

    @Override // com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowBottomTileDivider() {
        return false;
    }

    @Override // com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowTopTileDivider() {
        return true;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return AutoplayViewHolder.f369ID;
    }

    public AutoplayPresenter(ScreenInfo screenInfo, ActivityStarter activityStarter, boolean z) {
        this.mActivityStarter = activityStarter;
        this.mScreenInfo = screenInfo;
        this.mAutoplay = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public AutoplayViewHolder createViewHolderInstance(View view) {
        return new AutoplayViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(AutoplayViewHolder autoplayViewHolder) {
        autoplayViewHolder.setAutoplay(this.mAutoplay);
    }

    public void onCheckedChanged(boolean z) {
        Context context = ((AutoplayViewHolder) this.mViewHolder).itemView.getContext();
        if (context instanceof RelatedVideosActivity) {
            ((RelatedVideosActivity) context).setAutoplay(z);
        }
    }
}
