.class Lcom/voxel/launcher3/PagedView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/PagedView;->onDropToDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/PagedView;

.field final synthetic val$onAnimationEndRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/PagedView;Ljava/lang/Runnable;)V
    .locals 0

    .line 2610
    iput-object p1, p0, Lcom/voxel/launcher3/PagedView$4;->this$0:Lcom/voxel/launcher3/PagedView;

    iput-object p2, p0, Lcom/voxel/launcher3/PagedView$4;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 2612
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView$4;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
