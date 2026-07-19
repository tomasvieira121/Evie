.class Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Launcher.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainLayerGestureListener"
.end annotation


# instance fields
.field allAppsLocked:Z

.field disallowTouches:Z

.field edgeSlop:I

.field hasCalculatedSlope:Z

.field horizontal:Z

.field intercepting:Z

.field private isDoubleTapping:Z

.field searchLocked:Z

.field swipeUp:Z

.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;

.field tmpXy:[I

.field touchDownAllAppsScrollBar:Z

.field touchDownScrollingWidget:Z


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;Landroid/content/Context;)V
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x0

    .line 682
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->intercepting:Z

    .line 685
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->hasCalculatedSlope:Z

    .line 686
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->horizontal:Z

    .line 687
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->swipeUp:Z

    const/4 p1, 0x2

    .line 700
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->tmpXy:[I

    .line 703
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 704
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->edgeSlop:I

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 838
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$400(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;

    move-result-object v0

    iget-boolean v0, v0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->searchLocked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$400(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;

    move-result-object v0

    iget-boolean v0, v0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->allAppsLocked:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$400(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;

    move-result-object v0

    iget-boolean v0, v0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->disallowTouches:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->isOnCustomContent()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$500(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/Launcher$State;

    move-result-object v0

    sget-object v2, Lcom/voxel/launcher3/Launcher$State;->WORKSPACE:Lcom/voxel/launcher3/Launcher$State;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->getState()Lcom/voxel/launcher3/Workspace$State;

    move-result-object v0

    sget-object v2, Lcom/voxel/launcher3/Workspace$State;->NORMAL:Lcom/voxel/launcher3/Workspace$State;

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 841
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->isDoubleTapping:Z

    .line 842
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$600(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    return v1

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    .line 710
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->hasCalculatedSlope:Z

    .line 711
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->horizontal:Z

    .line 712
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->swipeUp:Z

    .line 713
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->disallowTouches:Z

    .line 714
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->intercepting:Z

    .line 715
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->touchDownScrollingWidget:Z

    .line 717
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v1, v1, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getCurrentFactor()F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpg-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v1, v1, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    .line 718
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getEndValueIfAvailable()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v1, v1, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    .line 719
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getEndValueIfAvailable()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->searchLocked:Z

    .line 721
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v1}, Lcom/voxel/launcher3/Launcher;->access$100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->getCurrentFactor()F

    move-result v1

    cmpg-float v1, v1, v2

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    .line 722
    invoke-static {v1}, Lcom/voxel/launcher3/Launcher;->access$100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->getEndValueIfAvailable()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    .line 723
    invoke-static {v1}, Lcom/voxel/launcher3/Launcher;->access$100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->getEndValueIfAvailable()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->allAppsLocked:Z

    .line 725
    iget-boolean v1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->isDoubleTapping:Z

    if-eqz v1, :cond_4

    .line 726
    iput-boolean v3, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->disallowTouches:Z

    .line 728
    :cond_4
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->isDoubleTapping:Z

    .line 731
    iget-boolean v1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->allAppsLocked:Z

    if-eqz v1, :cond_5

    .line 734
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->tmpXy:[I

    aput v0, v1, v0

    .line 735
    aput v0, v1, v3

    .line 737
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    .line 738
    invoke-static {v1}, Lcom/voxel/launcher3/Launcher;->access$200(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v4, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v4, v4, Lcom/voxel/launcher3/Launcher;->mLauncherView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v5, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->tmpXy:[I

    .line 737
    invoke-static {v1, v4, v5, v0}, Lcom/voxel/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 741
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v1}, Lcom/voxel/launcher3/Launcher;->access$200(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->tmpXy:[I

    aget v5, v5, v0

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v5, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->tmpXy:[I

    aget v5, v5, v3

    sub-int/2addr p1, v5

    invoke-virtual {v1, v4, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->isNearIndexBar(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->touchDownAllAppsScrollBar:Z

    goto :goto_4

    .line 743
    :cond_5
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->touchDownAllAppsScrollBar:Z

    .line 747
    :goto_4
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getEndValueIfAvailable()Ljava/lang/Float;

    move-result-object p1

    .line 749
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v1, v1, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getCurrentFactor()F

    move-result v1

    cmpg-float v1, v1, v2

    if-lez v1, :cond_6

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_8

    .line 750
    :cond_6
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$300(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$300(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->getSearchText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 751
    iput-boolean v3, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->disallowTouches:Z

    goto :goto_5

    .line 754
    :cond_7
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->horizontal:Z

    .line 755
    iput-boolean v3, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->hasCalculatedSlope:Z

    .line 759
    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Workspace;->isInOverviewMode()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 760
    iput-boolean v3, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->disallowTouches:Z

    :cond_9
    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 770
    iget-object p3, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p3, p3, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p3}, Lcom/voxel/launcher3/Workspace;->isInOverviewMode()Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    .line 771
    iput-boolean p4, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->disallowTouches:Z

    .line 773
    :cond_0
    iget-boolean p3, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->disallowTouches:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    return v0

    .line 776
    :cond_1
    iget-boolean p3, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->intercepting:Z

    if-eqz p3, :cond_2

    return p4

    .line 780
    :cond_2
    iget-object p3, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p3, p3, Lcom/voxel/launcher3/Launcher;->mLauncherView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p3, :cond_c

    .line 781
    iget-boolean p3, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->hasCalculatedSlope:Z

    if-nez p3, :cond_7

    .line 782
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr p3, v1

    .line 783
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v1, p1

    const/4 p1, 0x0

    cmpl-float v2, p3, p1

    if-nez v2, :cond_3

    const p3, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_3
    div-float p3, v1, p3

    .line 791
    :goto_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p3, p3, v2

    if-lez p3, :cond_4

    .line 792
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->horizontal:Z

    goto :goto_1

    .line 793
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p2

    if-le p2, p4, :cond_5

    .line 794
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->horizontal:Z

    goto :goto_1

    .line 796
    :cond_5
    iput-boolean p4, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->horizontal:Z

    :goto_1
    cmpg-float p1, v1, p1

    if-gez p1, :cond_6

    .line 800
    iput-boolean p4, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->swipeUp:Z

    .line 803
    :cond_6
    iput-boolean p4, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->hasCalculatedSlope:Z

    .line 806
    :cond_7
    iget-boolean p1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->horizontal:Z

    if-nez p1, :cond_c

    .line 808
    iget-boolean p1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->touchDownScrollingWidget:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->touchDownAllAppsScrollBar:Z

    if-eqz p1, :cond_8

    goto :goto_2

    .line 811
    :cond_8
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->isOnCustomContent()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 812
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->intercepting:Z

    .line 813
    iput-boolean p4, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->disallowTouches:Z

    goto :goto_3

    .line 815
    :cond_9
    iput-boolean p4, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->intercepting:Z

    .line 817
    iget-boolean p1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->allAppsLocked:Z

    if-eqz p1, :cond_c

    .line 818
    iget-boolean p1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->swipeUp:Z

    if-eqz p1, :cond_a

    .line 820
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->intercepting:Z

    goto :goto_3

    .line 821
    :cond_a
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$200(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$200(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 823
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$200(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    .line 824
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    if-lez p1, :cond_c

    .line 826
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->intercepting:Z

    goto :goto_3

    .line 809
    :cond_b
    :goto_2
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->intercepting:Z

    .line 810
    iput-boolean p4, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->disallowTouches:Z

    .line 833
    :cond_c
    :goto_3
    iget-boolean p1, p0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->intercepting:Z

    return p1
.end method
