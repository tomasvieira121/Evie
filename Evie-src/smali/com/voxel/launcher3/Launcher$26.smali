.class Lcom/voxel/launcher3/Launcher$26;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Launcher;->lambda$bindItems$35(Landroid/animation/AnimatorSet;Ljava/util/Collection;ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 6776
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$26;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onAnimationEnd$0(Lcom/voxel/launcher3/Launcher$26;)V
    .locals 1

    .line 6785
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$26;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->showFirstRunClings()Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 6784
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$26;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mLauncherView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p1, :cond_0

    .line 6785
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$26;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mLauncherView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$Launcher$26$73DZX3zfBztDdSjSwHVFAMXGKs8;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$26$73DZX3zfBztDdSjSwHVFAMXGKs8;-><init>(Lcom/voxel/launcher3/Launcher$26;)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
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
