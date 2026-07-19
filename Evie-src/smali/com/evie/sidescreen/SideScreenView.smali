.class public Lcom/evie/sidescreen/SideScreenView;
.super Ljava/lang/Object;
.source "SideScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/SideScreenView$ScrollListener;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

.field mBackToTopButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mBackToTopDistance:I

.field mBackToTopInsetContainer:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mBackToTopLastAnchorScrollOffset:I

.field private mBackToTopLastScrollDirection:I

.field private mBackToTopVisible:Z

.field mBackTopTopButtonShadowPadding:I
    .annotation runtime Lbutterknife/BindDimen;
    .end annotation
.end field

.field private final mBackgroundView:Landroid/widget/ImageSwitcher;

.field mBottomBarContainer:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentScrollOffset:I

.field mErrorView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mHasTrendingRail:Z

.field private mHeaderAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

.field mHeaderParallaxDistance:I
    .annotation runtime Lbutterknife/BindDimen;
    .end annotation
.end field

.field private mHeaderView:Landroid/view/View;

.field private final mIsRtl:Z

.field private final mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mOnTabSelectedListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

.field private mPersonalizeBottomBar:Landroid/view/View;

.field private mPersonalizeIndex:I

.field private mPersonalizeToolbarEnabled:Z

.field mPersonalizeTooltip:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPersonalizeTooltipBody:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mPersonalizeTooltipEnabled:Z

.field mPersonalizeTooltipYOffset:I
    .annotation runtime Lbutterknife/BindDimen;
    .end annotation
.end field

.field mPopupView:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRefreshView:Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mRefresherExtraOffset:I

.field private mRefresherIndex:I

.field private final mRefresherOffsetDiff:I

.field private final mRefresherStartToClipOffset:I

.field private final mRowDividerHeight:I

.field private final mSearchBarBackgroundModelFactory:Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModelFactory;

.field mSearchBarMargin:I
    .annotation runtime Lbutterknife/BindDimen;
    .end annotation
.end field

.field private final mSearchBarPresenterFactory:Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;

.field mSearchBarShadow:I
    .annotation runtime Lbutterknife/BindDimen;
    .end annotation
.end field

.field private final mSearchPresenter:Lcom/evie/sidescreen/searchbar/SearchBarPresenter;

.field private final mSearchViewHolder:Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;

.field private mShouldRecalculateRefreshOffset:Z

.field private final mSideScreenConfiguration:Lcom/evie/sidescreen/SideScreenConfiguration;

.field private final mSideScreenPresenter:Lcom/evie/sidescreen/SideScreenPresenter;

.field mTabLayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mTabPersonalizeTooltipEnabled:Z

.field mTabsContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mTileLoadingIndex:I

.field mTopEmptySearchBarDistance:I
    .annotation runtime Lbutterknife/BindDimen;
    .end annotation
.end field

.field mTopEmptySpaceDistance:I
    .annotation runtime Lbutterknife/BindDimen;
    .end annotation
.end field

.field private final mTouchSlop:I

.field private final mView:Landroid/view/View;

.field private final mWeatherPresenter:Lcom/evie/sidescreen/weather/WeatherPresenter;

.field private final mWeatherView:Landroid/view/View;

