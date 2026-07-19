package com.evie.sidescreen.tiles.articles;

import android.content.Context;
import android.view.View;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.tiles.TilePresenter;
import com.evie.sidescreen.tiles.articles.AbstractHeroViewHolder;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractHeroPresenter<T extends AbstractHeroViewHolder> extends TilePresenter<T> {
    private boolean mTopHeroMode;

    public AbstractHeroPresenter(SideScreenContentTile sideScreenContentTile, ScreenInfo screenInfo, AnalyticsModel analyticsModel) {
        super(sideScreenContentTile, screenInfo, analyticsModel);
        this.mTopHeroMode = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(T t) {
        t.setTopHeroMode(this.mTopHeroMode);
    }

    @Override // com.evie.sidescreen.tiles.TilePresenter, com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowBottomTileDivider() {
        if (this.mTopHeroMode) {
            return false;
        }
        return super.shouldShowBottomTileDivider();
    }

    public void onMediaClick(View view) {
        onTapped();
    }

    public void onMediaClick(View view, ArticleTileHeroVideoViewHolder articleTileHeroVideoViewHolder) {
        onTapped();
    }

    public void onArticleClick(View view, Context context) {
        onTapped();
    }
}
