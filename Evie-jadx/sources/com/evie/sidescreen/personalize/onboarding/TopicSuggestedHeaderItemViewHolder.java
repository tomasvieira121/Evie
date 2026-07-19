package com.evie.sidescreen.personalize.onboarding;

import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.MvpViewHolder;

/* JADX INFO: loaded from: classes.dex */
public class TopicSuggestedHeaderItemViewHolder extends MvpViewHolder<TopicSuggestedHeaderItemPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f338ID = R.layout.ss_topic_suggested_header_list_item;

    @BindView
    TextView mTextView;

    public TopicSuggestedHeaderItemViewHolder(View view) {
        super(view);
    }

    public void setLabel(int i) {
        this.mTextView.setText(i);
    }

    public void setTopMargin(boolean z) {
        if (this.mTextView.getLayoutParams() instanceof RecyclerView.LayoutParams) {
            float fApplyDimension = TypedValue.applyDimension(1, z ? 10.0f : 20.0f, this.mTextView.getContext().getResources().getDisplayMetrics());
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) this.mTextView.getLayoutParams();
            layoutParams.setMargins(((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, (int) fApplyDimension, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
            this.mTextView.requestLayout();
        }
    }

    @OnClick
    public void deselectButton() {
        ((TopicSuggestedHeaderItemPresenter) this.mPresenter).onDeselect();
    }
}
