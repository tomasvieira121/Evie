.class public Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController$ControllerV16;
.super Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController;
.source "HeaderElevationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControllerV16"
.end annotation


# instance fields
.field private final mScrollToElevation:F

.field private final mShadowViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07005d

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController$ControllerV16;->mScrollToElevation:F

    .line 40
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController$ControllerV16;->mShadowViews:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onScroll(I)V
    .locals 3

    int-to-float p1, p1

    .line 45
    iget v0, p0, Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController$ControllerV16;->mScrollToElevation:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController$ControllerV16;->mScrollToElevation:F

    div-float/2addr p1, v0

    .line 47
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController$ControllerV16;->mShadowViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->limitAlpha(F)F

    move-result v2

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->floatToIntAlpha(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
