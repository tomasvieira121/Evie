.class Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PopupContainerWithArrow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->lambda$trimNotifications$2(Ljava/util/List;I)V
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

    .line 204
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 207
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mNotificationGroupView:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->removeView(Landroid/view/View;)V

    .line 208
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mNotificationGroupView:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;

    .line 209
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->handleClose(Z)V

    return-void

    :cond_0
    return-void
.end method
