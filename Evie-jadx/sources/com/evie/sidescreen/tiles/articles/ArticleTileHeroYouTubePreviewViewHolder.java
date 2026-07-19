package com.evie.sidescreen.tiles.articles;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import butterknife.BindView;
import butterknife.OnClick;
import com.evie.sidescreen.R;
import com.facebook.drawee.view.SimpleDraweeView;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class ArticleTileHeroYouTubePreviewViewHolder extends AbstractHeroViewHolder<ArticleTileHeroYouTubePreviewPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f356ID = R.layout.tile_article_hero_youtube_video;

    @BindView
    SimpleDraweeView mImage;

    @BindView
    View mPoppableMedia;

    @BindView
    TextView mProgressText;

    @BindView
    View mVideoFrame;

    @BindView
    View mVideoProgress;

    public ArticleTileHeroYouTubePreviewViewHolder(View view) {
        super(view);
    }

    @OnClick
    public void onImageClick(View view) {
        ((ArticleTileHeroYouTubePreviewPresenter) this.mPresenter).onMediaClick(view);
    }

    public void showImage(String str) {
        this.mImage.setImageURI((String) null);
        this.mImage.setImageURI(str);
        this.mImage.setVisibility(0);
    }

    public void hideImage() {
        this.mImage.setImageURI((String) null);
        this.mImage.setVisibility(8);
    }

    public void setVideoFrameAspectRatio(int i, int i2) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.mVideoFrame.getLayoutParams();
        layoutParams.dimensionRatio = "H," + i + ":" + i2;
        this.mVideoFrame.setLayoutParams(layoutParams);
    }

    public void showVideoProgressText(long j) {
        this.mProgressText.setText(formatVideoProgressText(j));
        this.mVideoProgress.setVisibility(0);
    }

    public void hideVideoProgressText() {
        this.mVideoProgress.setVisibility(8);
    }

    private static String formatVideoProgressText(long j) {
        long j2 = j / 1000;
        return String.format(Locale.US, "%d:%02d", Long.valueOf(j2 / 60), Long.valueOf(j2 % 60));
    }
}
