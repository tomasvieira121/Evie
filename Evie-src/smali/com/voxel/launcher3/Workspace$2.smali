.class Lcom/voxel/launcher3/Workspace$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Workspace;

.field final synthetic val$onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Workspace;Ljava/lang/Runnable;)V
    .locals 0

    .line 830
    iput-object p1, p0, Lcom/voxel/launcher3/Workspace$2;->this$0:Lcom/voxel/launcher3/Workspace;

    iput-object p2, p0, Lcom/voxel/launcher3/Workspace$2;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 833
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace$2;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {p1}, Lcom/voxel/launcher3/Workspace;->access$100(Lcom/voxel/launcher3/Workspace;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 834
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace$2;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {p1}, Lcom/voxel/launcher3/Workspace;->access$100(Lcom/voxel/launcher3/Workspace;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 836
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace$2;->val$onComplete:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 837
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
