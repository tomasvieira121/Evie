package com.evie.sidescreen.personalize;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.internal.DebouncingOnClickListener;
import com.evie.sidescreen.R;
import java.util.List;
import org.schema.Thing;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
public class TopicsFooterBar extends ConstraintLayout {
    private int mItemLayoutId;

    @BindView
    LinearLayout mListItemsLayout;
    private View.OnClickListener mOnCaretClickListener;
    private OnTopicClickListener mOnTopicClickListener;

    public interface OnTopicClickListener {
        void onTopicClickListener(View view, Topic topic);
    }

    public TopicsFooterBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mItemLayoutId = R.layout.ss_topics_footer_item;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind(this, this);
    }

    public void setItemLayoutId(int i) {
        this.mItemLayoutId = i;
    }

    public void setItems(List<? extends Thing> list) {
        this.mListItemsLayout.removeAllViews();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        for (Thing thing : list) {
            if (thing instanceof Topic) {
                Topic topic = (Topic) thing;
                TextView textView = (TextView) layoutInflaterFrom.inflate(this.mItemLayoutId, (ViewGroup) this.mListItemsLayout, false);
                textView.setText(topic.getName());
                textView.setTag(topic);
                textView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.personalize.TopicsFooterBar.1
                    @Override // butterknife.internal.DebouncingOnClickListener
                    public void doClick(View view) {
                        if (TopicsFooterBar.this.mOnTopicClickListener != null) {
                            TopicsFooterBar.this.mOnTopicClickListener.onTopicClickListener(view, (Topic) view.getTag());
                        }
                    }
                });
                this.mListItemsLayout.addView(textView);
            }
        }
    }

    @OnClick
    public void onCaretExpandClick(View view) {
        View.OnClickListener onClickListener = this.mOnCaretClickListener;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    public void setOnCaretClickListener(View.OnClickListener onClickListener) {
        this.mOnCaretClickListener = onClickListener;
    }

    public void setOnTopicClickListener(OnTopicClickListener onTopicClickListener) {
        this.mOnTopicClickListener = onTopicClickListener;
    }
}
