.class Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$4;
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

.field final synthetic val$view:Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$4;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$4;->val$view:Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 408
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$4;->val$view:Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->setVisibility(I)V

    return-void
.end method
