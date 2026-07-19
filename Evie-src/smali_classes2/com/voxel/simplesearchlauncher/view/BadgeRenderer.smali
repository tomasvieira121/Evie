.class public Lcom/voxel/simplesearchlauncher/view/BadgeRenderer;
.super Ljava/lang/Object;
.source "BadgeRenderer.java"


# static fields
.field private static sInstance:Lcom/voxel/simplesearchlauncher/view/BadgeRenderer;


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mBackgroundsWithShadow:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeRenderer;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeRenderer;->mBackgroundsWithShadow:Landroid/util/SparseArray;

    return-void
.end method

.method public static getInstance()Lcom/voxel/simplesearchlauncher/view/BadgeRenderer;
    .locals 1

    .line 33
    sget-object v0, Lcom/voxel/simplesearchlauncher/view/BadgeRenderer;->sInstance:Lcom/voxel/simplesearchlauncher/view/BadgeRenderer;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/voxel/simplesearchlauncher/view/BadgeRenderer;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/view/BadgeRenderer;-><init>()V

    sput-object v0, Lcom/voxel/simplesearchlauncher/view/BadgeRenderer;->sInstance:Lcom/voxel/simplesearchlauncher/view/BadgeRenderer;

    .line 36
    :cond_0
    sget-object v0, Lcom/voxel/simplesearchlauncher/view/BadgeRenderer;->sInstance:Lcom/voxel/simplesearchlauncher/view/BadgeRenderer;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/voxel/launcher3/graphics/IconPalette;Landroid/graphics/Rect;Landroid/graphics/Rect;IFF)V
    .locals 5

    int-to-float p5, p5

    const v0, 0x3ec28f5c    # 0.38f

    mul-float p5, p5, v0

    float-to-int p5, p5

    .line 56
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeRenderer;->mBackgroundsWithShadow:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 58
    invoke-static {v0, p5, p5}, Lcom/voxel/launcher3/graphics/ShadowGenerator;->createPillWithShadow(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BadgeRenderer;->mBackgroundsWithShadow:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float p5, p5

    const v1, 0x3f333333    # 0.7f

    mul-float p5, p5, v1

    mul-float p5, p5, p6

    const v2, 0x3f0ccccd    # 0.55f

    mul-float p5, p5, v2

    float-to-int p5, p5

    .line 66
    iget v2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p5

    .line 67
    iget p3, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, p5

    add-int v3, v2, p5

    .line 70
    iget v4, p4, Landroid/graphics/Rect;->right:I

    if-le v3, v4, :cond_1

    .line 71
    iget v2, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p5

    :cond_1
    sub-int v3, p3, p5

    .line 72
    iget v4, p4, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_2

    .line 73
    iget p3, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, p5

    :cond_2
    mul-float p6, p6, p7

    mul-float p6, p6, v1

    add-int/lit8 v2, v2, 0x0

    int-to-float p4, v2

    add-int/lit8 p3, p3, 0x0

    int-to-float p3, p3

    .line 78
    invoke-virtual {p1, p4, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 79
    invoke-virtual {p1, p6, p6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 81
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/view/BadgeRenderer;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object p4, p2, Lcom/voxel/launcher3/graphics/IconPalette;->backgroundColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 84
    iget-object p4, p0, Lcom/voxel/simplesearchlauncher/view/BadgeRenderer;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object p2, p2, Lcom/voxel/launcher3/graphics/IconPalette;->saturatedBackgroundColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    neg-int p2, p3

    .line 85
    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/view/BadgeRenderer;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
