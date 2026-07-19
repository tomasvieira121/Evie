.class public Lcom/evie/sidescreen/tiles/views/PercentageInsetView;
.super Landroid/view/View;
.source "PercentageInsetView.java"


# instance fields
.field private mInsetBottom:F

.field private mInsetBottomMaximum:I

.field private mInsetBottomMinimum:I

.field private mInsetLeft:F

.field private mInsetLeftMaximum:I

.field private mInsetLeftMinimum:I

.field private mInsetRight:F

.field private mInsetRightMaximum:I

.field private mInsetRightMinimum:I

.field private mInsetSource:Landroid/graphics/drawable/InsetDrawable;

.field private mInsetTop:F

.field private mInsetTopMaximum:I

.field private mInsetTopMinimum:I

.field private mSource:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    if-eqz p2, :cond_0

    .line 57
    sget-object v0, Lcom/evie/sidescreen/R$styleable;->PercentageInsetView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    :try_start_0
    sget p2, Lcom/evie/sidescreen/R$styleable;->PercentageInsetView_src:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mSource:Landroid/graphics/drawable/Drawable;

    .line 61
    sget p2, Lcom/evie/sidescreen/R$styleable;->PercentageInsetView_insetTopPercent:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetTop:F

    .line 62
    sget p2, Lcom/evie/sidescreen/R$styleable;->PercentageInsetView_insetTopMinimum:I

    const/high16 v1, -0x80000000

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetTopMinimum:I

    .line 63
    sget p2, Lcom/evie/sidescreen/R$styleable;->PercentageInsetView_insetTopMaximum:I

    const v2, 0x7fffffff

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetTopMaximum:I

    .line 64
    sget p2, Lcom/evie/sidescreen/R$styleable;->PercentageInsetView_insetBottomPercent:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetBottom:F

    .line 65
    sget p2, Lcom/evie/sidescreen/R$styleable;->PercentageInsetView_insetBottomMinimum:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetBottomMinimum:I

    .line 66
    sget p2, Lcom/evie/sidescreen/R$styleable;->PercentageInsetView_insetBottomMaximum:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetBottomMaximum:I

    .line 67
    sget p2, Lcom/evie/sidescreen/R$styleable;->PercentageInsetView_insetLeftPercent:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetLeft:F

    .line 68
    sget p2, Lcom/evie/sidescreen/R$styleable;->PercentageInsetView_insetLeftMinimum:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetLeftMinimum:I

    .line 69
    sget p2, Lcom/evie/sidescreen/R$styleable;->PercentageInsetView_insetLeftMaximum:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetLeftMaximum:I

    .line 70
    sget p2, Lcom/evie/sidescreen/R$styleable;->PercentageInsetView_insetRightPercent:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetRight:F

    .line 71
    sget p2, Lcom/evie/sidescreen/R$styleable;->PercentageInsetView_insetRightMinimum:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetRightMinimum:I

    .line 72
    sget p2, Lcom/evie/sidescreen/R$styleable;->PercentageInsetView_insetRightMaximum:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetRightMaximum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    throw p2

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 6

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 84
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mSource:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 85
    new-instance p3, Landroid/graphics/drawable/InsetDrawable;

    iget p4, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetLeftMinimum:I

    iget v0, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetLeftMaximum:I

    int-to-float p1, p1

    iget v2, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetLeft:F

    mul-float v2, v2, p1

    float-to-int v2, v2

    .line 87
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p4, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetTopMinimum:I

    iget v0, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetTopMaximum:I

    int-to-float p2, p2

    iget v3, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetTop:F

    mul-float v3, v3, p2

    float-to-int v3, v3

    .line 88
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget p4, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetRightMinimum:I

    iget v0, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetRightMaximum:I

    iget v4, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetRight:F

    mul-float p1, p1, v4

    float-to-int p1, p1

    .line 89
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget p1, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetBottomMinimum:I

    iget p4, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetBottomMaximum:I

    iget v0, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetBottom:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 90
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object p3, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetSource:Landroid/graphics/drawable/InsetDrawable;

    .line 92
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->mInsetSource:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/views/PercentageInsetView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
