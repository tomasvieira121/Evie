package com.evie.sidescreen.tiles.articles;

import android.content.Context;
import android.view.View;
import butterknife.BindView;
import butterknife.OnClick;
import com.aol.mobile.sdk.controls.ContentControls;
import com.aol.mobile.sdk.player.Binder;
import com.aol.mobile.sdk.player.Player;
import com.aol.mobile.sdk.player.view.PlayerView;
import com.evie.sidescreen.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class ArticleTileHeroOathViewHolder extends VideoTileViewHolder<ArticleTileHeroOathPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f353ID = R.layout.tile_article_hero_oath_video;
    private final Binder mBinder;
    private final Context mContext;
    private final ContentControls mCustomControls;

    @BindView
    SimpleDraweeView mImage;

    @BindView
    PlayerView mOathPlayerView;

    @BindView
    View mPlayButton;
    private final VideoTileViewHolder.VideoProgressViewHolder mVideoProgressHolder;

    @OnClick
    public void onClick(View view) {
        ((ArticleTileHeroOathPresenter) this.mPresenter).onMediaClick(view);
    }

    @Override // com.evie.sidescreen.tiles.articles.VideoTileViewHolder
    public void hideVideoProgressText() {
        this.mVideoProgressHolder.hideVideoProgressText();
    }

    @Override // com.evie.sidescreen.tiles.articles.VideoTileViewHolder
    public void showVideoProgressText(long j) {
        this.mVideoProgressHolder.showVideoProgressText(j);
    }

    public ArticleTileHeroOathViewHolder(Context context, View view) {
        super(view);
        this.mBinder = new Binder();
        this.mContext = context;
        this.mVideoProgressHolder = new VideoTileViewHolder.VideoProgressViewHolder(this.mVideoProgress);
        this.mCustomControls = new BlankOathContentControlsView(this.mContext);
    }

    public void showVideo(Player player) {
        this.mOathPlayerView.setVisibility(0);
        this.mOathPlayerView.setContentControls(this.mCustomControls);
        this.mBinder.setPlayer(player);
        this.mBinder.setPlayerView(this.mOathPlayerView);
    }

    public void hideVideo() {
        this.mOathPlayerView.setVisibility(8);
    }

    public void showImage(String str) {
        this.mImage.setImageURI(str);
        this.mImage.setVisibility(0);
    }

    public void hideImage() {
        this.mImage.setVisibility(8);
    }

    public void showPlayButton() {
        this.mPlayButton.setVisibility(0);
    }

    public void hidePlayButton() {
        this.mPlayButton.setVisibility(8);
    }
}
