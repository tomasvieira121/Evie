package com.evie.sidescreen.prompts.announcement;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class AnnouncementViewHolder_ViewBinding implements Unbinder {
    private AnnouncementViewHolder target;
    private View view7f0b002f;
    private View view7f0b0031;

    public AnnouncementViewHolder_ViewBinding(final AnnouncementViewHolder announcementViewHolder, View view) {
        this.target = announcementViewHolder;
        announcementViewHolder.mSection = (ConstraintLayout) Utils.findRequiredViewAsType(view, R.id.announcement_section, "field 'mSection'", ConstraintLayout.class);
        announcementViewHolder.mDescription = (TextView) Utils.findRequiredViewAsType(view, R.id.announcement_description, "field 'mDescription'", TextView.class);
        announcementViewHolder.mImage = (SimpleDraweeView) Utils.findRequiredViewAsType(view, R.id.announcement_image, "field 'mImage'", SimpleDraweeView.class);
        announcementViewHolder.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.announcement_title, "field 'mTitle'", TextView.class);
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.announcement_dismiss, "field 'mDismiss' and method 'onDismissClick'");
        announcementViewHolder.mDismiss = (TextView) Utils.castView(viewFindRequiredView, R.id.announcement_dismiss, "field 'mDismiss'", TextView.class);
        this.view7f0b0031 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.prompts.announcement.AnnouncementViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                announcementViewHolder.onDismissClick(view2);
            }
        });
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.announcement_action, "field 'mAction' and method 'onActionClick'");
        announcementViewHolder.mAction = (TextView) Utils.castView(viewFindRequiredView2, R.id.announcement_action, "field 'mAction'", TextView.class);
        this.view7f0b002f = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.prompts.announcement.AnnouncementViewHolder_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                announcementViewHolder.onActionClick(view2);
            }
        });
        announcementViewHolder.mRailVert = Utils.findRequiredView(view, R.id.announcement_rail_vert, "field 'mRailVert'");
        announcementViewHolder.mRailHori = Utils.findRequiredView(view, R.id.announcement_rail_hori, "field 'mRailHori'");
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        AnnouncementViewHolder announcementViewHolder = this.target;
        if (announcementViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        announcementViewHolder.mSection = null;
        announcementViewHolder.mDescription = null;
        announcementViewHolder.mImage = null;
        announcementViewHolder.mTitle = null;
        announcementViewHolder.mDismiss = null;
        announcementViewHolder.mAction = null;
        announcementViewHolder.mRailVert = null;
        announcementViewHolder.mRailHori = null;
        this.view7f0b0031.setOnClickListener(null);
        this.view7f0b0031 = null;
        this.view7f0b002f.setOnClickListener(null);
        this.view7f0b002f = null;
    }
}
