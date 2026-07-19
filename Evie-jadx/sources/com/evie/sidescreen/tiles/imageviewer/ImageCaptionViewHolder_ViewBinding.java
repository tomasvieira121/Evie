package com.evie.sidescreen.tiles.imageviewer;

import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class ImageCaptionViewHolder_ViewBinding implements Unbinder {
    private ImageCaptionViewHolder target;

    public ImageCaptionViewHolder_ViewBinding(ImageCaptionViewHolder imageCaptionViewHolder, View view) {
        this.target = imageCaptionViewHolder;
        imageCaptionViewHolder.mTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.text, "field 'mTextView'", TextView.class);
        imageCaptionViewHolder.mHeaderLogo = (SimpleDraweeView) Utils.findRequiredViewAsType(view, R.id.header_logo, "field 'mHeaderLogo'", SimpleDraweeView.class);
        imageCaptionViewHolder.mHeaderPublisher = (TextView) Utils.findRequiredViewAsType(view, R.id.header_publisher, "field 'mHeaderPublisher'", TextView.class);
        imageCaptionViewHolder.mHeaderTimeElapsedDivider = (TextView) Utils.findRequiredViewAsType(view, R.id.header_time_elapsed_divider, "field 'mHeaderTimeElapsedDivider'", TextView.class);
        imageCaptionViewHolder.mHeaderTimeElapsed = (TextView) Utils.findRequiredViewAsType(view, R.id.header_time_elapsed, "field 'mHeaderTimeElapsed'", TextView.class);
        imageCaptionViewHolder.mHeaderLink = (TextView) Utils.findRequiredViewAsType(view, R.id.header_link, "field 'mHeaderLink'", TextView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        ImageCaptionViewHolder imageCaptionViewHolder = this.target;
        if (imageCaptionViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        imageCaptionViewHolder.mTextView = null;
        imageCaptionViewHolder.mHeaderLogo = null;
        imageCaptionViewHolder.mHeaderPublisher = null;
        imageCaptionViewHolder.mHeaderTimeElapsedDivider = null;
        imageCaptionViewHolder.mHeaderTimeElapsed = null;
        imageCaptionViewHolder.mHeaderLink = null;
    }
}
