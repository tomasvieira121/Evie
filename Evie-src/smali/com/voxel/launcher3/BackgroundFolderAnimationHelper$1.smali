.class Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$1;
.super Ljava/lang/Object;
.source "BackgroundFolderAnimationHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->addListeners(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$1;->this$0:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 104
    invoke-static {}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationCancel"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 96
    invoke-static {}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationEnd"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p1, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$1;->this$0:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;

    invoke-static {p1}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->access$000(Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;)Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$1;->this$0:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;

    invoke-static {p1}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->access$000(Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;)Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$AnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$AnimationListener;->onAnimationEnd()V

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$1;->this$0:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->access$202(Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$1;->this$0:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;

    invoke-static {p1}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->access$000(Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;)Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$1;->this$0:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;

    invoke-static {p1}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->access$000(Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;)Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$AnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$AnimationListener;->onAnimationStart()V

    :cond_0
    return-void
.end method
