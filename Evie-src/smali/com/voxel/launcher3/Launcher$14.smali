.class Lcom/voxel/launcher3/Launcher$14;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Launcher;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCustomDetectorActive:Z

.field mEventStreamStart:Z

.field mMultiTouchSwipeDownActive:Z

.field mMultiTouchSwipeDownCancelSent:Z

.field mMultiTouchSwipeUpActive:Z

.field mMultiTouchSwipeUpCancelSent:Z

.field mSingleTouchSwipeDownActive:Z

.field mSingleTouchSwipeDownSearch:Z

.field mSingleTouchSwipeUpActive:Z

.field mSingleTouchSwipeUpAllApps:Z

.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;

.field final synthetic val$mainLayerGestureDetector:Landroidx/core/view/GestureDetectorCompat;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;Landroidx/core/view/GestureDetectorCompat;)V
    .locals 0

    .line 2754
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$14;->this$0:Lcom/voxel/launcher3/Launcher;

    iput-object p2, p0, Lcom/voxel/launcher3/Launcher$14;->val$mainLayerGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2756
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher$14;->mEventStreamStart:Z

    const/4 p1, 0x0

    .line 2757
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher$14;->mSingleTouchSwipeUpAllApps:Z

    .line 2758
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher$14;->mSingleTouchSwipeDownSearch:Z

    .line 2759
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher$14;->mCustomDetectorActive:Z

    .line 2761
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher$14;->mSingleTouchSwipeUpActive:Z

    .line 2762
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher$14;->mSingleTouchSwipeDownActive:Z

    .line 2763
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher$14;->mMultiTouchSwipeUpActive:Z

    .line 2764
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher$14;->mMultiTouchSwipeDownActive:Z

    .line 2765
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher$14;->mMultiTouchSwipeUpCancelSent:Z

    .line 2766
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher$14;->mMultiTouchSwipeDownCancelSent:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 2771
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$14;->val$mainLayerGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 2772
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$14;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$400(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;

    move-result-object v0

    iget-boolean v0, v0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->disallowTouches:Z

    if-nez v0, :cond_0

    .line 2773
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$14;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$2900(Lcom/voxel/launcher3/Launcher;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2776
    :cond_0
    iget-boolean v0, p0, Lcom/voxel/launcher3/Launcher$14;->mEventStreamStart:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2777
    iput-boolean v2, p0, Lcom/voxel/launcher3/Launcher$14;->mEventStreamStart:Z

    .line 2778
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2779
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2780
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$14;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v3}, Lcom/voxel/launcher3/Launcher;->access$2900(Lcom/voxel/launcher3/Launcher;)Landroid/view/ScaleGestureDetector;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2781
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$14;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v3}, Lcom/voxel/launcher3/Launcher;->access$3000(Lcom/voxel/launcher3/Launcher;)Landroidx/core/view/GestureDetectorCompat;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2782
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2783
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$14;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v3}, Lcom/voxel/launcher3/Launcher;->access$2900(Lcom/voxel/launcher3/Launcher;)Landroid/view/ScaleGestureDetector;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2784
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$14;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v3}, Lcom/voxel/launcher3/Launcher;->access$3000(Lcom/voxel/launcher3/Launcher;)Landroidx/core/view/GestureDetectorCompat;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2786
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2787
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$14;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$600(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->reset()V

    .line 2788
    sget-object v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->APP_DRAWER:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v3

    sget-object v4, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->SWIPE_UP:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    invoke-virtual {v3, v4}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getActionForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher$14;->mSingleTouchSwipeUpAllApps:Z

    .line 2789
    sget-object v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->EVIE_SEARCH:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v3

    sget-object v4, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->SWIPE_DOWN:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    invoke-virtual {v3, v4}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getActionForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher$14;->mSingleTouchSwipeDownSearch:Z

    .line 2792
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$14;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$600(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->isGestureHandled()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_b

    if-nez p1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_b

    .line 2793
    :cond_2
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$14;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$400(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;

    move-result-object p1

    iget-boolean p1, p1, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->horizontal:Z

    if-eqz p1, :cond_3

    goto/16 :goto_0

    .line 2797
    :cond_3
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$14;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$400(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;

    move-result-object p1

    iget-boolean p1, p1, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->searchLocked:Z

    if-eqz p1, :cond_4

    .line 2798
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$14;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->sendMotionEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 2799
    :cond_4
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$14;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$400(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;

    move-result-object p1

    iget-boolean p1, p1, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->allAppsLocked:Z

    if-eqz p1, :cond_5

    .line 2800
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$14;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->sendMotionEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 2807
    :cond_5
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$14;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$400(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;

    move-result-object p1

    iget-boolean p1, p1, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->swipeUp:Z

    if-eqz p1, :cond_8

    .line 2808
    iget-boolean p1, p0, Lcom/voxel/launcher3/Launcher$14;->mSingleTouchSwipeUpAllApps:Z

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v3, :cond_6

    .line 2809
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$14;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->sendMotionEvent(Landroid/view/MotionEvent;)V

    .line 2810
    iput-boolean v3, p0, Lcom/voxel/launcher3/Launcher$14;->mSingleTouchSwipeUpActive:Z

    goto :goto_0

    .line 2812
    :cond_6
    iget-boolean p1, p0, Lcom/voxel/launcher3/Launcher$14;->mSingleTouchSwipeUpActive:Z

    if-eqz p1, :cond_7

    .line 2813
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 2814
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2815
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$14;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->sendMotionEvent(Landroid/view/MotionEvent;)V

    .line 2816
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2817
    iput-boolean v2, p0, Lcom/voxel/launcher3/Launcher$14;->mSingleTouchSwipeUpActive:Z

    .line 2819
    :cond_7
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$14;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$3000(Lcom/voxel/launcher3/Launcher;)Landroidx/core/view/GestureDetectorCompat;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2820
    iput-boolean v3, p0, Lcom/voxel/launcher3/Launcher$14;->mCustomDetectorActive:Z

    goto :goto_0

    .line 2823
    :cond_8
    iget-boolean p1, p0, Lcom/voxel/launcher3/Launcher$14;->mSingleTouchSwipeDownSearch:Z

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v3, :cond_9

    .line 2824
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$14;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->sendMotionEvent(Landroid/view/MotionEvent;)V

    .line 2825
    iput-boolean v3, p0, Lcom/voxel/launcher3/Launcher$14;->mSingleTouchSwipeDownActive:Z

    goto :goto_0

    .line 2827
    :cond_9
    iget-boolean p1, p0, Lcom/voxel/launcher3/Launcher$14;->mSingleTouchSwipeDownActive:Z

    if-eqz p1, :cond_a

    .line 2828
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 2829
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2830
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$14;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {v0, p2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->sendMotionEvent(Landroid/view/MotionEvent;)V

    .line 2831
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2832
    iput-boolean v2, p0, Lcom/voxel/launcher3/Launcher$14;->mSingleTouchSwipeDownActive:Z

    .line 2834
    :cond_a
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$14;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$3000(Lcom/voxel/launcher3/Launcher;)Landroidx/core/view/GestureDetectorCompat;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2835
    iput-boolean v3, p0, Lcom/voxel/launcher3/Launcher$14;->mCustomDetectorActive:Z

    .line 2841
    :cond_b
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v3, :cond_c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_d

    .line 2842
    :cond_c
    iput-boolean v3, p0, Lcom/voxel/launcher3/Launcher$14;->mEventStreamStart:Z

    .line 2843
    iput-boolean v2, p0, Lcom/voxel/launcher3/Launcher$14;->mSingleTouchSwipeDownActive:Z

    .line 2844
    iput-boolean v2, p0, Lcom/voxel/launcher3/Launcher$14;->mSingleTouchSwipeUpActive:Z

    .line 2845
    iput-boolean v2, p0, Lcom/voxel/launcher3/Launcher$14;->mMultiTouchSwipeDownActive:Z

    .line 2846
    iput-boolean v2, p0, Lcom/voxel/launcher3/Launcher$14;->mMultiTouchSwipeUpActive:Z

    :cond_d
    return v3
.end method
