.class final Lcom/evie/jigsaw/components/content/DetailsComponent$DescentIgnorantDetailProcessor;
.super Ljava/lang/Object;
.source "DetailsComponent.java"

# interfaces
.implements Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/content/DetailsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DescentIgnorantDetailProcessor"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/jigsaw/components/content/DetailsComponent$1;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/evie/jigsaw/components/content/DetailsComponent$DescentIgnorantDetailProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/content/Context;Lcom/evie/jigsaw/views/RichTextView;Lcom/evie/jigsaw/components/content/DetailsComponent;)V
    .locals 0

    .line 161
    invoke-virtual {p2}, Lcom/evie/jigsaw/views/RichTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 162
    invoke-virtual {p2}, Lcom/evie/jigsaw/views/RichTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float p3, p3

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr p3, p1

    float-to-int p1, p3

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method
