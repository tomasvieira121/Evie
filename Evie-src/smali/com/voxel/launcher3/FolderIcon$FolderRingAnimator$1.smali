.class Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->animateToAcceptState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator$1;->this$0:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 317
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator$1;->this$0:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    iget-object p1, p1, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    if-eqz p1, :cond_0

    .line 318
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator$1;->this$0:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    iget-object p1, p1, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    invoke-static {p1}, Lcom/voxel/launcher3/FolderIcon;->access$100(Lcom/voxel/launcher3/FolderIcon;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
