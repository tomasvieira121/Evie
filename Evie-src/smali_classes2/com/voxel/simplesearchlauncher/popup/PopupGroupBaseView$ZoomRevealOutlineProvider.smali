.class public Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;
.super Lcom/voxel/launcher3/util/PillRevealOutlineProvider;
.source "PopupGroupBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ZoomRevealOutlineProvider"
.end annotation


# instance fields
.field private final mArrowCenter:F

.field private final mFullHeight:F

.field private final mPivotLeft:Z

.field private final mTranslateView:Landroid/view/View;

.field private final mTranslateX:F

.field private final mTranslateYMultiplier:F

.field private final mZoomView:Landroid/view/View;


# direct methods
.method public constructor <init>(IILandroid/graphics/Rect;Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;Landroid/view/View;ZZF)V
    .locals 1

    .line 220
    invoke-virtual {p4}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->getBackgroundRadius()F

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;-><init>(IILandroid/graphics/Rect;F)V

    .line 221
    iput-object p4, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;->mTranslateView:Landroid/view/View;

    .line 222
    iput-object p5, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;->mZoomView:Landroid/view/View;

    .line 223
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;->mFullHeight:F

    if-eqz p6, :cond_0

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 p1, -0x41000000    # -0.5f

    .line 225
    :goto_0
    iput p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;->mTranslateYMultiplier:F

    .line 227
    iput-boolean p7, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;->mPivotLeft:Z

    if-eqz p7, :cond_1

    move p1, p8

    goto :goto_1

    .line 228
    :cond_1
    iget p1, p3, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    sub-float/2addr p1, p8

    :goto_1
    iput p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;->mTranslateX:F

    .line 229
    iput p8, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;->mArrowCenter:F

    return-void
.end method


# virtual methods
.method public setProgress(F)V
    .locals 3

    .line 234
    invoke-super {p0, p1}, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->setProgress(F)V

    .line 236
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;->mZoomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 238
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;->mZoomView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    .line 242
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;->mTranslateView:Landroid/view/View;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;->mTranslateYMultiplier:F

    iget v2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;->mFullHeight:F

    sub-float/2addr v2, p1

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 244
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;->mArrowCenter:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 245
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;->mPivotLeft:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 246
    :goto_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;->mTranslateView:Landroid/view/View;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;->mTranslateX:F

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
