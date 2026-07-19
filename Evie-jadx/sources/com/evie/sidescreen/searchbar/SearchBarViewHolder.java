package com.evie.sidescreen.searchbar;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.MvpViewHolder;
import com.voxel.simplesearchlauncher.utils.alpha.AlphaSet;
import com.voxel.simplesearchlauncher.utils.alpha.AlphaSetAnimator;

/* JADX INFO: loaded from: classes.dex */
public class SearchBarViewHolder extends MvpViewHolder<SearchBarPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f347ID = R.layout.ss_search_bar;
    private AlphaSet mAlphaSet;
    private boolean mHasShown;

    @BindView
    TextView mHint;

    @BindView
    ImageView mSearchBarBackground;

    @BindView
    ImageView mSearchIcon;

    @BindView
    ImageView mSettingsIcon;
    private boolean mShouldInvertColors;

    public SearchBarViewHolder(View view) {
        super(view);
        this.mShouldInvertColors = false;
        this.mHasShown = false;
        this.mAlphaSet = new AlphaSet(this.mSearchBarBackground, this.mSearchIcon, this.mHint, this.mSettingsIcon);
        this.mAlphaSet.putValue(this, 0.0f);
    }

    @OnClick
    public void onSearchBarClick(View view) {
        ((SearchBarPresenter) this.mPresenter).onSearchBarClick(view);
    }

    @OnClick
    public void onSettingsClick(View view) {
        ((SearchBarPresenter) this.mPresenter).onSettingsClick(view);
    }

    public void setBackground(Drawable drawable) {
        this.itemView.setBackground(drawable);
    }

    public void show() {
        if (this.mHasShown) {
            return;
        }
        this.mHasShown = true;
        AlphaSetAnimator.ofFloat(this.mAlphaSet, this, 1.0f).start();
    }

    public void setShouldInvert(boolean z) {
        this.mShouldInvertColors = z;
        updateColors();
    }

    public void updateColors() {
        if (this.mShouldInvertColors) {
            this.mHint.setTextColor(-788529153);
            this.mSearchIcon.setColorFilter(-788529153);
            this.mSettingsIcon.setImageResource(R.drawable.searchbar_settings);
        } else {
            this.mHint.setTextColor(-16777216);
            this.mSearchIcon.setColorFilter(-16777216);
            this.mSettingsIcon.setImageResource(R.drawable.searchbar_settings_dark);
        }
    }

    public boolean hasShown() {
        return this.mHasShown;
    }
}
