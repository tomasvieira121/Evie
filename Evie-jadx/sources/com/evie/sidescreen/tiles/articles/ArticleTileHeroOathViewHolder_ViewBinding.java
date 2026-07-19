package com.evie.sidescreen.tiles.articles;

import android.view.View;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.aol.mobile.sdk.player.view.PlayerView;
import com.evie.sidescreen.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class ArticleTileHeroOathViewHolder_ViewBinding extends VideoTileViewHolder_ViewBinding {
    private ArticleTileHeroOathViewHolder target;
    private View view7f0b008f;

    public ArticleTileHeroOathViewHolder_ViewBinding(final ArticleTileHeroOathViewHolder articleTileHeroOathViewHolder, View view) {
        super(articleTileHeroOathViewHolder, view);
        this.target = articleTileHeroOathViewHolder;
        articleTileHeroOathViewHolder.mOathPlayerView = (PlayerView) Utils.findRequiredViewAsType(view, R.id.video, "field 'mOathPlayerView'", PlayerView.class);
        articleTileHeroOathViewHolder.mImage = (SimpleDraweeView) Utils.findRequiredViewAsType(view, R.id.image, "field 'mImage'", SimpleDraweeView.class);
        articleTileHeroOathViewHolder.mPlayButton = Utils.findRequiredView(view, R.id.oath_play_button, "field 'mPlayButton'");
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.content, "method 'onClick'");
        this.view7f0b008f = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.tiles.articles.ArticleTileHeroOathViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                articleTileHeroOathViewHolder.onClick(view2);
            }
        });
    }

    @Override // com.evie.sidescreen.tiles.articles.VideoTileViewHolder_ViewBinding, com.evie.sidescreen.tiles.articles.AbstractHeroViewHolder_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ArticleTileHeroOathViewHolder articleTileHeroOathViewHolder = this.target;
        if (articleTileHeroOathViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        articleTileHeroOathViewHolder.mOathPlayerView = null;
        articleTileHeroOathViewHolder.mImage = null;
        articleTileHeroOathViewHolder.mPlayButton = null;
        this.view7f0b008f.setOnClickListener(null);
        this.view7f0b008f = null;
        super.unbind();
    }
}
