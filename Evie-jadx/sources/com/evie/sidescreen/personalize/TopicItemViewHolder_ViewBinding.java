package com.evie.sidescreen.personalize;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class TopicItemViewHolder_ViewBinding implements Unbinder {
    private TopicItemViewHolder target;
    private View view7f0b008f;

    public TopicItemViewHolder_ViewBinding(final TopicItemViewHolder topicItemViewHolder, View view) {
        this.target = topicItemViewHolder;
        topicItemViewHolder.mIcon = (SimpleDraweeView) Utils.findRequiredViewAsType(view, R.id.icon, "field 'mIcon'", SimpleDraweeView.class);
        topicItemViewHolder.mTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.label, "field 'mTextView'", TextView.class);
        topicItemViewHolder.mFollowButton = Utils.findRequiredView(view, R.id.follow_button, "field 'mFollowButton'");
        topicItemViewHolder.mFollowContainer = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.follow_button_container, "field 'mFollowContainer'", ViewGroup.class);
        topicItemViewHolder.mDivider = view.findViewById(R.id.divider);
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.content, "method 'onItemViewClick'");
        this.view7f0b008f = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.personalize.TopicItemViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                topicItemViewHolder.onItemViewClick();
            }
        });
        topicItemViewHolder.mIconWidth = view.getContext().getResources().getDimensionPixelSize(R.dimen.ss_topic_icon_dimen);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        TopicItemViewHolder topicItemViewHolder = this.target;
        if (topicItemViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        topicItemViewHolder.mIcon = null;
        topicItemViewHolder.mTextView = null;
        topicItemViewHolder.mFollowButton = null;
        topicItemViewHolder.mFollowContainer = null;
        topicItemViewHolder.mDivider = null;
        this.view7f0b008f.setOnClickListener(null);
        this.view7f0b008f = null;
    }
}
