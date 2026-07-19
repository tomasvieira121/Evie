.class Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationFooterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->animateFirstNotificationTo(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Ljava/util/List;Landroid/graphics/Rect;Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$IconAnimationEndListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;

.field final synthetic val$callback:Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$IconAnimationEndListener;

.field final synthetic val$container:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

.field final synthetic val$firstNotification:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$IconAnimationEndListener;Landroid/view/View;Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$1;->val$callback:Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$IconAnimationEndListener;

    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$1;->val$firstNotification:Landroid/view/View;

    iput-object p4, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$1;->val$container:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 172
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$1;->val$callback:Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$IconAnimationEndListener;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$1;->val$firstNotification:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

    invoke-interface {p1, v0}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$IconAnimationEndListener;->onIconAnimationEnd(Lcom/voxel/simplesearchlauncher/notification/NotificationContent;)V

    .line 173
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$1;->val$container:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$1;->val$firstNotification:Landroid/view/View;

    invoke-static {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->access$000(Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Landroid/view/View;)V

    return-void
.end method
