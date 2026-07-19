package com.evie.sidescreen.personalize.onboarding;

import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class TopicSuggestedHeaderItemViewHolder_ViewBinding implements Unbinder {
    private TopicSuggestedHeaderItemViewHolder target;
    private View view7f0b00a2;

    public TopicSuggestedHeaderItemViewHolder_ViewBinding(final TopicSuggestedHeaderItemViewHolder topicSuggestedHeaderItemViewHolder, View view) {
        this.target = topicSuggestedHeaderItemViewHolder;
        topicSuggestedHeaderItemViewHolder.mTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.text, "field 'mTextView'", TextView.class);
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.deselect_button, "method 'deselectButton'");
        this.view7f0b00a2 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.personalize.onboarding.TopicSuggestedHeaderItemViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                topicSuggestedHeaderItemViewHolder.deselectButton();
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        TopicSuggestedHeaderItemViewHolder topicSuggestedHeaderItemViewHolder = this.target;
        if (topicSuggestedHeaderItemViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        topicSuggestedHeaderItemViewHolder.mTextView = null;
        this.view7f0b00a2.setOnClickListener(null);
        this.view7f0b00a2 = null;
    }
}
