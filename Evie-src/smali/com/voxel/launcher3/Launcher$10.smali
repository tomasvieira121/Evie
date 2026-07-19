.class Lcom/voxel/launcher3/Launcher$10;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/view/SpringySearchView$OnFactorChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Launcher;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;

.field wasFullyExpanded:Z


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 2504
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2506
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher$10;->wasFullyExpanded:Z

    return-void
.end method


# virtual methods
.method public onFactorBeginChanging()V
    .locals 3

    .line 2511
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$1400(Lcom/voxel/launcher3/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2512
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->onTransitionPrepare()V

    .line 2513
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$1000(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2514
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$1100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onFactorChanged(F)V
    .locals 7

    .line 2521
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mMainLayerBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    .line 2525
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v2, v2, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getCrossOverFactor()F

    move-result v2

    sub-float v2, v0, v2

    div-float v2, v1, v2

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->limitAlpha(F)F

    move-result v2

    .line 2527
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v3, v2}, Lcom/voxel/launcher3/Launcher;->access$2400(Lcom/voxel/launcher3/Launcher;F)V

    .line 2530
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v3}, Lcom/voxel/launcher3/Launcher;->access$1400(Lcom/voxel/launcher3/Launcher;)Z

    move-result v3

    if-eqz v3, :cond_1

    sub-float v3, v0, v2

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2535
    :goto_0
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v4}, Lcom/voxel/launcher3/Launcher;->access$900(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v4

    iget-object v5, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v5, v5, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {v4, v5, v3}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    .line 2536
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v4}, Lcom/voxel/launcher3/Launcher;->access$1000(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v4

    iget-object v5, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v5, v5, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {v4, v5, v3}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    .line 2537
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v4}, Lcom/voxel/launcher3/Launcher;->access$1100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v4

    iget-object v5, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v5, v5, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {v4, v5, v3}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    const/4 v3, 0x4

    const/4 v4, 0x0

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_2

    .line 2539
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v2, v2, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v2, v3}, Lcom/voxel/launcher3/Workspace;->setVisibility(I)V

    .line 2540
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v2, v2, Lcom/voxel/launcher3/Launcher;->mHotseat:Lcom/voxel/launcher3/Hotseat;

    invoke-virtual {v2, v3}, Lcom/voxel/launcher3/Hotseat;->setVisibility(I)V

    .line 2541
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v2, v2, Lcom/voxel/launcher3/Launcher;->mMainLayerBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    invoke-virtual {v2, v3}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setVisibility(I)V

    .line 2542
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v2, v2, Lcom/voxel/launcher3/Launcher;->mHotseatBg:Lcom/voxel/simplesearchlauncher/view/HotseatImageView;

    invoke-virtual {v2, v3}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->setVisibility(I)V

    .line 2543
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v2, v2, Lcom/voxel/launcher3/Launcher;->mIndicatorContainer:Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;

    invoke-virtual {v2, v3}, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->setVisibility(I)V

    goto :goto_1

    .line 2545
    :cond_2
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v2, v2, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v2, v4}, Lcom/voxel/launcher3/Workspace;->setVisibility(I)V

    .line 2546
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v2, v2, Lcom/voxel/launcher3/Launcher;->mHotseat:Lcom/voxel/launcher3/Hotseat;

    invoke-virtual {v2, v4}, Lcom/voxel/launcher3/Hotseat;->setVisibility(I)V

    .line 2549
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v2, v2, Lcom/voxel/launcher3/Launcher;->mHotseatBg:Lcom/voxel/simplesearchlauncher/view/HotseatImageView;

    invoke-virtual {v2, v4}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->setVisibility(I)V

    .line 2550
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v2, v2, Lcom/voxel/launcher3/Launcher;->mIndicatorContainer:Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;

    invoke-virtual {v2, v4}, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->setVisibility(I)V

    .line 2553
    :goto_1
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v2, v2, Lcom/voxel/launcher3/Launcher;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    invoke-virtual {v2, v1}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->setCurrentFactor(F)V

    .line 2555
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v1}, Lcom/voxel/launcher3/Launcher;->access$2500(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->put(Ljava/lang/Object;F)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpg-float v5, p1, v2

    if-gtz v5, :cond_5

    .line 2558
    iget-object v5, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v5}, Lcom/voxel/launcher3/Launcher;->access$2600(Lcom/voxel/launcher3/Launcher;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "launcher.has_engaged_search"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2559
    iget-object v5, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v5}, Lcom/voxel/launcher3/Launcher;->access$2600(Lcom/voxel/launcher3/Launcher;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "launcher.has_engaged_search"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2561
    :cond_3
    iget-object v5, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v5, v5, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {v5}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getAlternateHintTextModeTarget()F

    move-result v5

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_4

    .line 2562
    iget-object v5, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v5, v5, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {v5, v4}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->hideAlternateHintTextMode(Z)V

    .line 2564
    :cond_4
    iput-boolean v1, p0, Lcom/voxel/launcher3/Launcher$10;->wasFullyExpanded:Z

    goto :goto_2

    :cond_5
    cmpl-float v5, p1, v0

    if-ltz v5, :cond_6

    .line 2566
    iput-boolean v4, p0, Lcom/voxel/launcher3/Launcher$10;->wasFullyExpanded:Z

    .line 2569
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v5, v5, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {v5}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getEndValueIfAvailable()Ljava/lang/Float;

    move-result-object v5

    cmpg-float v6, p1, v2

    if-lez v6, :cond_b

    if-eqz v5, :cond_7

    .line 2570
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpg-float v6, v6, v2

    if-gtz v6, :cond_7

    goto :goto_4

    :cond_7
    cmpl-float v6, p1, v0

    if-gez v6, :cond_a

    if-eqz v5, :cond_8

    .line 2572
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v2, v5, v2

    if-ltz v2, :cond_8

    goto :goto_3

    .line 2574
    :cond_8
    iget-boolean v2, p0, Lcom/voxel/launcher3/Launcher$10;->wasFullyExpanded:Z

    if-nez v2, :cond_9

    .line 2575
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v2, v1}, Lcom/voxel/launcher3/Launcher;->access$2700(Lcom/voxel/launcher3/Launcher;Z)V

    goto :goto_5

    .line 2577
    :cond_9
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v1, v4}, Lcom/voxel/launcher3/Launcher;->access$2700(Lcom/voxel/launcher3/Launcher;Z)V

    goto :goto_5

    .line 2573
    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v1, v4}, Lcom/voxel/launcher3/Launcher;->access$2700(Lcom/voxel/launcher3/Launcher;Z)V

    goto :goto_5

    .line 2571
    :cond_b
    :goto_4
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v2, v1}, Lcom/voxel/launcher3/Launcher;->access$2700(Lcom/voxel/launcher3/Launcher;Z)V

    .line 2580
    :goto_5
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v1}, Lcom/voxel/launcher3/Launcher;->access$300(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v1, v1, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    .line 2581
    invoke-static {v1}, Lcom/voxel/launcher3/Launcher;->access$300(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->getSearchText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 2582
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v1, v1, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    iget-object v2, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v2}, Lcom/voxel/launcher3/Launcher;->access$300(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->getSearchText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_c
    cmpl-float p1, p1, v0

    if-ltz p1, :cond_e

    .line 2587
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    const-string v0, ""

    invoke-virtual {p1, v0, v4}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 2588
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$300(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->getSearchText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    .line 2589
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$300(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->updateSearchInput(Ljava/lang/String;)Z

    .line 2591
    :cond_d
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->getLayoutManager()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 2592
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    invoke-virtual {p1, v3}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->setVisibility(I)V

    goto :goto_6

    .line 2594
    :cond_e
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    invoke-virtual {p1, v4}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->setVisibility(I)V

    :goto_6
    return-void

    :cond_f
    :goto_7
    return-void
.end method

.method public onFactorEndChanging()V
    .locals 3

    .line 2601
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    if-eqz v0, :cond_0

    .line 2602
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->onTransitionEnd()V

    .line 2604
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$1000(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2605
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$1000(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2607
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$1100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2608
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$10;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$1100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method
