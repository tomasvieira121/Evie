.class Lcom/voxel/simplesearchlauncher/popup/NotificationItemView$1;
.super Ljava/lang/Object;
.source "NotificationItemView.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->access$000(Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;)Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->access$000(Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;)Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

    move-result-object p1

    iget-boolean p1, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->dismissable:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 0

    .line 113
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;

    return-object p1
.end method

.method public getFalsingThresholdFactor()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public isAntiFalsingNeeded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 1

    .line 133
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;

    .line 134
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->access$000(Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;)Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

    move-result-object v0

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->notificationKey:Ljava/lang/String;

    .line 133
    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->dismissNotification(Ljava/lang/String;)V

    return-void
.end method

.method public onChildSnappedBack(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public updateSwipeProgress(Landroid/view/View;ZF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
