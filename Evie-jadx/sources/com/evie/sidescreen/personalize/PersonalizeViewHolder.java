package com.evie.sidescreen.personalize;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.evie.models.topics.data.PersonalizePage;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.MvpViewHolder;
import com.google.android.material.tabs.TabLayout;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.schema.C1483Id;

/* JADX INFO: loaded from: classes.dex */
public class PersonalizeViewHolder extends MvpViewHolder<PersonalizePresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f334ID = R.layout.ss_personalize_fragment;
    private PersonalizeAdapter mAdapter;

    @BindView
    View mDivider;

    @BindView
    View mLoading;

    @BindView
    TabLayout mTabLayout;

    @BindView
    ViewPager mViewPager;

    public PersonalizeViewHolder(View view) {
        super(view);
        this.mAdapter = new PersonalizeAdapter();
        this.mViewPager.setAdapter(this.mAdapter);
    }

    public void showLoading() {
        this.mTabLayout.setVisibility(4);
        this.mViewPager.setVisibility(4);
        this.mDivider.setVisibility(4);
        this.mLoading.setVisibility(0);
    }

    public void hideLoading() {
        this.mTabLayout.setVisibility(0);
        this.mViewPager.setVisibility(0);
        this.mDivider.setVisibility(0);
        this.mLoading.setVisibility(4);
    }

    public void showError() {
        Toast.makeText(this.itemView.getContext(), R.string.ss_generic_loading_error_message, 0).show();
    }

    public void setTabs(List<PersonalizePagePresenter> list) {
        int i;
        this.mAdapter.mPagePresenters.clear();
        this.mAdapter.mPagePresenters.addAll(list);
        this.mAdapter.mPageViewHolders.clear();
        Iterator<PersonalizePagePresenter> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            PersonalizePagePresenter next = it.next();
            TopicsListViewHolder topicsListViewHolderCreateViewHolderInstance = next.createViewHolderInstance(LayoutInflater.from(this.itemView.getContext()).inflate(next.getLayoutResId(), (ViewGroup) this.mViewPager, false));
            topicsListViewHolderCreateViewHolderInstance.bindPresenter(next);
            next.bindViewHolder(topicsListViewHolderCreateViewHolderInstance);
            this.mAdapter.mPageViewHolders.add(topicsListViewHolderCreateViewHolderInstance);
        }
        this.mAdapter.notifyDataSetChanged();
        this.mTabLayout.setupWithViewPager(this.mViewPager, false);
        for (i = 0; i < this.mTabLayout.getTabCount(); i++) {
            TabLayout.Tab tabAt = this.mTabLayout.getTabAt(i);
            if (tabAt != null) {
                tabAt.setCustomView(R.layout.ss_tab);
            }
        }
    }

    public void setPageData(PersonalizePage personalizePage) {
        if (this.mAdapter.mBlackListPresenter == null || !personalizePage.getLabel().equals(this.mAdapter.mBlackListPresenter.getTitle())) {
            this.mAdapter.mPageData.put(personalizePage.getLabel(), personalizePage);
            for (PersonalizePagePresenter personalizePagePresenter : this.mAdapter.mPagePresenters) {
                if (personalizePagePresenter.getTitle().equals(personalizePage.getLabel())) {
                    personalizePagePresenter.load(personalizePage, this.mAdapter.mFollows, this.mAdapter.mBlocks);
                }
            }
        }
    }

    public void invalidateOtherPages(PersonalizePagePresenter personalizePagePresenter) {
        this.mAdapter.invalidateOtherPages(personalizePagePresenter);
    }

    public void setFollows(List<C1483Id> list) {
        this.mAdapter.mFollows.clear();
        this.mAdapter.mFollows.addAll(list);
    }

    public void setBlocks(List<C1483Id> list) {
        this.mAdapter.mBlocks.clear();
        this.mAdapter.mBlocks.addAll(list);
    }

    public void dataSetChanged() {
        PersonalizeAdapter personalizeAdapter = this.mAdapter;
        personalizeAdapter.invalidated = false;
        personalizeAdapter.notifyDataSetChanged();
    }

    private class PersonalizeAdapter extends PagerAdapter {
        boolean invalidated;
        PersonalizePagePresenter mBlackListPresenter;
        List<C1483Id> mBlocks;
        List<C1483Id> mFollows;
        Map<String, PersonalizePage> mPageData;
        List<PersonalizePagePresenter> mPagePresenters;
        List<TopicsListViewHolder> mPageViewHolders;
        Object mPrimaryItem;

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }

        private PersonalizeAdapter() {
            this.mPrimaryItem = null;
            this.invalidated = false;
            this.mPagePresenters = new ArrayList();
            this.mPageViewHolders = new ArrayList();
            this.mPageData = new HashMap();
            this.mFollows = new ArrayList();
            this.mBlocks = new ArrayList();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            List<PersonalizePagePresenter> list = this.mPagePresenters;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int i) {
            List<PersonalizePagePresenter> list = this.mPagePresenters;
            if (list == null) {
                return null;
            }
            return list.get(i).getTitle();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            viewGroup.addView(this.mPageViewHolders.get(i).itemView);
            return this.mPageViewHolders.get(i).itemView;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
            super.setPrimaryItem(viewGroup, i, obj);
            if (this.invalidated && this.mPrimaryItem != obj && this.mPagePresenters.size() > i && this.mPagePresenters.get(i) != this.mBlackListPresenter) {
                this.invalidated = false;
                ((PersonalizePresenter) PersonalizeViewHolder.this.mPresenter).refresh(false);
            }
            this.mPrimaryItem = obj;
        }

        public void invalidateOtherPages(PersonalizePagePresenter personalizePagePresenter) {
            for (PersonalizePagePresenter personalizePagePresenter2 : this.mPagePresenters) {
                if (personalizePagePresenter2 != personalizePagePresenter) {
                    personalizePagePresenter2.clear();
                }
            }
            this.invalidated = true;
            this.mBlackListPresenter = personalizePagePresenter;
        }
    }
}
