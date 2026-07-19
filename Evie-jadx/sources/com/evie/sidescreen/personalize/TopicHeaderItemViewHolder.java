package com.evie.sidescreen.personalize;

import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.MvpViewHolder;

/* JADX INFO: loaded from: classes.dex */
public class TopicHeaderItemViewHolder extends MvpViewHolder<TopicHeaderItemPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f335ID = R.layout.ss_topic_header_list_item;

    @BindView
    TextView mTextView;

    public TopicHeaderItemViewHolder(View view) {
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

    public void setLabel(String str) {
        this.mTextView.setText(str);
    }
}
