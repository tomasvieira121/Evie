package com.evie.sidescreen.prompts.announcement;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import butterknife.BindView;
import butterknife.OnClick;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.MvpViewHolder;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class AnnouncementViewHolder extends MvpViewHolder<AnnouncementPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f341ID = R.layout.ss_prompt_announcement;

    @BindView
    protected TextView mAction;

    @BindView
    protected TextView mDescription;

    @BindView
    protected TextView mDismiss;

    @BindView
    protected SimpleDraweeView mImage;

    @BindView
    protected View mRailHori;

    @BindView
    protected View mRailVert;

    @BindView
    protected ConstraintLayout mSection;

    @BindView
    protected TextView mTitle;

    @OnClick
    public void onDismissClick(View view) {
        ((AnnouncementPresenter) this.mPresenter).onDismissClick(view);
    }

    @OnClick
    public void onActionClick(View view) {
        ((AnnouncementPresenter) this.mPresenter).onActionClick(view);
    }

    public AnnouncementViewHolder(View view) {
        super(view);
    }

    public void hideImage() {
        this.mImage.setVisibility(8);
    }

    public void showImage(String str) {
        if (str != null) {
            this.mImage.setImageURI(str);
            this.mImage.setVisibility(0);
        }
    }

    public void hideDismissButton() {
        this.mDismiss.setVisibility(8);
    }

    public void showDismissButton(String str) {
        this.mDismiss.setText(str);
        this.mDismiss.setVisibility(0);
    }

    public void hideActionButton() {
        this.mAction.setVisibility(8);
    }

    public void showActionButton(String str) {
        this.mAction.setText(str);
        this.mAction.setVisibility(0);
    }

    public void showTitle(String str) {
        this.mTitle.setText(str);
    }

    public void showDescription(String str) {
        this.mDescription.setText(str);
    }

    public void showRailVert() {
        this.mRailVert.setVisibility(0);
    }

    public void hideRailVert() {
        this.mRailVert.setVisibility(8);
    }

    public void showRailHori() {
        this.mRailHori.setVisibility(0);
    }

    public void hideRailHori() {
        this.mRailHori.setVisibility(8);
    }
}
