.class Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$canBeDismissed:Z

.field final synthetic val$endAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$1;->val$animView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$1;->val$canBeDismissed:Z

    iput-object p4, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$1;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 398
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$1;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 402
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$1;->val$animView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$1;->val$canBeDismissed:Z

    invoke-static {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->access$000(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;Landroid/view/View;Z)V

    .line 403
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->access$100(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$1;->val$animView:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$1;->mCancelled:Z

    if-nez p1, :cond_0

    .line 405
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->access$200(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;)Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$1;->val$animView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;->onChildDismissed(Landroid/view/View;)V

    .line 407
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$1;->val$endAction:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 408
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 410
    :cond_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->access$300(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 411
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$1;->val$animView:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method
