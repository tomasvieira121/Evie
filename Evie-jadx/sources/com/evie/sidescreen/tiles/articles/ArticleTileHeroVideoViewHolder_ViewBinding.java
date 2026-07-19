package com.evie.sidescreen.tiles.articles;

import android.view.View;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.exoplayer2.p005ui.SimpleExoPlayerView;

/* JADX INFO: loaded from: classes.dex */
public class ArticleTileHeroVideoViewHolder_ViewBinding extends VideoTileViewHolder_ViewBinding {
    private ArticleTileHeroVideoViewHolder target;
    private View view7f0b008f;

    public ArticleTileHeroVideoViewHolder_ViewBinding(final ArticleTileHeroVideoViewHolder articleTileHeroVideoViewHolder, View view) {
        super(articleTileHeroVideoViewHolder, view);
        this.target = articleTileHeroVideoViewHolder;
        articleTileHeroVideoViewHolder.mPoppableMedia = Utils.findRequiredView(view, R.id.poppable_media, "field 'mPoppableMedia'");
        articleTileHeroVideoViewHolder.mImage = (SimpleDraweeView) Utils.findRequiredViewAsType(view, R.id.image, "field 'mImage'", SimpleDraweeView.class);
        articleTileHeroVideoViewHolder.mVideo = (SimpleExoPlayerView) Utils.findRequiredViewAsType(view, R.id.video, "field 'mVideo'", SimpleExoPlayerView.class);
        articleTileHeroVideoViewHolder.mPlayButton = Utils.findRequiredView(view, R.id.play_button, "field 'mPlayButton'");
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.content, "method 'onClick'");
        this.view7f0b008f = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.tiles.articles.ArticleTileHeroVideoViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                articleTileHeroVideoViewHolder.onClick(view2);
            }
        });
    }

    @Override // com.evie.sidescreen.tiles.articles.VideoTileViewHolder_ViewBinding, com.evie.sidescreen.tiles.articles.AbstractHeroViewHolder_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ArticleTileHeroVideoViewHolder articleTileHeroVideoViewHolder = this.target;
        if (articleTileHeroVideoViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        articleTileHeroVideoViewHolder.mPoppableMedia = null;
        articleTileHeroVideoViewHolder.mImage = null;
        articleTileHeroVideoViewHolder.mVideo = null;
        articleTileHeroVideoViewHolder.mPlayButton = null;
        this.view7f0b008f.setOnClickListener(null);
        this.view7f0b008f = null;
        super.unbind();
    }
}
