.class Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->snapChild(Landroid/view/View;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$canBeDismissed:Z

.field final synthetic val$targetLeft:F


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;Landroid/view/View;ZF)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$2;->this$0:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$2;->val$animView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$2;->val$canBeDismissed:Z

    iput p4, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$2;->val$targetLeft:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 440
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$2;->this$0:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->access$402(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;Z)Z

    .line 441
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$2;->this$0:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$2;->val$animView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$2;->val$canBeDismissed:Z

    invoke-static {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->access$000(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;Landroid/view/View;Z)V

    .line 442
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$2;->this$0:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->access$200(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;)Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$2;->val$animView:Landroid/view/View;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$2;->val$targetLeft:F

    invoke-interface {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;->onChildSnappedBack(Landroid/view/View;F)V

    return-void
.end method
