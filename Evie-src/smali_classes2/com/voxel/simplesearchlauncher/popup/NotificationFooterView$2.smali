.class Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationFooterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->removeViewFromIconRow(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$2;->this$0:Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 215
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$2;->this$0:Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$2;->this$0:Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
