package com.evie.sidescreen.tiles.imageviewer;

import android.view.View;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class PopupImageViewerViewHolder_ViewBinding extends PopupViewHolder_ViewBinding {
    private PopupImageViewerViewHolder target;

    public PopupImageViewerViewHolder_ViewBinding(PopupImageViewerViewHolder popupImageViewerViewHolder, View view) {
        super(popupImageViewerViewHolder, view);
        this.target = popupImageViewerViewHolder;
        popupImageViewerViewHolder.mImageView = (CustomPhotoDraweeView) Utils.findRequiredViewAsType(view, R.id.image, "field 'mImageView'", CustomPhotoDraweeView.class);
    }

    @Override // com.evie.sidescreen.tiles.imageviewer.PopupViewHolder_ViewBinding, butterknife.Unbinder
    public void unbind() {
        PopupImageViewerViewHolder popupImageViewerViewHolder = this.target;
        if (popupImageViewerViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        popupImageViewerViewHolder.mImageView = null;
        super.unbind();
    }
}
