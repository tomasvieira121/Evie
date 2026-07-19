.class Lcom/voxel/launcher3/Workspace$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Workspace;->enableOverviewMode(ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Workspace;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Workspace;)V
    .locals 0

    .line 2159
    iput-object p1, p0, Lcom/voxel/launcher3/Workspace$4;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 2162
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace$4;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Workspace;->onTransitionEnd()V

    return-void
.end method
