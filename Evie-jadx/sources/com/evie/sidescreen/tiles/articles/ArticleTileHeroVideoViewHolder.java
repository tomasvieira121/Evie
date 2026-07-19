package com.evie.sidescreen.tiles.articles;

import android.view.View;
import butterknife.BindView;
import butterknife.OnClick;
import com.evie.sidescreen.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.p005ui.SimpleExoPlayerView;

/* JADX INFO: loaded from: classes.dex */
public class ArticleTileHeroVideoViewHolder extends VideoTileViewHolder<ArticleTileHeroVideoPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f355ID = R.layout.tile_article_hero_video;

    @BindView
    SimpleDraweeView mImage;

    @BindView
    View mPlayButton;

    @BindView
    View mPoppableMedia;

    @BindView
    SimpleExoPlayerView mVideo;

    public ArticleTileHeroVideoViewHolder(View view) {
        super(view);
    }

    @OnClick
    public void onClick(View view) {
        ((ArticleTileHeroVideoPresenter) this.mPresenter).onMediaClick(view, this);
    }

    public void showPlayButton() {
        this.mPlayButton.setVisibility(0);
    }

    public void hidePlayButton() {
        this.mPlayButton.setVisibility(8);
    }

    public void showVideo(SimpleExoPlayer simpleExoPlayer) {
        this.mVideo.setPlayer(simpleExoPlayer);
        this.mVideo.setVisibility(0);
    }

    public void hideVideo() {
        this.mVideo.setVisibility(8);
    }

    public void showImage(String str) {
        this.mImage.setImageURI(str);
        this.mImage.setVisibility(0);
    }

    public void hideImage() {
        this.mImage.setVisibility(8);
    }

    @Override // com.evie.sidescreen.mvp.MvpViewHolder
    public void unbindPresenter() {
        super.unbindPresenter();
        this.mVideo.setPlayer(null);
    }
}
