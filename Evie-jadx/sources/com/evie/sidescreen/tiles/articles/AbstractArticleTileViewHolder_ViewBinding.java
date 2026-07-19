package com.evie.sidescreen.tiles.articles;

import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class AbstractArticleTileViewHolder_ViewBinding implements Unbinder {
    private AbstractArticleTileViewHolder target;
    private View view7f0b008f;
    private View view7f0b00f5;

    public AbstractArticleTileViewHolder_ViewBinding(final AbstractArticleTileViewHolder abstractArticleTileViewHolder, View view) {
        this.target = abstractArticleTileViewHolder;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.content, "field 'mContent' and method 'onClick'");
        abstractArticleTileViewHolder.mContent = viewFindRequiredView;
        this.view7f0b008f = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.tiles.articles.AbstractArticleTileViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                abstractArticleTileViewHolder.onClick(view2);
            }
        });
        abstractArticleTileViewHolder.mHeaderLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.main_content, "field 'mHeaderLayout'", LinearLayout.class);
        abstractArticleTileViewHolder.mImage = (SimpleDraweeView) Utils.findOptionalViewAsType(view, R.id.image, "field 'mImage'", SimpleDraweeView.class);
        abstractArticleTileViewHolder.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title, "field 'mTitle'", TextView.class);
        abstractArticleTileViewHolder.mHeader = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.header, "field 'mHeader'", ViewGroup.class);
        abstractArticleTileViewHolder.mHeaderLogo = (SimpleDraweeView) Utils.findRequiredViewAsType(view, R.id.header_logo, "field 'mHeaderLogo'", SimpleDraweeView.class);
        abstractArticleTileViewHolder.mHeaderPublisher = (TextView) Utils.findRequiredViewAsType(view, R.id.header_publisher, "field 'mHeaderPublisher'", TextView.class);
        abstractArticleTileViewHolder.mHeaderTopicDivider = (TextView) Utils.findRequiredViewAsType(view, R.id.header_topic_divider, "field 'mHeaderTopicDivider'", TextView.class);
        abstractArticleTileViewHolder.mHeaderTopic = (TextView) Utils.findRequiredViewAsType(view, R.id.header_topic, "field 'mHeaderTopic'", TextView.class);
        abstractArticleTileViewHolder.mHeaderTimeElapsedDivider = (TextView) Utils.findRequiredViewAsType(view, R.id.header_time_elapsed_divider, "field 'mHeaderTimeElapsedDivider'", TextView.class);
        abstractArticleTileViewHolder.mHeaderTimeElapsed = (TextView) Utils.findRequiredViewAsType(view, R.id.header_time_elapsed, "field 'mHeaderTimeElapsed'", TextView.class);
        abstractArticleTileViewHolder.mHeaderLinkDivider = (TextView) Utils.findRequiredViewAsType(view, R.id.header_link_divider, "field 'mHeaderLinkDivider'", TextView.class);
        abstractArticleTileViewHolder.mHeaderLink = (TextView) Utils.findRequiredViewAsType(view, R.id.header_link, "field 'mHeaderLink'", TextView.class);
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.header_context_button, "field 'mHeaderContextButton' and method 'onContextMenuClick'");
        abstractArticleTileViewHolder.mHeaderContextButton = viewFindRequiredView2;
        this.view7f0b00f5 = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.tiles.articles.AbstractArticleTileViewHolder_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                abstractArticleTileViewHolder.onContextMenuClick(view2);
            }
        });
        abstractArticleTileViewHolder.mHeaderTagContainer = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.header_tag_container, "field 'mHeaderTagContainer'", ViewGroup.class);
        abstractArticleTileViewHolder.mButtonTouchDelegateSize = view.getContext().getResources().getDimensionPixelSize(R.dimen.ss_button_touch_delegate_size);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        AbstractArticleTileViewHolder abstractArticleTileViewHolder = this.target;
        if (abstractArticleTileViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        abstractArticleTileViewHolder.mContent = null;
        abstractArticleTileViewHolder.mHeaderLayout = null;
        abstractArticleTileViewHolder.mImage = null;
        abstractArticleTileViewHolder.mTitle = null;
        abstractArticleTileViewHolder.mHeader = null;
        abstractArticleTileViewHolder.mHeaderLogo = null;
        abstractArticleTileViewHolder.mHeaderPublisher = null;
        abstractArticleTileViewHolder.mHeaderTopicDivider = null;
        abstractArticleTileViewHolder.mHeaderTopic = null;
        abstractArticleTileViewHolder.mHeaderTimeElapsedDivider = null;
        abstractArticleTileViewHolder.mHeaderTimeElapsed = null;
        abstractArticleTileViewHolder.mHeaderLinkDivider = null;
        abstractArticleTileViewHolder.mHeaderLink = null;
        abstractArticleTileViewHolder.mHeaderContextButton = null;
        abstractArticleTileViewHolder.mHeaderTagContainer = null;
        this.view7f0b008f.setOnClickListener(null);
        this.view7f0b008f = null;
        this.view7f0b00f5.setOnClickListener(null);
        this.view7f0b00f5 = null;
    }
}
