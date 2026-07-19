package com.evie.sidescreen.tiles.articles;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import butterknife.BindDimen;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.evie.sidescreen.tiles.TilePresenter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.voxel.simplesearchlauncher.view.RoundedFrameLayout;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class VideoTileViewHolder<P extends TilePresenter> extends AbstractHeroViewHolder<P> {

    @BindDimen
    int mCornerRadius;

    @BindView
    View mError;

    @BindView
    View mLoading;

    @BindView
    SimpleDraweeView mSnapshot;

    @BindView
    RoundedFrameLayout mVideoFrame;

    @BindView
    View mVideoProgress;
    private final VideoProgressViewHolder mVideoProgressHolder;

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

    public void hideVideoProgressText() {
        this.mVideoProgressHolder.hideVideoProgressText();
    }

    public void showVideoProgressText(long j) {
        this.mVideoProgressHolder.showVideoProgressText(j);
    }

    public VideoTileViewHolder(View view) {
        super(view);
        this.mVideoProgressHolder = new VideoProgressViewHolder(this.mVideoProgress);
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
            this.mVideoProgress.animate().alpha(0.0f).withEndAction(new Runnable() { // from class: com.evie.sidescreen.tiles.articles.-$$Lambda$VideoTileViewHolder$hq5c9xjZy2r6RaEwnn-seJRJKGw
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.mVideoProgress.setVisibility(8);
                }
            });
        } else {
            this.mVideoProgress.setVisibility(8);
        }
    }

    public static final class VideoProgressViewHolder {

        @BindView
        TextView mProgressText;

        public VideoProgressViewHolder(View view) {
            ButterKnife.bind(this, view);
        }

        public void showVideoProgressText(long j) {
            this.mProgressText.setText(formatVideoProgressText(j));
            this.mProgressText.setVisibility(0);
        }

        public void hideVideoProgressText() {
            this.mProgressText.setVisibility(8);
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

    @Override // com.evie.sidescreen.tiles.articles.AbstractHeroViewHolder
    public void setTopHeroMode(boolean z) {
        super.setTopHeroMode(z);
        if (z) {
            this.mVideoFrame.setBottomLeftCornerRadius(0.0f);
            this.mVideoFrame.setBottomRightCornerRadius(0.0f);
        } else {
            this.mVideoFrame.setBottomLeftCornerRadius(this.mCornerRadius);
            this.mVideoFrame.setBottomRightCornerRadius(this.mCornerRadius);
        }
    }
}
