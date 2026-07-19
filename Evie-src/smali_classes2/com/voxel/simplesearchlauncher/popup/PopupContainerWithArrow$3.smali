.class Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PopupContainerWithArrow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->animateOpen()V
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

    .line 351
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$3;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 354
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$3;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    return-void
.end method
