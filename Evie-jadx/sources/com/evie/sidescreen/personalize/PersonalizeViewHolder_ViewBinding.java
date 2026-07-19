package com.evie.sidescreen.personalize;

import android.view.View;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: loaded from: classes.dex */
public class PersonalizeViewHolder_ViewBinding implements Unbinder {
    private PersonalizeViewHolder target;

    public PersonalizeViewHolder_ViewBinding(PersonalizeViewHolder personalizeViewHolder, View view) {
        this.target = personalizeViewHolder;
        personalizeViewHolder.mTabLayout = (TabLayout) Utils.findRequiredViewAsType(view, R.id.tabs, "field 'mTabLayout'", TabLayout.class);
        personalizeViewHolder.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.pager, "field 'mViewPager'", ViewPager.class);
        personalizeViewHolder.mDivider = Utils.findRequiredView(view, R.id.divider, "field 'mDivider'");
        personalizeViewHolder.mLoading = Utils.findRequiredView(view, R.id.loading, "field 'mLoading'");
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        PersonalizeViewHolder personalizeViewHolder = this.target;
        if (personalizeViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        personalizeViewHolder.mTabLayout = null;
        personalizeViewHolder.mViewPager = null;
        personalizeViewHolder.mDivider = null;
        personalizeViewHolder.mLoading = null;
    }
}
