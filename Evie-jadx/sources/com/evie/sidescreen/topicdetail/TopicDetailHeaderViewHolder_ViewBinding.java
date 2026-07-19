package com.evie.sidescreen.topicdetail;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class TopicDetailHeaderViewHolder_ViewBinding implements Unbinder {
    private TopicDetailHeaderViewHolder target;
    private View view7f0b003e;
    private View view7f0b00e1;

    public TopicDetailHeaderViewHolder_ViewBinding(final TopicDetailHeaderViewHolder topicDetailHeaderViewHolder, View view) {
        this.target = topicDetailHeaderViewHolder;
        topicDetailHeaderViewHolder.mBackdrop = (ImageView) Utils.findRequiredViewAsType(view, R.id.backdrop, "field 'mBackdrop'", ImageView.class);
        topicDetailHeaderViewHolder.mLogo = (ImageView) Utils.findRequiredViewAsType(view, R.id.logo, "field 'mLogo'", ImageView.class);
        topicDetailHeaderViewHolder.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title, "field 'mTitle'", TextView.class);
        topicDetailHeaderViewHolder.mDescription = (TextView) Utils.findRequiredViewAsType(view, R.id.description, "field 'mDescription'", TextView.class);
        topicDetailHeaderViewHolder.mFollowButton = Utils.findRequiredView(view, R.id.follow_button, "field 'mFollowButton'");
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.back_button, "method 'onClickBackButton'");
        this.view7f0b003e = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.topicdetail.TopicDetailHeaderViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                topicDetailHeaderViewHolder.onClickBackButton();
            }
        });
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.follow_context_button, "method 'onClickFollowContextButton'");
        this.view7f0b00e1 = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.topicdetail.TopicDetailHeaderViewHolder_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                topicDetailHeaderViewHolder.onClickFollowContextButton(view2);
            }
        });
        topicDetailHeaderViewHolder.mLogoWidth = view.getContext().getResources().getDimensionPixelSize(R.dimen.ss_topic_detail_logo_dimen);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        TopicDetailHeaderViewHolder topicDetailHeaderViewHolder = this.target;
        if (topicDetailHeaderViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        topicDetailHeaderViewHolder.mBackdrop = null;
        topicDetailHeaderViewHolder.mLogo = null;
        topicDetailHeaderViewHolder.mTitle = null;
        topicDetailHeaderViewHolder.mDescription = null;
        topicDetailHeaderViewHolder.mFollowButton = null;
        this.view7f0b003e.setOnClickListener(null);
        this.view7f0b003e = null;
        this.view7f0b00e1.setOnClickListener(null);
        this.view7f0b00e1 = null;
    }
}
