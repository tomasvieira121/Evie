package com.evie.sidescreen.personalize;

import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class FollowButtonViewHolder_ViewBinding implements Unbinder {
    private FollowButtonViewHolder target;
    private View view7f0b004c;
    private View view7f0b00de;
    private View view7f0b00e2;

    public FollowButtonViewHolder_ViewBinding(final FollowButtonViewHolder followButtonViewHolder, View view) {
        this.target = followButtonViewHolder;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.follow, "field 'mFollowButton' and method 'onFollowButtonClick'");
        followButtonViewHolder.mFollowButton = viewFindRequiredView;
        this.view7f0b00de = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.personalize.FollowButtonViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                followButtonViewHolder.onFollowButtonClick();
            }
        });
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.following, "field 'mFollowingButton' and method 'onFollowingButtonClick'");
        followButtonViewHolder.mFollowingButton = viewFindRequiredView2;
        this.view7f0b00e2 = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.personalize.FollowButtonViewHolder_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                followButtonViewHolder.onFollowingButtonClick();
            }
        });
        View viewFindViewById = view.findViewById(R.id.blocked);
        followButtonViewHolder.mBlockedButton = viewFindViewById;
        if (viewFindViewById != null) {
            this.view7f0b004c = viewFindViewById;
            viewFindViewById.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.personalize.FollowButtonViewHolder_ViewBinding.3
                @Override // butterknife.internal.DebouncingOnClickListener
                public void doClick(View view2) {
                    followButtonViewHolder.onBlockedButtonClick();
                }
            });
        }
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        FollowButtonViewHolder followButtonViewHolder = this.target;
        if (followButtonViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        followButtonViewHolder.mFollowButton = null;
        followButtonViewHolder.mFollowingButton = null;
        followButtonViewHolder.mBlockedButton = null;
        this.view7f0b00de.setOnClickListener(null);
        this.view7f0b00de = null;
        this.view7f0b00e2.setOnClickListener(null);
        this.view7f0b00e2 = null;
        View view = this.view7f0b004c;
        if (view != null) {
            view.setOnClickListener(null);
            this.view7f0b004c = null;
        }
    }
}
