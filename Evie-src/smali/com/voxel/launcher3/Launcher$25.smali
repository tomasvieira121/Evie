.class Lcom/voxel/launcher3/Launcher$25;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Launcher;->hideAppsCustomizeHelper(Lcom/voxel/launcher3/Workspace$State;ZZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;

.field final synthetic val$animated:Z

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;

.field final synthetic val$toView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 0

    .line 6135
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$25;->this$0:Lcom/voxel/launcher3/Launcher;

    iput-object p2, p0, Lcom/voxel/launcher3/Launcher$25;->val$toView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/voxel/launcher3/Launcher$25;->val$animated:Z

    iput-object p4, p0, Lcom/voxel/launcher3/Launcher$25;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 6140
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$25;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$25;->val$toView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/voxel/launcher3/Launcher$25;->val$animated:Z

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->access$5000(Lcom/voxel/launcher3/Launcher;Landroid/view/View;ZZ)V

    .line 6141
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$25;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 6142
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
