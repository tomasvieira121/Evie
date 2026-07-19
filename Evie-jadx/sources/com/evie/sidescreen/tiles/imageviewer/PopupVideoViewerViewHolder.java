package com.evie.sidescreen.tiles.imageviewer;

import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.p005ui.SimpleExoPlayerView;
import java.util.Locale;
import org.schema.MediaObject;

/* JADX INFO: loaded from: classes.dex */
public class PopupVideoViewerViewHolder extends PopupViewHolder<PopupVideoViewerPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f366ID = R.layout.ss_popup_video_viewer;

    @BindView
    View mError;

    @BindView
    SimpleDraweeView mImage;

    @BindView
    View mLoading;

    @BindView
    View mPlayButton;

    @BindView
    View mPoppableMedia;

    @BindView
    SimpleDraweeView mSnapshot;

    @BindView
    SimpleExoPlayerView mVideo;

    @BindView
    View mVideoContainer;

    @BindView
    View mVideoFrame;

    @BindView
    View mVideoProgress;
    private final VideoProgressViewHolder mVideoProgressHolder;

    @Override // com.evie.sidescreen.tiles.imageviewer.PopupViewHolder
    public void showContent(String str) {
    }

    public final class VideoProgressViewHolder_ViewBinding implements Unbinder {
        private VideoProgressViewHolder target;

        public VideoProgressViewHolder_ViewBinding(VideoProgressViewHolder videoProgressViewHolder, View view) {
            this.target = videoProgressViewHolder;
            videoProgressViewHolder.mProgressText = (TextView) Utils.findRequiredViewAsType(view, R.id.video_progress_text, "field 'mProgressText'", TextView.class);
        }

        @Override // butterknife.Unbinder
        public void unbind() {
            VideoProgressViewHolder videoProgressViewHolder = this.target;
            if (videoProgressViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.target = null;
            videoProgressViewHolder.mProgressText = null;
        }
    }

    @OnClick
    public void onVideoClick() {
        ((PopupVideoViewerPresenter) this.mPresenter).onContentTapped();
    }

    public void showVideoProgressText(long j) {
        this.mVideoProgressHolder.showVideoProgressText(j);
    }

    public PopupVideoViewerViewHolder(View view, ViewGroup viewGroup) {
        super(view, viewGroup);
        setContent(this.mVideoContainer);
        this.mVideoProgressHolder = new VideoProgressViewHolder(this.mVideoProgress);
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

    public void showSnapshot(Bitmap bitmap) {
        this.mSnapshot.setImageBitmap(bitmap);
        this.mSnapshot.setVisibility(0);
    }

    public void hideSnapshot() {
        this.mSnapshot.setVisibility(8);
    }

    public void showVideoProgress(boolean z) {
        this.mVideoProgress.setVisibility(0);
        if (z) {
            this.mVideoProgress.animate().cancel();
            this.mVideoProgress.animate().alpha(1.0f);
        }
    }

    public void hideVideoProgress(boolean z) {
        if (z) {
            this.mVideoProgress.animate().cancel();
            this.mVideoProgress.animate().alpha(0.0f).withEndAction(new Runnable() { // from class: com.evie.sidescreen.tiles.imageviewer.-$$Lambda$PopupVideoViewerViewHolder$SuvLJsTBcLzGsw0jGvlZ0zBRQzY
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.mVideoProgress.setVisibility(8);
                }
            });
        } else {
            this.mVideoProgress.setVisibility(8);
        }
    }

    public void showLoading() {
        this.mLoading.setVisibility(0);
    }

    public void hideLoading() {
        this.mLoading.setVisibility(8);
    }

    public void showError() {
        this.mError.setVisibility(0);
    }

    public void hideError() {
        this.mError.setVisibility(8);
    }

    public void showPlayButton() {
        this.mPlayButton.setVisibility(0);
    }

    public void hidePlayButton() {
        this.mPlayButton.setVisibility(8);
    }

    static final class VideoProgressViewHolder {

        @BindView
        TextView mProgressText;

        private VideoProgressViewHolder(View view) {
            ButterKnife.bind(this, view);
        }

        public void showVideoProgressText(long j) {
            this.mProgressText.setText(formatVideoProgressText(j));
            this.mProgressText.setVisibility(0);
        }

        private static String formatVideoProgressText(long j) {
            long j2 = j / 1000;
            return String.format(Locale.US, "%d:%02d", Long.valueOf(j2 / 60), Long.valueOf(j2 % 60));
        }
    }

    public void setVideoFrameAspectRatio(int i, int i2) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.mVideoFrame.getLayoutParams();
        layoutParams.dimensionRatio = "H," + i + ":" + i2;
        this.mVideoFrame.setLayoutParams(layoutParams);
    }

    @Override // com.evie.sidescreen.mvp.MvpViewHolder
    public void unbindPresenter() {
        super.unbindPresenter();
        this.mVideo.setPlayer(null);
    }

    @Override // com.evie.sidescreen.tiles.imageviewer.PopupViewHolder
    public int[] getWidthAndHeight(View view) {
        MediaObject media = ((PopupVideoViewerPresenter) this.mPresenter).getMedia();
        return new int[]{media.getWidth() == null ? 0 : media.getWidth().intValue(), media.getHeight() == null ? 0 : media.getHeight().intValue()};
    }
}
