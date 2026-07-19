.class Lcom/voxel/launcher3/Workspace$5;
.super Lcom/voxel/launcher3/LauncherAnimatorUpdateListener;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Workspace;->getChangeStateAnimation(Lcom/voxel/launcher3/Workspace$State;ZIILjava/util/ArrayList;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Workspace;

.field final synthetic val$cl:Lcom/voxel/launcher3/CellLayout;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/CellLayout;I)V
    .locals 0

    .line 2368
    iput-object p1, p0, Lcom/voxel/launcher3/Workspace$5;->this$0:Lcom/voxel/launcher3/Workspace;

    iput-object p2, p0, Lcom/voxel/launcher3/Workspace$5;->val$cl:Lcom/voxel/launcher3/CellLayout;

    iput p3, p0, Lcom/voxel/launcher3/Workspace$5;->val$i:I

    invoke-direct {p0}, Lcom/voxel/launcher3/LauncherAnimatorUpdateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(FF)V
    .locals 3

    .line 2370
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$5;->val$cl:Lcom/voxel/launcher3/CellLayout;

    iget-object v1, p0, Lcom/voxel/launcher3/Workspace$5;->this$0:Lcom/voxel/launcher3/Workspace;

    .line 2371
    invoke-static {v1}, Lcom/voxel/launcher3/Workspace;->access$900(Lcom/voxel/launcher3/Workspace;)[F

    move-result-object v1

    iget v2, p0, Lcom/voxel/launcher3/Workspace$5;->val$i:I

    aget v1, v1, v2

    mul-float p1, p1, v1

    iget-object v1, p0, Lcom/voxel/launcher3/Workspace$5;->this$0:Lcom/voxel/launcher3/Workspace;

    .line 2372
    invoke-static {v1}, Lcom/voxel/launcher3/Workspace;->access$1000(Lcom/voxel/launcher3/Workspace;)[F

    move-result-object v1

    iget v2, p0, Lcom/voxel/launcher3/Workspace$5;->val$i:I

    aget v1, v1, v2

    mul-float p2, p2, v1

    add-float/2addr p1, p2

    .line 2370
    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/CellLayout;->setBackgroundAlpha(F)V

    return-void
.end method
