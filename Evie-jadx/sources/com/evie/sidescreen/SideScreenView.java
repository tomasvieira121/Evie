package com.evie.sidescreen;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageSwitcher;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import butterknife.BindDimen;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.internal.DebouncingOnClickListener;
import com.evie.sidescreen.frequentlyused.FrequentlyUsedPresenter;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.mvp.LifecycleAwareMvpRecyclerAdapter;
import com.evie.sidescreen.searchbar.SearchBarPresenter;
import com.evie.sidescreen.searchbar.SearchBarPresenterFactory;
import com.evie.sidescreen.searchbar.SearchBarViewHolder;
import com.evie.sidescreen.searchbar.WhiteSearchBarBackgroundModelFactory;
import com.evie.sidescreen.tiles.TileBackgroundItemDecoration;
import com.evie.sidescreen.tiles.TileRowDividerItemDecoration;
import com.evie.sidescreen.tiles.header.PersonalizeTileHeaderPresenter;
import com.evie.sidescreen.tiles.header.PlainTilesHeaderPresenter;
import com.evie.sidescreen.tiles.loading.TilesLoadingPresenter;
import com.evie.sidescreen.tiles.loading.TilesLoadingViewHolder;
import com.evie.sidescreen.util.ForwardingItemTouchListener;
import com.evie.sidescreen.weather.WeatherPresenter;
import com.evie.sidescreen.weather.WeatherViewHolder;
import com.google.android.material.tabs.TabLayout;
import com.voxel.simplesearchlauncher.utils.alpha.AlphaSet;
import com.voxel.simplesearchlauncher.view.WindowInsetPolicyFrameLayout;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SideScreenView {
    private final LifecycleAwareMvpRecyclerAdapter mAdapter;

    @BindView
    View mBackToTopButton;
    private int mBackToTopDistance;

    @BindView
    WindowInsetPolicyFrameLayout mBackToTopInsetContainer;
    private int mBackToTopLastAnchorScrollOffset;
    private int mBackToTopLastScrollDirection;

    @BindDimen
    int mBackTopTopButtonShadowPadding;
    private final ImageSwitcher mBackgroundView;

    @BindView
    ViewGroup mBottomBarContainer;
    private final Context mContext;
    private int mCurrentScrollOffset;

    @BindView
    View mErrorView;
    private AlphaSet mHeaderAlpha;

    @BindDimen
    int mHeaderParallaxDistance;
    private View mHeaderView;
    private final boolean mIsRtl;
    private final LinearLayoutManager mLayoutManager;
    private int mPersonalizeIndex;
    private boolean mPersonalizeToolbarEnabled;

    @BindView
    View mPersonalizeTooltip;

    @BindView
    View mPersonalizeTooltipBody;
    private boolean mPersonalizeTooltipEnabled;

    @BindDimen
    int mPersonalizeTooltipYOffset;

    @BindView
    FrameLayout mPopupView;

    @BindView
    RecyclerView mRecyclerView;

    @BindView
    ClippingSwipeRefreshLayout mRefreshView;
    private int mRefresherExtraOffset;
    private int mRefresherIndex;
    private final int mRefresherOffsetDiff;
    private final int mRefresherStartToClipOffset;
    private final int mRowDividerHeight;
    private final WhiteSearchBarBackgroundModelFactory mSearchBarBackgroundModelFactory;

    @BindDimen
    int mSearchBarMargin;
    private final SearchBarPresenterFactory mSearchBarPresenterFactory;

    @BindDimen
    int mSearchBarShadow;
    private final SearchBarPresenter mSearchPresenter;
    private final SearchBarViewHolder mSearchViewHolder;
    private final SideScreenConfiguration mSideScreenConfiguration;
    private final SideScreenPresenter mSideScreenPresenter;

    @BindView
    TabLayout mTabLayout;
    private boolean mTabPersonalizeTooltipEnabled;

    @BindView
    View mTabsContainer;

    @BindDimen
    int mTopEmptySearchBarDistance;

    @BindDimen
    int mTopEmptySpaceDistance;
    private final int mTouchSlop;
    private final View mView;
    private final WeatherPresenter mWeatherPresenter;
    private final View mWeatherView;
    private final WeatherViewHolder mWeatherViewHolder;
    private final RecyclerView.OnScrollListener mOnScrollListener = new ScrollListener();
    private boolean mBackToTopVisible = false;
    private boolean mHasTrendingRail = true;
    private boolean mShouldRecalculateRefreshOffset = false;
    private View mPersonalizeBottomBar = null;
    private int mTileLoadingIndex = -1;
    private TabLayout.OnTabSelectedListener mOnTabSelectedListener = new TabLayout.OnTabSelectedListener() { // from class: com.evie.sidescreen.SideScreenView.1
        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            SideScreenView.this.mSideScreenPresenter.onTabClick(tab.getPosition());
        }
    };

    static /* synthetic */ void lambda$new$2(View view) {
    }

    static /* synthetic */ float lambda$new$3(float f) {
        return f * 1.25f;
    }

    public void showWeatherView() {
        this.mHeaderAlpha.addToSet(this.mWeatherView);
        this.mWeatherViewHolder.showWeatherView();
    }

    public void hideWeatherView() {
        this.mHeaderAlpha.removeFromSet(this.mWeatherView);
        this.mWeatherViewHolder.hideWeatherView();
    }

    public SideScreenView(SideScreenPresenter sideScreenPresenter, Context context, WeatherPresenter weatherPresenter, boolean z, boolean z2, boolean z3, WhiteSearchBarBackgroundModelFactory whiteSearchBarBackgroundModelFactory, SearchBarPresenterFactory searchBarPresenterFactory, LifecycleAwareMvpRecyclerAdapter lifecycleAwareMvpRecyclerAdapter, SideScreenConfiguration sideScreenConfiguration) {
        this.mContext = context;
        this.mSideScreenPresenter = sideScreenPresenter;
        this.mIsRtl = z;
        this.mWeatherPresenter = weatherPresenter;
        this.mSearchBarBackgroundModelFactory = whiteSearchBarBackgroundModelFactory;
        this.mSearchBarPresenterFactory = searchBarPresenterFactory;
        this.mAdapter = lifecycleAwareMvpRecyclerAdapter;
        this.mSideScreenConfiguration = sideScreenConfiguration;
        this.mView = LayoutInflater.from(this.mContext).inflate(R.layout.ss_side_screen, (ViewGroup) null);
        ButterKnife.bind(this, this.mView);
        ClippingSwipeRefreshLayout clippingSwipeRefreshLayout = this.mRefreshView;
        final SideScreenPresenter sideScreenPresenter2 = this.mSideScreenPresenter;
        sideScreenPresenter2.getClass();
        clippingSwipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.evie.sidescreen.-$$Lambda$AJr8gcRQKNCDpUXcT7HaszmhSrI
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                sideScreenPresenter2.onRefresh();
            }
        });
        this.mRefreshView.setColorSchemeResources(R.color.evie_universal_green);
        this.mRefreshView.setFilter(new ClippingSwipeRefreshLayout.ClippingFilter() { // from class: com.evie.sidescreen.-$$Lambda$SideScreenView$DbONapjAryHCAYFrd0WHpb9sEyE
            @Override // com.evie.sidescreen.ClippingSwipeRefreshLayout.ClippingFilter
            public final boolean reject(View view) {
                return SideScreenView.lambda$new$0(this.f$0, view);
            }
        });
        int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.ss_refresher_start_offset);
        int dimensionPixelSize2 = this.mContext.getResources().getDimensionPixelSize(R.dimen.ss_refresher_end_clipping);
        int dimensionPixelSize3 = this.mContext.getResources().getDimensionPixelSize(R.dimen.ss_refresher_end_offset);
        this.mRefresherStartToClipOffset = dimensionPixelSize2 - dimensionPixelSize;
        this.mRefresherOffsetDiff = dimensionPixelSize3 - dimensionPixelSize;
        this.mRefreshView.setProgressViewOffset(false, dimensionPixelSize, dimensionPixelSize3);
        this.mLayoutManager = new LinearLayoutManager(this.mContext) { // from class: com.evie.sidescreen.SideScreenView.2
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void onLayoutCompleted(RecyclerView.State state) {
                super.onLayoutCompleted(state);
                SideScreenView.this.handlePersonalizeTooltip();
                SideScreenView.this.handleLoadingViewSize();
                SideScreenView.this.handleRefreshOffset();
                SideScreenView.this.mAdapter.updateVisibility();
            }
        };
        this.mRecyclerView.setLayoutManager(this.mLayoutManager);
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mRecyclerView.addOnScrollListener(this.mOnScrollListener);
        this.mRecyclerView.addItemDecoration(new TileBackgroundItemDecoration(context));
        this.mRowDividerHeight = new TileRowDividerItemDecoration(context).getDividerHeight();
        this.mRecyclerView.addItemDecoration(new TileRowDividerItemDecoration(context));
        this.mHeaderView = LayoutInflater.from(this.mContext).inflate(R.layout.ss_fixed_side_screen_header, (ViewGroup) null);
        this.mBackgroundView = (ImageSwitcher) this.mHeaderView.findViewById(R.id.background);
        this.mBackgroundView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.SideScreenView.3
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view) {
                SideScreenView.this.mSideScreenPresenter.onClickBackground();
            }
        });
        this.mBackgroundView.setPivotX(0.0f);
        this.mBackgroundView.setPivotY(0.0f);
        this.mBackgroundView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.evie.sidescreen.SideScreenView.4
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                int i9 = i3 - i;
                if (i9 == i7 - i5) {
                    return;
                }
                if (SideScreenView.this.mIsRtl) {
                    SideScreenView.this.mBackgroundView.setPivotX(i3);
                } else {
                    SideScreenView.this.mBackgroundView.setPivotX(0.0f);
                }
                float fAbs = (Math.abs(SideScreenView.this.mHeaderParallaxDistance) + i9) / i9;
                SideScreenView.this.mBackgroundView.setScaleX(fAbs);
                SideScreenView.this.mBackgroundView.setScaleY(fAbs);
            }
        });
        this.mWeatherView = this.mHeaderView.findViewById(R.id.weather);
        this.mWeatherViewHolder = new WeatherViewHolder(this.mWeatherView);
        this.mWeatherViewHolder.bindPresenter(this.mWeatherPresenter);
        this.mWeatherPresenter.bindViewHolder(this.mWeatherViewHolder);
        ViewGroup viewGroup = (ViewGroup) this.mHeaderView.findViewById(R.id.search_bar);
        this.mSearchPresenter = this.mSearchBarPresenterFactory.create(this.mSearchBarBackgroundModelFactory.create(viewGroup));
        this.mSearchViewHolder = new SearchBarViewHolder(viewGroup);
        this.mSearchViewHolder.bindPresenter(this.mSearchPresenter);
        this.mSearchPresenter.bindViewHolder(this.mSearchViewHolder);
        if (!z2) {
            ((ViewGroup) viewGroup.getParent()).removeView(viewGroup);
        }
        this.mRecyclerView.addOnItemTouchListener(new ForwardingItemTouchListener(this.mHeaderView, 0, false));
        this.mBackToTopInsetContainer.setFitsSystemWindows(z3);
        this.mBackToTopButton.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.SideScreenView.5
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view) {
                SideScreenView.this.mRecyclerView.scrollToPosition(0);
                SideScreenView.this.hideBackToTopButtonImmediate();
            }
        });
        this.mBackToTopButton.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.evie.sidescreen.SideScreenView.6
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                if (i == i5 || i2 == i6 || i3 == i7 || i4 == i8 || view.getWidth() == 0 || view.getHeight() == 0) {
                    return;
                }
                SideScreenView.this.mBackToTopButton.removeOnLayoutChangeListener(this);
                SideScreenView sideScreenView = SideScreenView.this;
                sideScreenView.mBackToTopDistance = sideScreenView.mBackToTopButton.getBottom() + SideScreenView.this.mBackTopTopButtonShadowPadding;
                SideScreenView.this.mBackToTopButton.setTranslationY(-SideScreenView.this.mBackToTopDistance);
            }
        });
        this.mPersonalizeTooltipBody.setOnClickListener(new View.OnClickListener() { // from class: com.evie.sidescreen.-$$Lambda$SideScreenView$A8gELSFtgrqPJaT4YB3tmAJJh2g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SideScreenView.lambda$new$1(this.f$0, view);
            }
        });
        this.mBottomBarContainer.setOnClickListener(new View.OnClickListener() { // from class: com.evie.sidescreen.-$$Lambda$SideScreenView$byYZTgYPddWRnpNV19pBcMEvXzM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SideScreenView.lambda$new$2(view);
            }
        });
        this.mHeaderAlpha = new AlphaSet(this.mBackgroundView, this.mWeatherView, viewGroup);
        this.mHeaderAlpha.putModifier(viewGroup, new AlphaSet.Modifier() { // from class: com.evie.sidescreen.-$$Lambda$SideScreenView$1kNrzSKSaFsScL05M0J_8YshVfY
            @Override // com.voxel.simplesearchlauncher.utils.alpha.AlphaSet.Modifier
            public final float modify(float f) {
                return SideScreenView.lambda$new$3(f);
            }
        });
        this.mHeaderAlpha.putValue(this.mOnScrollListener, 1.0f);
        this.mTouchSlop = ViewConfiguration.get(this.mContext).getScaledTouchSlop();
    }

    public static /* synthetic */ boolean lambda$new$0(SideScreenView sideScreenView, View view) {
        return view == sideScreenView.mRecyclerView;
    }

    public static /* synthetic */ void lambda$new$1(SideScreenView sideScreenView, View view) {
        int i = sideScreenView.mPersonalizeIndex;
        if (i < 0 || i >= sideScreenView.mAdapter.getItemCount()) {
            return;
        }
        sideScreenView.setPersonalizeTooltipEnabled(false);
        ((PersonalizeTileHeaderPresenter) sideScreenView.mAdapter.getItem(sideScreenView.mPersonalizeIndex)).onClickPersonalizeLink();
    }

    public View getView() {
        return this.mView;
    }

    public void showPresenters(List<ItemPresenter> list, boolean z) {
        int i;
        int i2;
        int i3;
        if (list != null) {
            i = -1;
            i2 = -1;
            i3 = -1;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ItemPresenter itemPresenter = list.get(i4);
                if ((itemPresenter instanceof FrequentlyUsedPresenter) && i < 0) {
                    this.mRefresherExtraOffset = -this.mContext.getResources().getDimensionPixelSize(R.dimen.ss_half_spacing);
                    i = i4;
                }
                if ((itemPresenter instanceof PersonalizeTileHeaderPresenter) || (itemPresenter instanceof PlainTilesHeaderPresenter)) {
                    if (i < 0) {
                        this.mRefresherExtraOffset = this.mRowDividerHeight;
                        i = i4;
                        i3 = i;
                    } else {
                        i3 = i4;
                    }
                }
                if (itemPresenter instanceof TilesLoadingPresenter) {
                    i2 = i4;
                }
                if (i2 != -1 && i3 != -1) {
                    break;
                }
            }
        } else {
            i = -1;
            i2 = -1;
            i3 = -1;
        }
        this.mTileLoadingIndex = i2;
        this.mPersonalizeIndex = i3;
        this.mRefresherIndex = i;
        this.mShouldRecalculateRefreshOffset = true;
        this.mAdapter.setItemPresenters(list, z);
        this.mRecyclerView.scrollBy(0, 1);
        this.mRecyclerView.scrollBy(0, -1);
    }

    public void showBackground(Bitmap bitmap) {
        ImageSwitcher imageSwitcher = this.mBackgroundView;
        imageSwitcher.setImageDrawable(new BitmapDrawable(imageSwitcher.getResources(), bitmap));
    }

    public void scrollToPositionWithOffset(int i, int i2) {
        this.mLayoutManager.scrollToPositionWithOffset(i, i2);
    }

    public int findFirstvVisiblePosition() {
        return this.mLayoutManager.findFirstVisibleItemPosition();
    }

    public int findFirstVisibleItemOffset() {
        return this.mLayoutManager.getChildAt(0).getTop();
    }

    public void setScreenScrollXProgress(float f) {
        this.mHeaderView.setTranslationX((this.mIsRtl ? -1.0f : 1.0f) * this.mHeaderParallaxDistance * (1.0f - f));
        this.mHeaderAlpha.putValue(this, f);
    }

    public View getFixedHeaderView() {
        return this.mHeaderView;
    }

    public void dispose() {
        this.mWeatherPresenter.dispose();
        this.mSearchPresenter.dispose();
        this.mRecyclerView.removeOnScrollListener(this.mOnScrollListener);
        this.mAdapter.disposeHolders();
        this.mAdapter.setItemPresenters(Collections.emptyList(), false);
    }

    public void setTabsEnabled(boolean z) {
        if (z) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mRefreshView.getLayoutParams();
            layoutParams.bottomMargin = this.mContext.getResources().getDimensionPixelSize(R.dimen.ss_tabs_height);
            this.mRefreshView.setLayoutParams(layoutParams);
            this.mTabsContainer.setVisibility(0);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.mRefreshView.getLayoutParams();
        layoutParams2.bottomMargin = 0;
        this.mRefreshView.setLayoutParams(layoutParams2);
        this.mTabsContainer.setVisibility(8);
    }

    public void setUpTabs(List<String> list) {
        this.mTabLayout.clearOnTabSelectedListeners();
        this.mTabLayout.removeAllTabs();
        for (String str : list) {
            TabLayout tabLayout = this.mTabLayout;
            tabLayout.addTab(tabLayout.newTab().setCustomView(R.layout.ss_single_tab).setText(str));
        }
        if (this.mTabLayout.getTabCount() < 6) {
            this.mTabLayout.setTabMode(1);
            this.mTabLayout.setTabGravity(0);
        } else {
            this.mTabLayout.setTabMode(0);
            this.mTabLayout.setTabGravity(1);
        }
        this.mTabLayout.addOnTabSelectedListener(this.mOnTabSelectedListener);
    }

    public void moveTabIndicator(int i) {
        this.mTabLayout.clearOnTabSelectedListeners();
        TabLayout.Tab tabAt = this.mTabLayout.getTabAt(i);
        if (tabAt != null) {
            tabAt.select();
        }
        this.mTabLayout.addOnTabSelectedListener(this.mOnTabSelectedListener);
    }

    public float getMaxTopEmptyScrollDistance() {
        return this.mTopEmptySpaceDistance;
    }

    public ViewGroup getPopupView() {
        return this.mPopupView;
    }

    public void shouldTabShowPersonalizeTooltip(boolean z) {
        this.mTabPersonalizeTooltipEnabled = z;
    }

    public void setPersonalizeTooltipEnabled(boolean z) {
        if (this.mPersonalizeTooltipEnabled == z) {
            return;
        }
        this.mPersonalizeTooltipEnabled = z;
        if (this.mPersonalizeTooltipEnabled) {
            this.mPersonalizeTooltip.animate().alpha(1.0f);
        } else {
            this.mPersonalizeTooltip.animate().alpha(0.0f);
        }
        handlePersonalizeTooltip();
    }

    public void setPersonalizeToolbarEnabled(boolean z) {
        if (this.mPersonalizeToolbarEnabled == z) {
            return;
        }
        this.mPersonalizeToolbarEnabled = z;
        if (this.mPersonalizeToolbarEnabled) {
            if (this.mPersonalizeBottomBar == null) {
                this.mPersonalizeBottomBar = LayoutInflater.from(this.mContext).inflate(R.layout.ss_bottom_bar_personalize_onboarding, this.mBottomBarContainer, false);
                ((Button) this.mPersonalizeBottomBar.findViewById(R.id.button)).setOnClickListener(new View.OnClickListener() { // from class: com.evie.sidescreen.-$$Lambda$SideScreenView$ycLzP3dQUgdzIZnwwxHEpHmAOqw
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.mSideScreenPresenter.onPersonalizeBottomBarClick();
                    }
                });
            }
            if (this.mPersonalizeBottomBar.getParent() == null) {
                this.mBottomBarContainer.removeAllViews();
                this.mBottomBarContainer.addView(this.mPersonalizeBottomBar);
                this.mBottomBarContainer.setAlpha(0.0f);
            }
            this.mBottomBarContainer.animate().alpha(1.0f);
            return;
        }
        this.mBottomBarContainer.animate().alpha(0.0f);
    }

    private class ScrollListener extends RecyclerView.OnScrollListener {
        private ScrollListener() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            if (i == 1) {
                SideScreenView.this.mCurrentScrollOffset = 0;
                SideScreenView.this.mBackToTopLastAnchorScrollOffset = 0;
                SideScreenView.this.mBackToTopLastScrollDirection = 0;
            }
            SideScreenView.this.mSideScreenPresenter.onScrollStateChanged(recyclerView, i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            int top;
            SideScreenView.this.mCurrentScrollOffset += i2;
            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(0);
            if (viewHolderFindViewHolderForAdapterPosition != null) {
                top = viewHolderFindViewHolderForAdapterPosition.itemView.getTop();
            } else {
                top = -SideScreenView.this.mTopEmptySpaceDistance;
            }
            SideScreenView.this.handleTopEmptyItemScroll(top);
            SideScreenView.this.handleBackToTopButton(recyclerView, i, i2);
            SideScreenView.this.handlePersonalizeTooltip();
            SideScreenView.this.mSideScreenPresenter.onScrolled(recyclerView, i, i2, top);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleTopEmptyItemScroll(int i) {
        float f = i;
        float f2 = f * 1.0f;
        this.mBackgroundView.setTranslationY(Math.round(f2 / 3.0f));
        this.mWeatherViewHolder.itemView.setTranslationY(Math.round((f * 2.5f) / 3.5f));
        this.mSearchViewHolder.itemView.setTranslationY(Math.round(f2 / 2.5f));
        this.mHeaderAlpha.putValue(this.mOnScrollListener, Math.max(0.0f, Math.min(1.0f - Math.abs((f * 1.2f) / this.mTopEmptySpaceDistance), 1.0f)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleBackToTopButton(RecyclerView recyclerView, int i, int i2) {
        int iFindFirstVisibleItemPosition = this.mLayoutManager.findFirstVisibleItemPosition();
        if (iFindFirstVisibleItemPosition <= 2) {
            hideBackToTopButton();
            return;
        }
        if (i2 == 0) {
            return;
        }
        if ((this.mBackToTopLastScrollDirection < 0) != (i2 < 0)) {
            this.mBackToTopLastAnchorScrollOffset = this.mCurrentScrollOffset;
        }
        this.mBackToTopLastScrollDirection = i2;
        if (Math.abs(this.mCurrentScrollOffset - this.mBackToTopLastAnchorScrollOffset) > this.mTouchSlop) {
            if (i2 > 0) {
                hideBackToTopButton();
            } else if (iFindFirstVisibleItemPosition >= 5) {
                showBackToTopButton();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleLoadingViewSize() {
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition;
        int i = this.mTileLoadingIndex;
        if (i >= 0) {
            int itemViewType = this.mAdapter.getItemViewType(i);
            ItemPresenter item = this.mAdapter.getItem(this.mTileLoadingIndex);
            if (itemViewType == TilesLoadingViewHolder.f367ID && (item instanceof TilesLoadingPresenter)) {
                int height = this.mRecyclerView.getHeight();
                int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.ss_tile_loading_dimen);
                for (int i2 = 0; i2 < this.mAdapter.getItemCount(); i2++) {
                    if (this.mTileLoadingIndex != i2 && (viewHolderFindViewHolderForAdapterPosition = this.mRecyclerView.findViewHolderForAdapterPosition(i2)) != null) {
                        height -= viewHolderFindViewHolderForAdapterPosition.itemView.getHeight();
                        if (viewHolderFindViewHolderForAdapterPosition.itemView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewHolderFindViewHolderForAdapterPosition.itemView.getLayoutParams();
                            height = (height - marginLayoutParams.topMargin) - marginLayoutParams.bottomMargin;
                        }
                        if (height < dimensionPixelSize) {
                            break;
                        }
                    }
                }
                ((TilesLoadingPresenter) item).setHeight(Math.max(height, dimensionPixelSize));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePersonalizeTooltip() {
        int top;
        int i = this.mPersonalizeIndex;
        if (i < 0 || !this.mPersonalizeTooltipEnabled || !this.mTabPersonalizeTooltipEnabled) {
            this.mPersonalizeTooltip.setVisibility(8);
            return;
        }
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = this.mRecyclerView.findViewHolderForAdapterPosition(i);
        if (viewHolderFindViewHolderForAdapterPosition != null) {
            top = viewHolderFindViewHolderForAdapterPosition.itemView.getBottom();
        } else {
            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition2 = this.mRecyclerView.findViewHolderForAdapterPosition(this.mPersonalizeIndex + 1);
            if (viewHolderFindViewHolderForAdapterPosition2 != null) {
                top = viewHolderFindViewHolderForAdapterPosition2.itemView.getTop();
            } else {
                this.mPersonalizeTooltip.setVisibility(8);
                return;
            }
        }
        this.mPersonalizeTooltip.setVisibility(0);
        this.mPersonalizeTooltip.setTranslationY(top + this.mPersonalizeTooltipYOffset);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRefreshOffset() {
        if (!this.mShouldRecalculateRefreshOffset || this.mRefresherIndex < 0) {
            return;
        }
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = this.mRecyclerView.findViewHolderForAdapterPosition(0);
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition2 = this.mRecyclerView.findViewHolderForAdapterPosition(this.mRefresherIndex);
        if (viewHolderFindViewHolderForAdapterPosition == null || viewHolderFindViewHolderForAdapterPosition2 == null) {
            return;
        }
        int bottom = (-viewHolderFindViewHolderForAdapterPosition.itemView.getTop()) + viewHolderFindViewHolderForAdapterPosition2.itemView.getBottom() + this.mRefresherExtraOffset;
        if (!this.mHasTrendingRail) {
            bottom = (this.mTopEmptySearchBarDistance - this.mSearchBarMargin) - this.mSearchBarShadow;
        }
        int i = bottom - this.mRefresherStartToClipOffset;
        int i2 = this.mRefresherOffsetDiff + i;
        this.mRefreshView.setClipping(bottom);
        this.mRefreshView.setProgressViewOffset(false, i, i2);
        this.mShouldRecalculateRefreshOffset = false;
    }

    public void hideBackToTopButton() {
        if (this.mBackToTopVisible) {
            this.mBackToTopVisible = false;
            this.mBackToTopButton.animate().cancel();
            this.mBackToTopButton.animate().translationY(-this.mBackToTopDistance).setDuration(150L);
        }
    }

    public void hideBackToTopButtonImmediate() {
        this.mBackToTopVisible = false;
        this.mBackToTopButton.animate().cancel();
        this.mBackToTopButton.setTranslationY(-this.mBackToTopDistance);
    }

    public void showBackToTopButton() {
        if (this.mBackToTopVisible) {
            return;
        }
        this.mBackToTopVisible = true;
        this.mBackToTopButton.animate().cancel();
        this.mBackToTopButton.animate().translationY(0.0f).setDuration(150L);
    }

    public void hideRefreshView() {
        this.mRefreshView.setRefreshing(false);
    }

    public void setRefreshEnabled(boolean z) {
        this.mRefreshView.setEnabled(z);
    }
}
