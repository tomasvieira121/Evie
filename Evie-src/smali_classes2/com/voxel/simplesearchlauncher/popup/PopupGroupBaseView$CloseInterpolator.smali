.class public Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$CloseInterpolator;
.super Lcom/voxel/launcher3/LogAccelerateInterpolator;
.source "PopupGroupBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CloseInterpolator"
.end annotation


# instance fields
.field private mRemainingProgress:F

.field private mStartProgress:F


# direct methods
.method public constructor <init>(F)V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x0

    .line 262
    invoke-direct {p0, v0, v1}, Lcom/voxel/launcher3/LogAccelerateInterpolator;-><init>(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 263
    iput v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$CloseInterpolator;->mStartProgress:F

    .line 264
    iput p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$CloseInterpolator;->mRemainingProgress:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .line 269
    iget v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$CloseInterpolator;->mStartProgress:F

    invoke-super {p0, p1}, Lcom/voxel/launcher3/LogAccelerateInterpolator;->getInterpolation(F)F

    move-result p1

    iget v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$CloseInterpolator;->mRemainingProgress:F

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    return v0
.end method
