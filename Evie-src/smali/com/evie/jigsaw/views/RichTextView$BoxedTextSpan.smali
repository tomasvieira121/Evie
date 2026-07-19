.class Lcom/evie/jigsaw/views/RichTextView$BoxedTextSpan;
.super Landroid/text/style/DynamicDrawableSpan;
.source "RichTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/views/RichTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoxedTextSpan"
.end annotation


# instance fields
.field private final mBoxDrawable:Landroid/graphics/drawable/Drawable;

.field private final mBoxStrokeWidth:F

.field private final mBoxTextColor:I

.field private mPadding:I

.field final synthetic this$0:Lcom/evie/jigsaw/views/RichTextView;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/views/RichTextView;)V
    .locals 1

    .line 481
    iput-object p1, p0, Lcom/evie/jigsaw/views/RichTextView$BoxedTextSpan;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    const/4 p1, 0x1

    .line 482
    invoke-direct {p0, p1}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 475
    iget-object p1, p0, Lcom/evie/jigsaw/views/RichTextView$BoxedTextSpan;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    invoke-virtual {p1}, Lcom/evie/jigsaw/views/RichTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/evie/jigsaw/R$dimen;->richtext_box_stroke_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/evie/jigsaw/views/RichTextView$BoxedTextSpan;->mBoxStrokeWidth:F

    .line 477
    iget-object p1, p0, Lcom/evie/jigsaw/views/RichTextView$BoxedTextSpan;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    invoke-virtual {p1}, Lcom/evie/jigsaw/views/RichTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/evie/jigsaw/R$color;->evie_black:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/evie/jigsaw/views/RichTextView$BoxedTextSpan;->mBoxTextColor:I

    .line 479
    iget-object p1, p0, Lcom/evie/jigsaw/views/RichTextView$BoxedTextSpan;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    invoke-virtual {p1}, Lcom/evie/jigsaw/views/RichTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/evie/jigsaw/R$drawable;->richtext_box:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/jigsaw/views/RichTextView$BoxedTextSpan;->mBoxDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 11

    move-object v10, p0

    .line 523
    iget v0, v10, Lcom/evie/jigsaw/views/RichTextView$BoxedTextSpan;->mPadding:I

    int-to-float v1, v0

    sub-float v5, p5, v1

    add-int v8, p8, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p9

    invoke-super/range {v0 .. v9}, Landroid/text/style/DynamicDrawableSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 526
    iget v0, v10, Lcom/evie/jigsaw/views/RichTextView$BoxedTextSpan;->mBoxTextColor:I

    move-object/from16 v1, p9

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v0, p7

    int-to-float v7, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p9

    .line 527
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/evie/jigsaw/views/RichTextView$BoxedTextSpan;->mBoxDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4

    .line 499
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    const-string v1, " "

    .line 502
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v1, v1, v2

    .line 505
    iget v2, p0, Lcom/evie/jigsaw/views/RichTextView$BoxedTextSpan;->mBoxStrokeWidth:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/evie/jigsaw/views/RichTextView$BoxedTextSpan;->mPadding:I

    .line 508
    iget v1, p0, Lcom/evie/jigsaw/views/RichTextView$BoxedTextSpan;->mPadding:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 511
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 512
    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    iget v2, p0, Lcom/evie/jigsaw/views/RichTextView$BoxedTextSpan;->mPadding:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 515
    iget-object v2, p0, Lcom/evie/jigsaw/views/RichTextView$BoxedTextSpan;->mBoxDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 516
    invoke-super/range {p0 .. p5}, Landroid/text/style/DynamicDrawableSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    return p1
.end method
