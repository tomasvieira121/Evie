.class Lcom/evie/jigsaw/views/RichTextView$RoundedBackgroundColorSpan;
.super Landroid/text/style/DynamicDrawableSpan;
.source "RichTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/views/RichTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoundedBackgroundColorSpan"
.end annotation


# instance fields
.field private final mBackgroundColor:I

.field private final mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mForegroundColor:I

.field final synthetic this$0:Lcom/evie/jigsaw/views/RichTextView;


# direct methods
.method public constructor <init>(Lcom/evie/jigsaw/views/RichTextView;I)V
    .locals 1

    const/high16 v0, -0x1000000

    .line 416
    invoke-direct {p0, p1, p2, v0}, Lcom/evie/jigsaw/views/RichTextView$RoundedBackgroundColorSpan;-><init>(Lcom/evie/jigsaw/views/RichTextView;II)V

    return-void
.end method

.method public constructor <init>(Lcom/evie/jigsaw/views/RichTextView;II)V
    .locals 1

    .line 419
    iput-object p1, p0, Lcom/evie/jigsaw/views/RichTextView$RoundedBackgroundColorSpan;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    .line 420
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;-><init>()V

    .line 413
    iget-object p1, p0, Lcom/evie/jigsaw/views/RichTextView$RoundedBackgroundColorSpan;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    invoke-virtual {p1}, Lcom/evie/jigsaw/views/RichTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/evie/jigsaw/R$drawable;->richtext_background:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/jigsaw/views/RichTextView$RoundedBackgroundColorSpan;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 421
    iput p2, p0, Lcom/evie/jigsaw/views/RichTextView$RoundedBackgroundColorSpan;->mForegroundColor:I

    .line 422
    iput p3, p0, Lcom/evie/jigsaw/views/RichTextView$RoundedBackgroundColorSpan;->mBackgroundColor:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 8

    move-object v0, p0

    move-object/from16 v7, p9

    .line 444
    iget-object v1, v0, Lcom/evie/jigsaw/views/RichTextView$RoundedBackgroundColorSpan;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Lcom/evie/jigsaw/views/RichTextView$RoundedBackgroundColorSpan;->mBackgroundColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 445
    invoke-super/range {p0 .. p9}, Landroid/text/style/DynamicDrawableSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    const/4 v1, 0x1

    .line 448
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 449
    iget v1, v0, Lcom/evie/jigsaw/views/RichTextView$RoundedBackgroundColorSpan;->mForegroundColor:I

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    move v1, p7

    int-to-float v6, v1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 450
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/evie/jigsaw/views/RichTextView$RoundedBackgroundColorSpan;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4

    .line 429
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    .line 432
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 433
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v1

    .line 436
    iget-object v1, p0, Lcom/evie/jigsaw/views/RichTextView$RoundedBackgroundColorSpan;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v0, v0

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 437
    invoke-super/range {p0 .. p5}, Landroid/text/style/DynamicDrawableSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    return p1
.end method
