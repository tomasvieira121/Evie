.class public Lcom/evie/sidescreen/SideScreenView_ViewBinding;
.super Ljava/lang/Object;
.source "SideScreenView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/SideScreenView;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/SideScreenView;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenView_ViewBinding;->target:Lcom/evie/sidescreen/SideScreenView;

    .line 26
    sget v0, Lcom/evie/sidescreen/R$id;->recycler_view:I

    const-string v1, "field \'mRecyclerView\'"

    const-class v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/evie/sidescreen/SideScreenView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    sget v0, Lcom/evie/sidescreen/R$id;->error_view:I

    const-string v1, "field \'mErrorView\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/SideScreenView;->mErrorView:Landroid/view/View;

    .line 28
    sget v0, Lcom/evie/sidescreen/R$id;->popup:I

    const-string v1, "field \'mPopupView\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/evie/sidescreen/SideScreenView;->mPopupView:Landroid/widget/FrameLayout;

    .line 29
    sget v0, Lcom/evie/sidescreen/R$id;->refresher:I

    const-string v1, "field \'mRefreshView\'"

    const-class v2, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;

    iput-object v0, p1, Lcom/evie/sidescreen/SideScreenView;->mRefreshView:Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;

    .line 30
    sget v0, Lcom/evie/sidescreen/R$id;->back_to_top:I

    const-string v1, "field \'mBackToTopButton\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/SideScreenView;->mBackToTopButton:Landroid/view/View;

    .line 31
    sget v0, Lcom/evie/sidescreen/R$id;->back_to_top_inset:I

    const-string v1, "field \'mBackToTopInsetContainer\'"

    const-class v2, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    iput-object v0, p1, Lcom/evie/sidescreen/SideScreenView;->mBackToTopInsetContainer:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    .line 32
    sget v0, Lcom/evie/sidescreen/R$id;->personalize_tooltip:I

    const-string v1, "field \'mPersonalizeTooltip\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeTooltip:Landroid/view/View;

    .line 33
    sget v0, Lcom/evie/sidescreen/R$id;->personalize_tooltip_body:I

    const-string v1, "field \'mPersonalizeTooltipBody\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeTooltipBody:Landroid/view/View;

    .line 34
    sget v0, Lcom/evie/sidescreen/R$id;->tabs_container:I

    const-string v1, "field \'mTabsContainer\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/SideScreenView;->mTabsContainer:Landroid/view/View;

    .line 35
    sget v0, Lcom/evie/sidescreen/R$id;->tabs:I

    const-string v1, "field \'mTabLayout\'"

    const-class v2, Lcom/google/android/material/tabs/TabLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/evie/sidescreen/SideScreenView;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 36
    sget v0, Lcom/evie/sidescreen/R$id;->bottom_bar_container:I

    const-string v1, "field \'mBottomBarContainer\'"

    const-class v2, Landroid/view/ViewGroup;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/evie/sidescreen/SideScreenView;->mBottomBarContainer:Landroid/view/ViewGroup;

    .line 38
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 39
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 40
    sget v0, Lcom/evie/sidescreen/R$dimen;->ss_top_empty_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/evie/sidescreen/SideScreenView;->mTopEmptySpaceDistance:I

    .line 41
    sget v0, Lcom/evie/sidescreen/R$dimen;->ss_search_bar_full_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/evie/sidescreen/SideScreenView;->mTopEmptySearchBarDistance:I

    .line 42
    sget v0, Lcom/evie/sidescreen/R$dimen;->ss_search_bar_margin:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/evie/sidescreen/SideScreenView;->mSearchBarMargin:I

    .line 43
    sget v0, Lcom/evie/sidescreen/R$dimen;->ss_search_bar_shadow:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/evie/sidescreen/SideScreenView;->mSearchBarShadow:I

    .line 44
    sget v0, Lcom/evie/sidescreen/R$dimen;->ss_background_parallax_distance:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/evie/sidescreen/SideScreenView;->mHeaderParallaxDistance:I

    .line 45
    sget v0, Lcom/evie/sidescreen/R$dimen;->ss_personalize_tooltip_y_offset:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeTooltipYOffset:I

    .line 46
    sget v0, Lcom/evie/sidescreen/R$dimen;->ss_back_to_top_button_shadow_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/evie/sidescreen/SideScreenView;->mBackTopTopButtonShadowPadding:I

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView_ViewBinding;->target:Lcom/evie/sidescreen/SideScreenView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/evie/sidescreen/SideScreenView_ViewBinding;->target:Lcom/evie/sidescreen/SideScreenView;

    .line 56
    iput-object v1, v0, Lcom/evie/sidescreen/SideScreenView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    iput-object v1, v0, Lcom/evie/sidescreen/SideScreenView;->mErrorView:Landroid/view/View;

    .line 58
    iput-object v1, v0, Lcom/evie/sidescreen/SideScreenView;->mPopupView:Landroid/widget/FrameLayout;

    .line 59
    iput-object v1, v0, Lcom/evie/sidescreen/SideScreenView;->mRefreshView:Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;

    .line 60
    iput-object v1, v0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopButton:Landroid/view/View;

    .line 61
    iput-object v1, v0, Lcom/evie/sidescreen/SideScreenView;->mBackToTopInsetContainer:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    .line 62
    iput-object v1, v0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeTooltip:Landroid/view/View;

    .line 63
    iput-object v1, v0, Lcom/evie/sidescreen/SideScreenView;->mPersonalizeTooltipBody:Landroid/view/View;

    .line 64
    iput-object v1, v0, Lcom/evie/sidescreen/SideScreenView;->mTabsContainer:Landroid/view/View;

    .line 65
    iput-object v1, v0, Lcom/evie/sidescreen/SideScreenView;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 66
    iput-object v1, v0, Lcom/evie/sidescreen/SideScreenView;->mBottomBarContainer:Landroid/view/ViewGroup;

    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
