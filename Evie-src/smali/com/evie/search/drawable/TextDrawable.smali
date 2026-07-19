.class public Lcom/evie/search/drawable/TextDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "TextDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/search/drawable/TextDrawable$IShapeBuilder;,
        Lcom/evie/search/drawable/TextDrawable$IBuilder;,
        Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;,
        Lcom/evie/search/drawable/TextDrawable$Builder;
    }
.end annotation


# instance fields
.field private final borderPaint:Landroid/graphics/Paint;

.field private final borderThickness:I

.field private final color:I

.field private final fontSize:I

.field private final height:I

.field private final radius:F

.field private final shape:Landroid/graphics/drawable/shapes/RectShape;

.field private final text:Ljava/lang/String;

.field private final textPaint:Landroid/graphics/Paint;

.field private final width:I


# direct methods
.method private constructor <init>(Lcom/evie/search/drawable/TextDrawable$Builder;)V
    .locals 3

    .line 37
    invoke-static {p1}, Lcom/evie/search/drawable/TextDrawable$Builder;->access$000(Lcom/evie/search/drawable/TextDrawable$Builder;)Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 40
    invoke-static {p1}, Lcom/evie/search/drawable/TextDrawable$Builder;->access$000(Lcom/evie/search/drawable/TextDrawable$Builder;)Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/drawable/TextDrawable;->shape:Landroid/graphics/drawable/shapes/RectShape;

    .line 41
    invoke-static {p1}, Lcom/evie/search/drawable/TextDrawable$Builder;->access$100(Lcom/evie/search/drawable/TextDrawable$Builder;)I

    move-result v0

    iput v0, p0, Lcom/evie/search/drawable/TextDrawable;->height:I

    .line 42
    invoke-static {p1}, Lcom/evie/search/drawable/TextDrawable$Builder;->access$200(Lcom/evie/search/drawable/TextDrawable$Builder;)I

    move-result v0

    iput v0, p0, Lcom/evie/search/drawable/TextDrawable;->width:I

    .line 43
    iget v0, p1, Lcom/evie/search/drawable/TextDrawable$Builder;->radius:F

    iput v0, p0, Lcom/evie/search/drawable/TextDrawable;->radius:F

    .line 46
    invoke-static {p1}, Lcom/evie/search/drawable/TextDrawable$Builder;->access$300(Lcom/evie/search/drawable/TextDrawable$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/evie/search/drawable/TextDrawable$Builder;->access$400(Lcom/evie/search/drawable/TextDrawable$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/evie/search/drawable/TextDrawable$Builder;->access$400(Lcom/evie/search/drawable/TextDrawable$Builder;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/evie/search/drawable/TextDrawable;->text:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lcom/evie/search/drawable/TextDrawable$Builder;->access$500(Lcom/evie/search/drawable/TextDrawable$Builder;)I

    move-result v0

    iput v0, p0, Lcom/evie/search/drawable/TextDrawable;->color:I

    .line 50
    invoke-static {p1}, Lcom/evie/search/drawable/TextDrawable$Builder;->access$600(Lcom/evie/search/drawable/TextDrawable$Builder;)I

    move-result v0

    iput v0, p0, Lcom/evie/search/drawable/TextDrawable;->fontSize:I

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/evie/search/drawable/TextDrawable;->textPaint:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/evie/search/drawable/TextDrawable;->textPaint:Landroid/graphics/Paint;

    iget v1, p1, Lcom/evie/search/drawable/TextDrawable$Builder;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/evie/search/drawable/TextDrawable;->textPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v0, p0, Lcom/evie/search/drawable/TextDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/evie/search/drawable/TextDrawable$Builder;->access$700(Lcom/evie/search/drawable/TextDrawable$Builder;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 55
    iget-object v0, p0, Lcom/evie/search/drawable/TextDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/evie/search/drawable/TextDrawable$Builder;->access$800(Lcom/evie/search/drawable/TextDrawable$Builder;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 56
    iget-object v0, p0, Lcom/evie/search/drawable/TextDrawable;->textPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 57
    iget-object v0, p0, Lcom/evie/search/drawable/TextDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/evie/search/drawable/TextDrawable$Builder;->access$900(Lcom/evie/search/drawable/TextDrawable$Builder;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    invoke-static {p1}, Lcom/evie/search/drawable/TextDrawable$Builder;->access$900(Lcom/evie/search/drawable/TextDrawable$Builder;)I

    move-result v0

    iput v0, p0, Lcom/evie/search/drawable/TextDrawable;->borderThickness:I

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/evie/search/drawable/TextDrawable;->borderPaint:Landroid/graphics/Paint;

    .line 63
    iget-object v0, p0, Lcom/evie/search/drawable/TextDrawable;->borderPaint:Landroid/graphics/Paint;

    iget p1, p1, Lcom/evie/search/drawable/TextDrawable$Builder;->textColor:I

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object p1, p0, Lcom/evie/search/drawable/TextDrawable;->borderPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object p1, p0, Lcom/evie/search/drawable/TextDrawable;->borderPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/evie/search/drawable/TextDrawable;->borderThickness:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    iget-object p1, p0, Lcom/evie/search/drawable/TextDrawable;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/evie/search/drawable/TextDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    .line 70
    iget v0, p0, Lcom/evie/search/drawable/TextDrawable;->color:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/search/drawable/TextDrawable$Builder;Lcom/evie/search/drawable/TextDrawable$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/evie/search/drawable/TextDrawable;-><init>(Lcom/evie/search/drawable/TextDrawable$Builder;)V

    return-void
.end method

.method public static builder()Lcom/evie/search/drawable/TextDrawable$IShapeBuilder;
    .locals 2

    .line 137
    new-instance v0, Lcom/evie/search/drawable/TextDrawable$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/evie/search/drawable/TextDrawable$Builder;-><init>(Lcom/evie/search/drawable/TextDrawable$1;)V

    return-object v0
.end method

.method private drawBorder(Landroid/graphics/Canvas;)V
    .locals 3

    .line 99
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/evie/search/drawable/TextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 100
    iget v1, p0, Lcom/evie/search/drawable/TextDrawable;->borderThickness:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 102
    iget-object v1, p0, Lcom/evie/search/drawable/TextDrawable;->shape:Landroid/graphics/drawable/shapes/RectShape;

    instance-of v2, v1, Landroid/graphics/drawable/shapes/OvalShape;

    if-eqz v2, :cond_0

    .line 103
    iget-object v1, p0, Lcom/evie/search/drawable/TextDrawable;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 104
    :cond_0
    instance-of v1, v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    if-eqz v1, :cond_1

    .line 105
    iget v1, p0, Lcom/evie/search/drawable/TextDrawable;->radius:F

    iget-object v2, p0, Lcom/evie/search/drawable/TextDrawable;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/evie/search/drawable/TextDrawable;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 75
    invoke-super {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 76
    invoke-virtual {p0}, Lcom/evie/search/drawable/TextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 80
    iget v1, p0, Lcom/evie/search/drawable/TextDrawable;->borderThickness:I

    if-lez v1, :cond_0

    .line 81
    invoke-direct {p0, p1}, Lcom/evie/search/drawable/TextDrawable;->drawBorder(Landroid/graphics/Canvas;)V

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 85
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 88
    iget v2, p0, Lcom/evie/search/drawable/TextDrawable;->width:I

    if-gez v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 89
    :cond_1
    iget v3, p0, Lcom/evie/search/drawable/TextDrawable;->height:I

    if-gez v3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 90
    :cond_2
    iget v0, p0, Lcom/evie/search/drawable/TextDrawable;->fontSize:I

    if-gez v0, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 91
    :cond_3
    iget-object v4, p0, Lcom/evie/search/drawable/TextDrawable;->textPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 92
    iget-object v0, p0, Lcom/evie/search/drawable/TextDrawable;->text:Ljava/lang/String;

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/evie/search/drawable/TextDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/evie/search/drawable/TextDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/evie/search/drawable/TextDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 94
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/evie/search/drawable/TextDrawable;->height:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/evie/search/drawable/TextDrawable;->width:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/evie/search/drawable/TextDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/evie/search/drawable/TextDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
