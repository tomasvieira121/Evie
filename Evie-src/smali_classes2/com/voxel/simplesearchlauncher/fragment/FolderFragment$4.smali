.class Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$4;
.super Ljava/lang/Object;
.source "FolderFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->runExitAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 628
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->notifyFragmentExit()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
