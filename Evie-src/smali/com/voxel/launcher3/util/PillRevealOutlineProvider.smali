.class public Lcom/voxel/launcher3/util/PillRevealOutlineProvider;
.super Lcom/voxel/launcher3/util/RevealOutlineAnimation;
.source "PillRevealOutlineProvider.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mFinalRadius:F

.field protected mPillRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILandroid/graphics/Rect;F)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/voxel/launcher3/util/RevealOutlineAnimation;-><init>()V

    .line 47
    iput p1, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mCenterX:I

    .line 48
    iput p2, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mCenterY:I

    .line 49
    iput-object p3, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mPillRect:Landroid/graphics/Rect;

    .line 50
    iput p4, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mFinalRadius:F

    iput p4, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mOutlineRadius:F

    return-void
.end method


# virtual methods
.method public setProgress(F)V
    .locals 3

    .line 61
    iget v0, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mCenterX:I

    iget-object v1, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mPillRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mCenterX:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 65
    iget-object v0, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mPillRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mCenterX:I

    sub-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 66
    iget-object v0, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mPillRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mCenterY:I

    sub-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 67
    iget-object v0, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mPillRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mCenterX:I

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 68
    iget-object v0, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mPillRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mCenterY:I

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 69
    iget p1, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mFinalRadius:F

    iget-object v0, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/util/PillRevealOutlineProvider;->mOutlineRadius:F

    return-void
.end method

.method public shouldRemoveElevationDuringAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
