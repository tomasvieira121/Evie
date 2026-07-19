package com.evie.sidescreen.prompts.breakingnews;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import butterknife.BindView;
import butterknife.OnClick;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.MvpViewHolder;

/* JADX INFO: loaded from: classes.dex */
public class BreakingNewsViewHolder extends MvpViewHolder<BreakingNewsPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f344ID = R.layout.ss_prompt_breakingnews;

    @BindView
    ConstraintLayout mSection;

    @OnClick
    public void onDismiss(View view) {
        ((BreakingNewsPresenter) this.mPresenter).onDismissClick(view);
    }

    public BreakingNewsViewHolder(View view) {
        super(view);
    }
}
