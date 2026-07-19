.class Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->animateToNaturalState()V
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

    .line 341
    iput-object p1, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator$2;->this$0:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 344
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator$2;->this$0:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    invoke-static {p1}, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->access$200(Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;)Lcom/voxel/launcher3/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 345
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator$2;->this$0:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    invoke-static {p1}, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->access$200(Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;)Lcom/voxel/launcher3/CellLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator$2;->this$0:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/CellLayout;->hideFolderAccept(Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;)V

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator$2;->this$0:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    iget-object p1, p1, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    if-eqz p1, :cond_1

    .line 348
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator$2;->this$0:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    iget-object p1, p1, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    invoke-static {p1}, Lcom/voxel/launcher3/FolderIcon;->access$100(Lcom/voxel/launcher3/FolderIcon;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