.field private final mWeatherViewHolder:Lcom/evie/sidescreen/weather/WeatherViewHolder;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/SideScreenPresenter;Landroid/content/Context;Lcom/evie/sidescreen/weather/WeatherPresenter;ZZZLcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModelFactory;Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;Lcom/evie/sidescreen/SideScreenConfiguration;)V
    .locals 4

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/evie/sidescreen/SideScreenView$ScrollListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/evie/sidescreen/SideScreenView$ScrollListener;-><init>(Lcom/evie/sidescreen/SideScreenView;Lcom/evie/sidescreen/SideScreenView$1;)V

    iput-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopVisible:Z

    const/4 v2, 0x1

    .line 104
    iput-boolean v2, p0, Lcom/evie/sidescreen/SideScreenView;->mHasTrendingRail:Z

    .line 128
    iput-boolean v0, p0, Lcom/evie/sidescreen/SideScreenView;->mShouldRecalculateRefreshOffset:Z

    .line 131
    iput-object v1, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeBottomBar:Landroid/view/View;

    const/4 v3, -0x1

    .line 134
    iput v3, p0, Lcom/evie/sidescreen/SideScreenView;->mTileLoadingIndex:I

    .line 135
    new-instance v3, Lcom/evie/sidescreen/SideScreenView$1;

    invoke-direct {v3, p0}, Lcom/evie/sidescreen/SideScreenView$1;-><init>(Lcom/evie/sidescreen/SideScreenView;)V

    iput-object v3, p0, Lcom/evie/sidescreen/SideScreenView;->mOnTabSelectedListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    .line 176
    iput-object p2, p0, Lcom/evie/sidescreen/SideScreenView;->mContext:Landroid/content/Context;

    .line 177
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mSideScreenPresenter:Lcom/evie/sidescreen/SideScreenPresenter;

    .line 178
    iput-boolean p4, p0, Lcom/evie/sidescreen/SideScreenView;->mIsRtl:Z

    .line 179
    iput-object p3, p0, Lcom/evie/sidescreen/SideScreenView;->mWeatherPresenter:Lcom/evie/sidescreen/weather/WeatherPresenter;

    .line 180
    iput-object p7, p0, Lcom/evie/sidescreen/SideScreenView;->mSearchBarBackgroundModelFactory:Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModelFactory;

    .line 181
    iput-object p8, p0, Lcom/evie/sidescreen/SideScreenView;->mSearchBarPresenterFactory:Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;

    .line 182
    iput-object p9, p0, Lcom/evie/sidescreen/SideScreenView;->mAdapter:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    .line 183
    iput-object p10, p0, Lcom/evie/sidescreen/SideScreenView;->mSideScreenConfiguration:Lcom/evie/sidescreen/SideScreenConfiguration;

    .line 185
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/evie/sidescreen/R$layout;->ss_side_screen:I

    invoke-virtual {p1, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mView:Landroid/view/View;

    .line 186
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mView:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 189
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mRefreshView:Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;

    iget-object p3, p0, Lcom/evie/sidescreen/SideScreenView;->mSideScreenPresenter:Lcom/evie/sidescreen/SideScreenPresenter;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lcom/evie/sidescreen/-$$Lambda$AJr8gcRQKNCDpUXcT7HaszmhSrI;

    invoke-direct {p4, p3}, Lcom/evie/sidescreen/-$$Lambda$AJr8gcRQKNCDpUXcT7HaszmhSrI;-><init>(Lcom/evie/sidescreen/SideScreenPresenter;)V

    invoke-virtual {p1, p4}, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 190
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mRefreshView:Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;

    new-array p3, v2, [I

    sget p4, Lcom/evie/sidescreen/R$color;->evie_universal_green:I

    aput p4, p3, v0

    invoke-virtual {p1, p3}, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 191
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mRefreshView:Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;

    new-instance p3, Lcom/evie/sidescreen/-$$Lambda$SideScreenView$DbONapjAryHCAYFrd0WHpb9sEyE;

    invoke-direct {p3, p0}, Lcom/evie/sidescreen/-$$Lambda$SideScreenView$DbONapjAryHCAYFrd0WHpb9sEyE;-><init>(Lcom/evie/sidescreen/SideScreenView;)V

    invoke-virtual {p1, p3}, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->setFilter(Lcom/evie/sidescreen/ClippingSwipeRefreshLayout$ClippingFilter;)V

    .line 194
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/evie/sidescreen/R$dimen;->ss_refresher_start_offset:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 195
    iget-object p3, p0, Lcom/evie/sidescreen/SideScreenView;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/evie/sidescreen/R$dimen;->ss_refresher_end_clipping:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 196
    iget-object p4, p0, Lcom/evie/sidescreen/SideScreenView;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p7, Lcom/evie/sidescreen/R$dimen;->ss_refresher_end_offset:I

    invoke-virtual {p4, p7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    sub-int/2addr p3, p1

    .line 197
    iput p3, p0, Lcom/evie/sidescreen/SideScreenView;->mRefresherStartToClipOffset:I

    sub-int p3, p4, p1

    .line 198
    iput p3, p0, Lcom/evie/sidescreen/SideScreenView;->mRefresherOffsetDiff:I

    .line 199
    iget-object p3, p0, Lcom/evie/sidescreen/SideScreenView;->mRefreshView:Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;

    invoke-virtual {p3, v0, p1, p4}, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 201
    new-instance p1, Lcom/evie/sidescreen/SideScreenView$2;

    iget-object p3, p0, Lcom/evie/sidescreen/SideScreenView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p3}, Lcom/evie/sidescreen/SideScreenView$2;-><init>(Lcom/evie/sidescreen/SideScreenView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 215
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/evie/sidescreen/SideScreenView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 216
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/evie/sidescreen/SideScreenView;->mAdapter:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 217
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/evie/sidescreen/SideScreenView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 218
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;

    invoke-direct {p3, p2}, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 220
    new-instance p1, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;

    invoke-direct {p1, p2}, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;-><init>(Landroid/content/Context;)V

    .line 221
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->getDividerHeight()I

    move-result p1

    iput p1, p0, Lcom/evie/sidescreen/SideScreenView;->mRowDividerHeight:I

    .line 222
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;

    invoke-direct {p3, p2}, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 224
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/evie/sidescreen/R$layout;->ss_fixed_side_screen_header:I

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mHeaderView:Landroid/view/View;

    .line 227
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mHeaderView:Landroid/view/View;

    sget p2, Lcom/evie/sidescreen/R$id;->background:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageSwitcher;

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mBackgroundView:Landroid/widget/ImageSwitcher;

    .line 228
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mBackgroundView:Landroid/widget/ImageSwitcher;

    new-instance p2, Lcom/evie/sidescreen/SideScreenView$3;

    invoke-direct {p2, p0}, Lcom/evie/sidescreen/SideScreenView$3;-><init>(Lcom/evie/sidescreen/SideScreenView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mBackgroundView:Landroid/widget/ImageSwitcher;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageSwitcher;->setPivotX(F)V

    .line 237
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mBackgroundView:Landroid/widget/ImageSwitcher;

    invoke-virtual {p1, p2}, Landroid/widget/ImageSwitcher;->setPivotY(F)V

    .line 238
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mBackgroundView:Landroid/widget/ImageSwitcher;

    new-instance p2, Lcom/evie/sidescreen/SideScreenView$4;

    invoke-direct {p2, p0}, Lcom/evie/sidescreen/SideScreenView$4;-><init>(Lcom/evie/sidescreen/SideScreenView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageSwitcher;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 260
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mHeaderView:Landroid/view/View;

    sget p2, Lcom/evie/sidescreen/R$id;->weather:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mWeatherView:Landroid/view/View;

    .line 261
    new-instance p1, Lcom/evie/sidescreen/weather/WeatherViewHolder;

    iget-object p2, p0, Lcom/evie/sidescreen/SideScreenView;->mWeatherView:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/evie/sidescreen/weather/WeatherViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mWeatherViewHolder:Lcom/evie/sidescreen/weather/WeatherViewHolder;

    .line 262
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mWeatherViewHolder:Lcom/evie/sidescreen/weather/WeatherViewHolder;

    iget-object p2, p0, Lcom/evie/sidescreen/SideScreenView;->mWeatherPresenter:Lcom/evie/sidescreen/weather/WeatherPresenter;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/weather/WeatherViewHolder;->bindPresenter(Lcom/evie/sidescreen/mvp/ItemPresenter;)V

    .line 263
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mWeatherPresenter:Lcom/evie/sidescreen/weather/WeatherPresenter;

    iget-object p2, p0, Lcom/evie/sidescreen/SideScreenView;->mWeatherViewHolder:Lcom/evie/sidescreen/weather/WeatherViewHolder;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/weather/WeatherPresenter;->bindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V

    .line 266
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mHeaderView:Landroid/view/View;

    sget p2, Lcom/evie/sidescreen/R$id;->search_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 268
    iget-object p2, p0, Lcom/evie/sidescreen/SideScreenView;->mSearchBarBackgroundModelFactory:Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModelFactory;

    invoke-virtual {p2, p1}, Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModelFactory;->create(Landroid/view/View;)Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;

    move-result-object p2

    .line 269
    iget-object p3, p0, Lcom/evie/sidescreen/SideScreenView;->mSearchBarPresenterFactory:Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;

    invoke-virtual {p3, p2}, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;->create(Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel;)Lcom/evie/sidescreen/searchbar/SearchBarPresenter;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/SideScreenView;->mSearchPresenter:Lcom/evie/sidescreen/searchbar/SearchBarPresenter;

    .line 270
    new-instance p2, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;

    invoke-direct {p2, p1}, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/evie/sidescreen/SideScreenView;->mSearchViewHolder:Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;

    .line 271
    iget-object p2, p0, Lcom/evie/sidescreen/SideScreenView;->mSearchViewHolder:Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;

    iget-object p3, p0, Lcom/evie/sidescreen/SideScreenView;->mSearchPresenter:Lcom/evie/sidescreen/searchbar/SearchBarPresenter;

    invoke-virtual {p2, p3}, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->bindPresenter(Lcom/evie/sidescreen/mvp/ItemPresenter;)V

    .line 272
    iget-object p2, p0, Lcom/evie/sidescreen/SideScreenView;->mSearchPresenter:Lcom/evie/sidescreen/searchbar/SearchBarPresenter;

    iget-object p3, p0, Lcom/evie/sidescreen/SideScreenView;->mSearchViewHolder:Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;

    invoke-virtual {p2, p3}, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->bindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V

    if-nez p5, :cond_0

    .line 275
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 280
    :cond_0
    iget-object p2, p0, Lcom/evie/sidescreen/SideScreenView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;

    iget-object p4, p0, Lcom/evie/sidescreen/SideScreenView;->mHeaderView:Landroid/view/View;

    invoke-direct {p3, p4, v0, v0}, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;-><init>(Landroid/view/View;IZ)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 282
    iget-object p2, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopInsetContainer:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    invoke-virtual {p2, p6}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->setFitsSystemWindows(Z)V

    .line 283
    iget-object p2, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopButton:Landroid/view/View;

    new-instance p3, Lcom/evie/sidescreen/SideScreenView$5;

    invoke-direct {p3, p0}, Lcom/evie/sidescreen/SideScreenView$5;-><init>(Lcom/evie/sidescreen/SideScreenView;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object p2, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopButton:Landroid/view/View;

    new-instance p3, Lcom/evie/sidescreen/SideScreenView$6;

    invoke-direct {p3, p0}, Lcom/evie/sidescreen/SideScreenView$6;-><init>(Lcom/evie/sidescreen/SideScreenView;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 310
    iget-object p2, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeTooltipBody:Landroid/view/View;

    new-instance p3, Lcom/evie/sidescreen/-$$Lambda$SideScreenView$A8gELSFtgrqPJaT4YB3tmAJJh2g;

    invoke-direct {p3, p0}, Lcom/evie/sidescreen/-$$Lambda$SideScreenView$A8gELSFtgrqPJaT4YB3tmAJJh2g;-><init>(Lcom/evie/sidescreen/SideScreenView;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object p2, p0, Lcom/evie/sidescreen/SideScreenView;->mBottomBarContainer:Landroid/view/ViewGroup;

    sget-object p3, Lcom/evie/sidescreen/-$$Lambda$SideScreenView$byYZTgYPddWRnpNV19pBcMEvXzM;->INSTANCE:Lcom/evie/sidescreen/-$$Lambda$SideScreenView$byYZTgYPddWRnpNV19pBcMEvXzM;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    new-instance p2, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    const/4 p3, 0x3

    new-array p3, p3, [Landroid/view/View;

    iget-object p4, p0, Lcom/evie/sidescreen/SideScreenView;->mBackgroundView:Landroid/widget/ImageSwitcher;

    aput-object p4, p3, v0

    iget-object p4, p0, Lcom/evie/sidescreen/SideScreenView;->mWeatherView:Landroid/view/View;

    aput-object p4, p3, v2

    const/4 p4, 0x2

    aput-object p1, p3, p4

    invoke-direct {p2, p3}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;-><init>([Landroid/view/View;)V

    iput-object p2, p0, Lcom/evie/sidescreen/SideScreenView;->mHeaderAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    .line 325
    iget-object p2, p0, Lcom/evie/sidescreen/SideScreenView;->mHeaderAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    sget-object p3, Lcom/evie/sidescreen/-$$Lambda$SideScreenView$1kNrzSKSaFsScL05M0J_8YshVfY;->INSTANCE:Lcom/evie/sidescreen/-$$Lambda$SideScreenView$1kNrzSKSaFsScL05M0J_8YshVfY;

    invoke-virtual {p2, p1, p3}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putModifier(Landroid/view/View;Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$Modifier;)V

    .line 326
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mHeaderAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    iget-object p2, p0, Lcom/evie/sidescreen/SideScreenView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p3}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    .line 328
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/evie/sidescreen/SideScreenView;->mTouchSlop:I

    return-void
.end method

.method static synthetic access$100(Lcom/evie/sidescreen/SideScreenView;)Lcom/evie/sidescreen/SideScreenPresenter;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/evie/sidescreen/SideScreenView;->mSideScreenPresenter:Lcom/evie/sidescreen/SideScreenPresenter;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/evie/sidescreen/SideScreenView;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopLastAnchorScrollOffset:I

    return p1
.end method

.method static synthetic access$1102(Lcom/evie/sidescreen/SideScreenView;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopLastScrollDirection:I

    return p1
.end method

.method static synthetic access$1200(Lcom/evie/sidescreen/SideScreenView;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/SideScreenView;->handleTopEmptyItemScroll(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/evie/sidescreen/SideScreenView;Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/evie/sidescreen/SideScreenView;->handleBackToTopButton(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/evie/sidescreen/SideScreenView;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/evie/sidescreen/SideScreenView;->handlePersonalizeTooltip()V

    return-void
.end method

.method static synthetic access$300(Lcom/evie/sidescreen/SideScreenView;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/evie/sidescreen/SideScreenView;->handleLoadingViewSize()V

    return-void
.end method

.method static synthetic access$400(Lcom/evie/sidescreen/SideScreenView;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/evie/sidescreen/SideScreenView;->handleRefreshOffset()V

    return-void
.end method

.method static synthetic access$500(Lcom/evie/sidescreen/SideScreenView;)Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/evie/sidescreen/SideScreenView;->mAdapter:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/evie/sidescreen/SideScreenView;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/evie/sidescreen/SideScreenView;->mIsRtl:Z

    return p0
.end method

.method static synthetic access$700(Lcom/evie/sidescreen/SideScreenView;)Landroid/widget/ImageSwitcher;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/evie/sidescreen/SideScreenView;->mBackgroundView:Landroid/widget/ImageSwitcher;

    return-object p0
.end method

.method static synthetic access$800(Lcom/evie/sidescreen/SideScreenView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopDistance:I

    return p0
.end method

.method static synthetic access$802(Lcom/evie/sidescreen/SideScreenView;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopDistance:I

    return p1
.end method

.method static synthetic access$900(Lcom/evie/sidescreen/SideScreenView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/evie/sidescreen/SideScreenView;->mCurrentScrollOffset:I

    return p0
.end method

.method static synthetic access$902(Lcom/evie/sidescreen/SideScreenView;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/evie/sidescreen/SideScreenView;->mCurrentScrollOffset:I

    return p1
.end method

.method private handleBackToTopButton(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 573
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    const/4 p2, 0x2

    if-gt p1, p2, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenView;->hideBackToTopButton()V

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 584
    :cond_1
    iget p2, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopLastScrollDirection:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-gez p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eq p2, v0, :cond_4

    .line 589
    iget p2, p0, Lcom/evie/sidescreen/SideScreenView;->mCurrentScrollOffset:I

    iput p2, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopLastAnchorScrollOffset:I

    .line 591
    :cond_4
    iput p3, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopLastScrollDirection:I

    .line 593
    iget p2, p0, Lcom/evie/sidescreen/SideScreenView;->mCurrentScrollOffset:I

    iget v0, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopLastAnchorScrollOffset:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p0, Lcom/evie/sidescreen/SideScreenView;->mTouchSlop:I

    if-le p2, v0, :cond_6

    if-lez p3, :cond_5

    .line 595
    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenView;->hideBackToTopButton()V

    goto :goto_2

    :cond_5
    const/4 p2, 0x5

    if-lt p1, p2, :cond_6

    .line 598
    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenView;->showBackToTopButton()V

    :cond_6
    :goto_2
    return-void
.end method

.method private handleLoadingViewSize()V
    .locals 6

    .line 605
    iget v0, p0, Lcom/evie/sidescreen/SideScreenView;->mTileLoadingIndex:I

    if-ltz v0, :cond_5

    .line 606
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenView;->mAdapter:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    invoke-virtual {v1, v0}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->getItemViewType(I)I

    move-result v0

    .line 607
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenView;->mAdapter:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    iget v2, p0, Lcom/evie/sidescreen/SideScreenView;->mTileLoadingIndex:I

    invoke-virtual {v1, v2}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->getItem(I)Lcom/evie/sidescreen/mvp/ItemPresenter;

    move-result-object v1

    .line 608
    sget v2, Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;->ID:I

    if-ne v0, v2, :cond_5

    instance-of v0, v1, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;

    if-eqz v0, :cond_5

    .line 609
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    .line 610
    iget-object v2, p0, Lcom/evie/sidescreen/SideScreenView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/evie/sidescreen/R$dimen;->ss_tile_loading_dimen:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    .line 612
    :goto_0
    iget-object v4, p0, Lcom/evie/sidescreen/SideScreenView;->mAdapter:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    invoke-virtual {v4}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 613
    iget v4, p0, Lcom/evie/sidescreen/SideScreenView;->mTileLoadingIndex:I

    if-ne v4, v3, :cond_0

    goto :goto_1

    .line 616
    :cond_0
    iget-object v4, p0, Lcom/evie/sidescreen/SideScreenView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 620
    :cond_1
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v0, v5

    .line 621
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_2

    .line 622
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 623
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v0, v5

    .line 624
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v0, v4

    :cond_2
    if-ge v0, v2, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 632
    :cond_4
    :goto_2
    check-cast v1, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;

    .line 633
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;->setHeight(I)V

    :cond_5
    return-void
.end method

.method private handlePersonalizeTooltip()V
    .locals 3

    .line 641
    iget v0, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeIndex:I

    const/16 v1, 0x8

    if-ltz v0, :cond_3

    iget-boolean v2, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeTooltipEnabled:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/evie/sidescreen/SideScreenView;->mTabPersonalizeTooltipEnabled:Z

    if-nez v2, :cond_0

    goto :goto_1

    .line 646
    :cond_0
    iget-object v2, p0, Lcom/evie/sidescreen/SideScreenView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v2, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 654
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 661
    :goto_0
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeTooltip:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 662
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeTooltip:Landroid/view/View;

    iget v2, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeTooltipYOffset:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeTooltip:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 642
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeTooltip:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private handleRefreshOffset()V
    .locals 5

    .line 666
    iget-boolean v0, p0, Lcom/evie/sidescreen/SideScreenView;->mShouldRecalculateRefreshOffset:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/evie/sidescreen/SideScreenView;->mRefresherIndex:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 671
    iget-object v2, p0, Lcom/evie/sidescreen/SideScreenView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v3, p0, Lcom/evie/sidescreen/SideScreenView;->mRefresherIndex:I

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 673
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/evie/sidescreen/SideScreenView;->mRefresherExtraOffset:I

    add-int/2addr v0, v2

    .line 674
    iget-boolean v2, p0, Lcom/evie/sidescreen/SideScreenView;->mHasTrendingRail:Z

    if-nez v2, :cond_1

    .line 676
    iget v0, p0, Lcom/evie/sidescreen/SideScreenView;->mTopEmptySearchBarDistance:I

    iget v2, p0, Lcom/evie/sidescreen/SideScreenView;->mSearchBarMargin:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/evie/sidescreen/SideScreenView;->mSearchBarShadow:I

    sub-int/2addr v0, v2

    .line 678
    :cond_1
    iget v2, p0, Lcom/evie/sidescreen/SideScreenView;->mRefresherStartToClipOffset:I

    sub-int v2, v0, v2

    .line 679
    iget v3, p0, Lcom/evie/sidescreen/SideScreenView;->mRefresherOffsetDiff:I

    add-int/2addr v3, v2

    .line 682
    iget-object v4, p0, Lcom/evie/sidescreen/SideScreenView;->mRefreshView:Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;

    invoke-virtual {v4, v0}, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->setClipping(I)V

    .line 683
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mRefreshView:Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;

    invoke-virtual {v0, v1, v2, v3}, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 684
    iput-boolean v1, p0, Lcom/evie/sidescreen/SideScreenView;->mShouldRecalculateRefreshOffset:Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private handleTopEmptyItemScroll(I)V
    .locals 6

    .line 560
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mBackgroundView:Landroid/widget/ImageSwitcher;

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v2, p1, v1

    const/high16 v3, 0x40400000    # 3.0f

    div-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageSwitcher;->setTranslationY(F)V

    .line 561
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mWeatherViewHolder:Lcom/evie/sidescreen/weather/WeatherViewHolder;

    iget-object v0, v0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->itemView:Landroid/view/View;

    const/high16 v3, 0x40200000    # 2.5f

    mul-float v4, p1, v3

    const/high16 v5, 0x40600000    # 3.5f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 562
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mSearchViewHolder:Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;

    iget-object v0, v0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->itemView:Landroid/view/View;

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    const v0, 0x3f99999a    # 1.2f

    mul-float p1, p1, v0

    .line 564
    iget v0, p0, Lcom/evie/sidescreen/SideScreenView;->mTopEmptySpaceDistance:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v1, p1

    .line 565
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 567
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mHeaderAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/evie/sidescreen/SideScreenView;Landroid/view/View;)Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic lambda$new$1(Lcom/evie/sidescreen/SideScreenView;Landroid/view/View;)V
    .locals 1

    .line 311
    iget p1, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeIndex:I

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mAdapter:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 315
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/SideScreenView;->setPersonalizeTooltipEnabled(Z)V

    .line 316
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mAdapter:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    iget v0, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeIndex:I

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->getItem(I)Lcom/evie/sidescreen/mvp/ItemPresenter;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;

    .line 317
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->onClickPersonalizeLink()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$new$3(F)F
    .locals 1

    const/high16 v0, 0x3fa00000    # 1.25f

    mul-float p0, p0, v0

    return p0
.end method

.method public static synthetic lambda$setPersonalizeToolbarEnabled$4(Lcom/evie/sidescreen/SideScreenView;Landroid/view/View;)V
    .locals 0

    .line 510
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mSideScreenPresenter:Lcom/evie/sidescreen/SideScreenPresenter;

    invoke-virtual {p1}, Lcom/evie/sidescreen/SideScreenPresenter;->onPersonalizeBottomBarClick()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 412
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mWeatherPresenter:Lcom/evie/sidescreen/weather/WeatherPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/weather/WeatherPresenter;->dispose()V

    .line 413
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mSearchPresenter:Lcom/evie/sidescreen/searchbar/SearchBarPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->dispose()V

    .line 415
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 416
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mAdapter:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->disposeHolders()V

    .line 417
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mAdapter:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->setItemPresenters(Ljava/util/List;Z)V

    return-void
.end method

.method public findFirstVisibleItemOffset()I
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public findFirstvVisiblePosition()I
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public getFixedHeaderView()Landroid/view/View;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getMaxTopEmptyScrollDistance()F
    .locals 1

    .line 474
    iget v0, p0, Lcom/evie/sidescreen/SideScreenView;->mTopEmptySpaceDistance:I

    int-to-float v0, v0

    return v0
.end method

.method public getPopupView()Landroid/view/ViewGroup;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mPopupView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hideBackToTopButton()V
    .locals 3

    .line 689
    iget-boolean v0, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 690
    iput-boolean v0, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopVisible:Z

    .line 691
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 692
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopDistance:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public hideBackToTopButtonImmediate()V
    .locals 2

    const/4 v0, 0x0

    .line 697
    iput-boolean v0, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopVisible:Z

    .line 698
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 699
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopButton:Landroid/view/View;

    iget v1, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopDistance:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public hideRefreshView()V
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mRefreshView:Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public hideWeatherView()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mHeaderAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenView;->mWeatherView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->removeFromSet(Landroid/view/View;)V

    .line 160
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mWeatherViewHolder:Lcom/evie/sidescreen/weather/WeatherViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/weather/WeatherViewHolder;->hideWeatherView()V

    return-void
.end method

.method public moveTabIndicator(I)V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->clearOnTabSelectedListeners()V

    .line 465
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 467
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 470
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mOnTabSelectedListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public setPersonalizeToolbarEnabled(Z)V
    .locals 4

    .line 500
    iget-boolean v0, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeToolbarEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 504
    :cond_0
    iput-boolean p1, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeToolbarEnabled:Z

    .line 505
    iget-boolean p1, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeToolbarEnabled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 506
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeBottomBar:Landroid/view/View;

    if-nez p1, :cond_1

    .line 507
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/evie/sidescreen/R$layout;->ss_bottom_bar_personalize_onboarding:I

    iget-object v2, p0, Lcom/evie/sidescreen/SideScreenView;->mBottomBarContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeBottomBar:Landroid/view/View;

    .line 508
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeBottomBar:Landroid/view/View;

    sget v1, Lcom/evie/sidescreen/R$id;->button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 509
    new-instance v1, Lcom/evie/sidescreen/-$$Lambda$SideScreenView$ycLzP3dQUgdzIZnwwxHEpHmAOqw;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/-$$Lambda$SideScreenView$ycLzP3dQUgdzIZnwwxHEpHmAOqw;-><init>(Lcom/evie/sidescreen/SideScreenView;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    :cond_1
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeBottomBar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_2

    .line 514
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mBottomBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 515
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mBottomBarContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeBottomBar:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 516
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mBottomBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 519
    :cond_2
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mBottomBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 521
    :cond_3
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mBottomBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method

.method public setPersonalizeTooltipEnabled(Z)V
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeTooltipEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 490
    :cond_0
    iput-boolean p1, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeTooltipEnabled:Z

    .line 491
    iget-boolean p1, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeTooltipEnabled:Z

    if-eqz p1, :cond_1

    .line 492
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeTooltip:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 494
    :cond_1
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeTooltip:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 496
    :goto_0
    invoke-direct {p0}, Lcom/evie/sidescreen/SideScreenView;->handlePersonalizeTooltip()V

    return-void
.end method

.method public setRefreshEnabled(Z)V
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mRefreshView:Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->setEnabled(Z)V

    return-void
.end method

.method public setScreenScrollXProgress(F)V
    .locals 4

    .line 402
    iget-boolean v0, p0, Lcom/evie/sidescreen/SideScreenView;->mIsRtl:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 403
    :goto_0
    iget-object v2, p0, Lcom/evie/sidescreen/SideScreenView;->mHeaderView:Landroid/view/View;

    iget v3, p0, Lcom/evie/sidescreen/SideScreenView;->mHeaderParallaxDistance:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 404
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mHeaderAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    invoke-virtual {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    return-void
.end method

.method public setTabsEnabled(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 431
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mRefreshView:Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;

    invoke-virtual {p1}, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 432
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/evie/sidescreen/R$dimen;->ss_tabs_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 433
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenView;->mRefreshView:Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;

    invoke-virtual {v1, p1}, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mTabsContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 436
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mRefreshView:Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;

    invoke-virtual {p1}, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 437
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 438
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mRefreshView:Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mTabsContainer:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setUpTabs(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->clearOnTabSelectedListeners()V

    .line 446
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    .line 448
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 449
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenView;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    sget v3, Lcom/evie/sidescreen/R$layout;->ss_single_tab:I

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    goto :goto_0

    .line 452
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result p1

    const/4 v0, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p1, v0, :cond_1

    .line 453
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 454
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v2}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    goto :goto_1

    .line 456
    :cond_1
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v2}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 457
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 459
    :goto_1
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mOnTabSelectedListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    return-void
.end method

.method public shouldTabShowPersonalizeTooltip(Z)V
    .locals 0

    .line 482
    iput-boolean p1, p0, Lcom/evie/sidescreen/SideScreenView;->mTabPersonalizeTooltipEnabled:Z

    return-void
.end method

.method public showBackToTopButton()V
    .locals 3

    .line 703
    iget-boolean v0, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 704
    iput-boolean v0, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopVisible:Z

    .line 705
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 706
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public showBackground(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mBackgroundView:Landroid/widget/ImageSwitcher;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/widget/ImageSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public showPresenters(Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_6

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    .line 344
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 345
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/evie/sidescreen/mvp/ItemPresenter;

    .line 346
    instance-of v7, v6, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;

    if-eqz v7, :cond_0

    if-gez v3, :cond_0

    .line 349
    iget-object v3, p0, Lcom/evie/sidescreen/SideScreenView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/evie/sidescreen/R$dimen;->ss_half_spacing:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    neg-int v3, v3

    iput v3, p0, Lcom/evie/sidescreen/SideScreenView;->mRefresherExtraOffset:I

    move v3, v2

    .line 352
    :cond_0
    instance-of v7, v6, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;

    if-nez v7, :cond_1

    instance-of v7, v6, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;

    if-eqz v7, :cond_3

    :cond_1
    if-gez v3, :cond_2

    .line 356
    iget v3, p0, Lcom/evie/sidescreen/SideScreenView;->mRowDividerHeight:I

    iput v3, p0, Lcom/evie/sidescreen/SideScreenView;->mRefresherExtraOffset:I

    move v3, v2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v2

    .line 359
    :cond_3
    :goto_1
    instance-of v6, v6, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;

    if-eqz v6, :cond_4

    move v4, v2

    :cond_4
    if-eq v4, v1, :cond_5

    if-eq v5, v1, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    .line 369
    :cond_7
    :goto_2
    iput v4, p0, Lcom/evie/sidescreen/SideScreenView;->mTileLoadingIndex:I

    .line 370
    iput v5, p0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeIndex:I

    .line 371
    iput v3, p0, Lcom/evie/sidescreen/SideScreenView;->mRefresherIndex:I

    const/4 v2, 0x1

    .line 372
    iput-boolean v2, p0, Lcom/evie/sidescreen/SideScreenView;->mShouldRecalculateRefreshOffset:Z

    .line 374
    iget-object v3, p0, Lcom/evie/sidescreen/SideScreenView;->mAdapter:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    invoke-virtual {v3, p1, p2}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->setItemPresenters(Ljava/util/List;Z)V

    .line 378
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 379
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void
.end method

.method public showWeatherView()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mHeaderAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenView;->mWeatherView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->addToSet(Landroid/view/View;)V

    .line 155
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView;->mWeatherViewHolder:Lcom/evie/sidescreen/weather/WeatherViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/weather/WeatherViewHolder;->showWeatherView()V

    return-void
.end method
