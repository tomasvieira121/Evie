.class Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;
.super Ljava/lang/Object;
.source "FolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransitionItem"
.end annotation


# instance fields
.field mBubbleTextView:Lcom/voxel/launcher3/BubbleTextView;

.field mFactor:F

.field private mFactorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mFromParams:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;

.field mMaxFactor:F

.field mToParams:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2

    .line 745
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 740
    iput v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mMaxFactor:F

    const/4 v0, 0x0

    const v1, 0x7f0d0051

    .line 747
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/voxel/launcher3/BubbleTextView;

    .line 748
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$000(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Lcom/voxel/launcher3/Folder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/voxel/launcher3/Folder;->getContent()Lcom/voxel/launcher3/FolderPagedView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/voxel/launcher3/FolderPagedView;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/voxel/launcher3/BubbleTextView;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    .line 749
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/voxel/launcher3/BubbleTextView;->setTextColor(I)V

    const/4 p3, 0x1

    .line 750
    invoke-virtual {p2, p3}, Lcom/voxel/launcher3/BubbleTextView;->setIgnorePressedStateChange(Z)V

    .line 751
    invoke-virtual {p2}, Lcom/voxel/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 753
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$000(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Lcom/voxel/launcher3/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/Folder;->getContent()Lcom/voxel/launcher3/FolderPagedView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/FolderPagedView;->getPageAt(I)Lcom/voxel/launcher3/CellLayout;

    move-result-object p1

    .line 754
    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->getCellWidth()I

    move-result v0

    iput v0, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 755
    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->getCellHeight()I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x33

    .line 756
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 757
    invoke-virtual {p2, p3}, Lcom/voxel/launcher3/BubbleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 759
    invoke-virtual {p2, p1}, Lcom/voxel/launcher3/BubbleTextView;->setPivotX(F)V

    .line 760
    invoke-virtual {p2, p1}, Lcom/voxel/launcher3/BubbleTextView;->setPivotY(F)V

    const/4 p1, 0x4

    .line 761
    invoke-virtual {p2, p1}, Lcom/voxel/launcher3/BubbleTextView;->setVisibility(I)V

    const/4 p1, 0x2

    const/4 p3, 0x0

    .line 762
    invoke-virtual {p2, p1, p3}, Lcom/voxel/launcher3/BubbleTextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 764
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mBubbleTextView:Lcom/voxel/launcher3/BubbleTextView;

    .line 765
    new-instance p1, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$FolderFragment$TransitionItem$KKunX63pXZ1dK2mUrN164srvjSM;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$FolderFragment$TransitionItem$KKunX63pXZ1dK2mUrN164srvjSM;-><init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mFactorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method static synthetic access$1400(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 735
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mFactorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 766
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mFactor:F

    .line 767
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$1600(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    iget v1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mFactor:F

    invoke-interface {v0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    invoke-static {p1, p0, v0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$600(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;F)V

    return-void
.end method
