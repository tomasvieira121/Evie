.class Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PopupContainerWithArrow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->reduceNotificationViewHeight(II)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

.field final synthetic val$translateYBy:I


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;I)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$6;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    iput p2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$6;->val$translateYBy:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 576
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$6;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    iget-boolean p1, p1, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz p1, :cond_0

    .line 580
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$6;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$6;->val$translateYBy:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->setTranslationY(F)V

    .line 582
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$6;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->access$002(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method
