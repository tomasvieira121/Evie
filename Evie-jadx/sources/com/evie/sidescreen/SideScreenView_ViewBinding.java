package com.evie.sidescreen;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.google.android.material.tabs.TabLayout;
import com.voxel.simplesearchlauncher.view.WindowInsetPolicyFrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class SideScreenView_ViewBinding implements Unbinder {
    private SideScreenView target;

    public SideScreenView_ViewBinding(SideScreenView sideScreenView, View view) {
        this.target = sideScreenView;
        sideScreenView.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recycler_view, "field 'mRecyclerView'", RecyclerView.class);
        sideScreenView.mErrorView = Utils.findRequiredView(view, R.id.error_view, "field 'mErrorView'");
        sideScreenView.mPopupView = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.popup, "field 'mPopupView'", FrameLayout.class);
        sideScreenView.mRefreshView = (ClippingSwipeRefreshLayout) Utils.findRequiredViewAsType(view, R.id.refresher, "field 'mRefreshView'", ClippingSwipeRefreshLayout.class);
        sideScreenView.mBackToTopButton = Utils.findRequiredView(view, R.id.back_to_top, "field 'mBackToTopButton'");
        sideScreenView.mBackToTopInsetContainer = (WindowInsetPolicyFrameLayout) Utils.findRequiredViewAsType(view, R.id.back_to_top_inset, "field 'mBackToTopInsetContainer'", WindowInsetPolicyFrameLayout.class);
        sideScreenView.mPersonalizeTooltip = Utils.findRequiredView(view, R.id.personalize_tooltip, "field 'mPersonalizeTooltip'");
        sideScreenView.mPersonalizeTooltipBody = Utils.findRequiredView(view, R.id.personalize_tooltip_body, "field 'mPersonalizeTooltipBody'");
        sideScreenView.mTabsContainer = Utils.findRequiredView(view, R.id.tabs_container, "field 'mTabsContainer'");
        sideScreenView.mTabLayout = (TabLayout) Utils.findRequiredViewAsType(view, R.id.tabs, "field 'mTabLayout'", TabLayout.class);
        sideScreenView.mBottomBarContainer = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.bottom_bar_container, "field 'mBottomBarContainer'", ViewGroup.class);
        Resources resources = view.getContext().getResources();
        sideScreenView.mTopEmptySpaceDistance = resources.getDimensionPixelSize(R.dimen.ss_top_empty_height);
        sideScreenView.mTopEmptySearchBarDistance = resources.getDimensionPixelSize(R.dimen.ss_search_bar_full_height);
        sideScreenView.mSearchBarMargin = resources.getDimensionPixelSize(R.dimen.ss_search_bar_margin);
        sideScreenView.mSearchBarShadow = resources.getDimensionPixelSize(R.dimen.ss_search_bar_shadow);
        sideScreenView.mHeaderParallaxDistance = resources.getDimensionPixelSize(R.dimen.ss_background_parallax_distance);
        sideScreenView.mPersonalizeTooltipYOffset = resources.getDimensionPixelSize(R.dimen.ss_personalize_tooltip_y_offset);
        sideScreenView.mBackTopTopButtonShadowPadding = resources.getDimensionPixelSize(R.dimen.ss_back_to_top_button_shadow_padding);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        SideScreenView sideScreenView = this.target;
        if (sideScreenView == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        sideScreenView.mRecyclerView = null;
        sideScreenView.mErrorView = null;
        sideScreenView.mPopupView = null;
        sideScreenView.mRefreshView = null;
        sideScreenView.mBackToTopButton = null;
        sideScreenView.mBackToTopInsetContainer = null;
        sideScreenView.mPersonalizeTooltip = null;
        sideScreenView.mPersonalizeTooltipBody = null;
        sideScreenView.mTabsContainer = null;
        sideScreenView.mTabLayout = null;
        sideScreenView.mBottomBarContainer = null;
    }
}
