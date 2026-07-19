package com.evie.sidescreen.prompts.breakingnews;

import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.evie.models.breakingnews.data.BreakingNews;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.MvpViewHolder;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class BreakingNewsTileViewHolder extends MvpViewHolder<BreakingNewsTilePresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f343ID = R.layout.ss_prompt_breakingnews_row;

    @BindView
    TextView mDescription;

    @BindView
    SimpleDraweeView mImage;

    @BindView
    View mPadding;

    @BindView
    TextView mTitle;

    @OnClick
    public void onTileClick() {
        ((BreakingNewsTilePresenter) this.mPresenter).onTileClick();
    }

    public BreakingNewsTileViewHolder(View view, BreakingNews breakingNews) {
        super(view);
    }

    public void hideImage() {
        this.mImage.setVisibility(8);
        this.mPadding.setVisibility(8);
    }

    public void showImage(String str) {
        this.mImage.setImageURI(str);
        this.mImage.setVisibility(0);
        this.mPadding.setVisibility(4);
    }
}
