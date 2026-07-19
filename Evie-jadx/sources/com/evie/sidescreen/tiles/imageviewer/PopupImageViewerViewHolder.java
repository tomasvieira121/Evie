package com.evie.sidescreen.tiles.imageviewer;

import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import butterknife.BindView;
import com.evie.sidescreen.R;
import me.relex.photodraweeview.OnViewTapListener;

/* JADX INFO: loaded from: classes.dex */
public class PopupImageViewerViewHolder extends PopupViewHolder<PopupImageViewerPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f364ID = R.layout.ss_popup_image_viewer;

    @BindView
    CustomPhotoDraweeView mImageView;

    public PopupImageViewerViewHolder(View view, ViewGroup viewGroup) {
        super(view, viewGroup);
        setContent(this.mImageView);
        this.mImageView.getAttacher().setAllowParentInterceptOnEdge(false);
        this.mImageView.getAttacher().setOnViewTapListener(new OnViewTapListener() { // from class: com.evie.sidescreen.tiles.imageviewer.-$$Lambda$PopupImageViewerViewHolder$mS57aHqX0oWU44e0sSAeN1dCIJc
            @Override // me.relex.photodraweeview.OnViewTapListener
            public final void onViewTap(View view2, float f, float f2) {
                ((PopupImageViewerPresenter) this.f$0.mPresenter).onContentTapped();
            }
        });
    }

    @Override // com.evie.sidescreen.tiles.imageviewer.PopupViewHolder
    public void showContent(String str) {
        this.mImageView.setPhotoUri(Uri.parse(str), this.itemView.getContext());
    }

    @Override // com.evie.sidescreen.tiles.imageviewer.PopupViewHolder
    public int[] getWidthAndHeight(View view) {
        if (this.mImageView.getImageInfoWidth() == 0 || this.mImageView.getImageInfoHeight() == 0) {
            return new int[]{0, 0};
        }
        return new int[]{this.mImageView.getImageInfoWidth(), this.mImageView.getImageInfoHeight()};
    }
}
