package com.evie.sidescreen.tiles.imageviewer;

import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.MvpViewHolder;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class ImageCaptionViewHolder extends MvpViewHolder<ImageCaptionPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f363ID = R.layout.ss_image_caption;

    @BindView
    protected TextView mHeaderLink;

    @BindView
    protected SimpleDraweeView mHeaderLogo;

    @BindView
    protected TextView mHeaderPublisher;

    @BindView
    protected TextView mHeaderTimeElapsed;

    @BindView
    protected TextView mHeaderTimeElapsedDivider;

    @BindView
    TextView mTextView;

    public ImageCaptionViewHolder(View view) {
        super(view);
    }

    public void setText(String str) {
        this.mTextView.setText(str);
    }

    public void showHeaderLogo(String str) {
        this.mHeaderLogo.setImageURI(str);
        this.mHeaderLogo.setVisibility(0);
    }

    public void hideHeaderLogo() {
        this.mHeaderLogo.setImageURI((String) null);
        this.mHeaderLogo.setVisibility(8);
    }

    public void showPublisher(String str) {
        this.mHeaderPublisher.setText(str);
        this.mHeaderPublisher.setVisibility(0);
    }

    public void hidePublisher() {
        this.mHeaderPublisher.setVisibility(8);
    }

    public void showTimeElapsed(String str) {
        this.mHeaderTimeElapsed.setText(str);
        this.mHeaderTimeElapsed.setVisibility(0);
    }

    public void hideTimeElapsed() {
        this.mHeaderTimeElapsed.setVisibility(8);
    }

    public void hideLink() {
        this.mHeaderLink.setVisibility(8);
    }

    public void updateDividers() {
        this.mHeaderTimeElapsedDivider.setVisibility(this.mHeaderTimeElapsed.getVisibility());
        if (this.mHeaderLogo.getVisibility() == 8 && this.mHeaderPublisher.getVisibility() == 8 && this.mHeaderTimeElapsedDivider.getVisibility() == 0) {
            this.mHeaderTimeElapsedDivider.setVisibility(8);
        }
    }
}
