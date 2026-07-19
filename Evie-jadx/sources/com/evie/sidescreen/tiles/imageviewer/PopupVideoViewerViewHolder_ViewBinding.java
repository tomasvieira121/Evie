package com.evie.sidescreen.tiles.imageviewer;

import android.view.View;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.exoplayer2.p005ui.SimpleExoPlayerView;

/* JADX INFO: loaded from: classes.dex */
public class PopupVideoViewerViewHolder_ViewBinding extends PopupViewHolder_ViewBinding {
    private PopupVideoViewerViewHolder target;
    private View view7f0b0200;

    public PopupVideoViewerViewHolder_ViewBinding(final PopupVideoViewerViewHolder popupVideoViewerViewHolder, View view) {
        super(popupVideoViewerViewHolder, view);
        this.target = popupVideoViewerViewHolder;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.video_container, "field 'mVideoContainer' and method 'onVideoClick'");
        popupVideoViewerViewHolder.mVideoContainer = viewFindRequiredView;
        this.view7f0b0200 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.tiles.imageviewer.PopupVideoViewerViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                popupVideoViewerViewHolder.onVideoClick();
            }
        });
        popupVideoViewerViewHolder.mVideoFrame = Utils.findRequiredView(view, R.id.video_frame, "field 'mVideoFrame'");
        popupVideoViewerViewHolder.mPoppableMedia = Utils.findRequiredView(view, R.id.poppable_media, "field 'mPoppableMedia'");
        popupVideoViewerViewHolder.mImage = (SimpleDraweeView) Utils.findRequiredViewAsType(view, R.id.image, "field 'mImage'", SimpleDraweeView.class);
        popupVideoViewerViewHolder.mSnapshot = (SimpleDraweeView) Utils.findRequiredViewAsType(view, R.id.snapshot, "field 'mSnapshot'", SimpleDraweeView.class);
        popupVideoViewerViewHolder.mVideo = (SimpleExoPlayerView) Utils.findRequiredViewAsType(view, R.id.video, "field 'mVideo'", SimpleExoPlayerView.class);
        popupVideoViewerViewHolder.mVideoProgress = Utils.findRequiredView(view, R.id.video_progress, "field 'mVideoProgress'");
        popupVideoViewerViewHolder.mLoading = Utils.findRequiredView(view, R.id.loading, "field 'mLoading'");
        popupVideoViewerViewHolder.mError = Utils.findRequiredView(view, R.id.error, "field 'mError'");
        popupVideoViewerViewHolder.mPlayButton = Utils.findRequiredView(view, R.id.play_button, "field 'mPlayButton'");
    }

    @Override // com.evie.sidescreen.tiles.imageviewer.PopupViewHolder_ViewBinding, butterknife.Unbinder
    public void unbind() {
        PopupVideoViewerViewHolder popupVideoViewerViewHolder = this.target;
        if (popupVideoViewerViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        popupVideoViewerViewHolder.mVideoContainer = null;
        popupVideoViewerViewHolder.mVideoFrame = null;
        popupVideoViewerViewHolder.mPoppableMedia = null;
        popupVideoViewerViewHolder.mImage = null;
        popupVideoViewerViewHolder.mSnapshot = null;
        popupVideoViewerViewHolder.mVideo = null;
        popupVideoViewerViewHolder.mVideoProgress = null;
        popupVideoViewerViewHolder.mLoading = null;
        popupVideoViewerViewHolder.mError = null;
        popupVideoViewerViewHolder.mPlayButton = null;
        this.view7f0b0200.setOnClickListener(null);
        this.view7f0b0200 = null;
        super.unbind();
    }
}
