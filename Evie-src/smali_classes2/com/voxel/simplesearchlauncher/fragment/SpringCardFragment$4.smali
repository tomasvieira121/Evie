.class Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;
.super Ljava/lang/Object;
.source "SpringCardFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

.field final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$null$0(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$500(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Lcom/facebook/rebound/SpringListener;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringY:Lcom/facebook/rebound/Spring;

    invoke-interface {v0, v1}, Lcom/facebook/rebound/SpringListener;->onSpringAtRest(Lcom/facebook/rebound/Spring;)V

    return-void
.end method

.method public static synthetic lambda$onGlobalLayout$1(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;)V
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;->providesTransitionAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$100(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 164
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringY:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 166
    invoke-static {}, Lcom/voxel/simplesearchlauncher/fragment/Executors;->getMainThreadExecutor()Lcom/voxel/launcher3/MainThreadExecutor;

    move-result-object v0

    new-instance v3, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$SpringCardFragment$4$QI3TVxBw5x4ZScO42u-WtRppRcQ;

    invoke-direct {v3, p0}, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$SpringCardFragment$4$QI3TVxBw5x4ZScO42u-WtRppRcQ;-><init>(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;)V

    invoke-virtual {v0, v3}, Lcom/voxel/launcher3/MainThreadExecutor;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$100(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$300(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 170
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringY:Lcom/facebook/rebound/Spring;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$300(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringY:Lcom/facebook/rebound/Spring;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$500(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Lcom/facebook/rebound/SpringListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 174
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringY:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 176
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->onStartedEnterTransition()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$100(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 156
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->getTotalSpringDistanceOffset()I

    move-result v1

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$402(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;I)I

    .line 157
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$100(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$100(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$400(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$302(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;I)I

    .line 159
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->val$savedInstanceState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$SpringCardFragment$4$x82Jv8TNPV3KbdvchS77pFoEs5Y;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$SpringCardFragment$4$x82Jv8TNPV3KbdvchS77pFoEs5Y;-><init>(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;)V

    .line 179
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$000(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Lcom/voxel/simplesearchlauncher/utils/Choreographer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->postAnimationStart(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->invalidateBackgroundWashAlpha()V

    :goto_0
    return-void
.end method
