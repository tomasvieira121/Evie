package com.evie.sidescreen.tiles.articles;

import android.view.View;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.voxel.simplesearchlauncher.view.RoundedFrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class VideoTileViewHolder_ViewBinding extends AbstractHeroViewHolder_ViewBinding {
    private VideoTileViewHolder target;

    public VideoTileViewHolder_ViewBinding(VideoTileViewHolder videoTileViewHolder, View view) {
        super(videoTileViewHolder, view.getContext());
        this.target = videoTileViewHolder;
        videoTileViewHolder.mVideoFrame = (RoundedFrameLayout) Utils.findRequiredViewAsType(view, R.id.video_frame, "field 'mVideoFrame'", RoundedFrameLayout.class);
        videoTileViewHolder.mLoading = Utils.findRequiredView(view, R.id.loading, "field 'mLoading'");
        videoTileViewHolder.mError = Utils.findRequiredView(view, R.id.error, "field 'mError'");
        videoTileViewHolder.mSnapshot = (SimpleDraweeView) Utils.findRequiredViewAsType(view, R.id.snapshot, "field 'mSnapshot'", SimpleDraweeView.class);
        videoTileViewHolder.mVideoProgress = Utils.findRequiredView(view, R.id.video_progress, "field 'mVideoProgress'");
        videoTileViewHolder.mCornerRadius = view.getContext().getResources().getDimensionPixelSize(R.dimen.ss_image_rounded_corner_radius);
    }

    @Override // com.evie.sidescreen.tiles.articles.AbstractHeroViewHolder_ViewBinding, butterknife.Unbinder
    public void unbind() {
        VideoTileViewHolder videoTileViewHolder = this.target;
        if (videoTileViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        videoTileViewHolder.mVideoFrame = null;
        videoTileViewHolder.mLoading = null;
        videoTileViewHolder.mError = null;
        videoTileViewHolder.mSnapshot = null;
        videoTileViewHolder.mVideoProgress = null;
        super.unbind();
    }
}
