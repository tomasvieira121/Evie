.class Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PopupContainerWithArrow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->animateClose(Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$5;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 423
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$5;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    .line 427
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->closeComplete()V

    return-void
.end method
