.class Lcom/evie/jigsaw/components/content/DetailsComponent$3;
.super Ljava/lang/Object;
.source "DetailsComponent.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/jigsaw/components/content/DetailsComponent;->bindWithAttribution(Lcom/evie/jigsaw/views/RichTextView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/jigsaw/components/content/DetailsComponent;

.field final synthetic val$attribution:Ljava/lang/String;

.field final synthetic val$lines:I

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$view:Lcom/evie/jigsaw/views/RichTextView;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/components/content/DetailsComponent;Lcom/evie/jigsaw/views/RichTextView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$3;->this$0:Lcom/evie/jigsaw/components/content/DetailsComponent;

    iput-object p2, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$3;->val$view:Lcom/evie/jigsaw/views/RichTextView;

    iput-object p3, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$3;->val$text:Ljava/lang/String;

    iput-object p4, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$3;->val$attribution:Ljava/lang/String;

    iput p5, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$3;->val$lines:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .line 287
    iget-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$3;->val$view:Lcom/evie/jigsaw/views/RichTextView;

    invoke-virtual {v0}, Lcom/evie/jigsaw/views/RichTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 288
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 291
    iget-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$3;->this$0:Lcom/evie/jigsaw/components/content/DetailsComponent;

    iget-object v1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$3;->val$view:Lcom/evie/jigsaw/views/RichTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$3;->val$text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&nbsp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$3;->val$attribution:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/evie/jigsaw/components/content/DetailsComponent;->bind(Lcom/evie/jigsaw/views/RichTextView;Ljava/lang/String;I)Z

    .line 293
    iget-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$3;->val$view:Lcom/evie/jigsaw/views/RichTextView;

    invoke-virtual {v0}, Lcom/evie/jigsaw/views/RichTextView;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$3;->val$lines:I

    if-le v0, v1, :cond_3

    .line 296
    iget-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$3;->val$view:Lcom/evie/jigsaw/views/RichTextView;

    invoke-virtual {v0}, Lcom/evie/jigsaw/views/RichTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&#8230; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$3;->val$attribution:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [F

    .line 299
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move-result v3

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$3;->val$text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    iget-object v4, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$3;->val$view:Lcom/evie/jigsaw/views/RichTextView;

    invoke-virtual {v4}, Lcom/evie/jigsaw/views/RichTextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    iget v5, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$3;->val$lines:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    .line 307
    :cond_0
    :goto_0
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move-result v6

    if-ge v6, v3, :cond_1

    add-int/lit8 v5, v5, -0x1

    .line 310
    array-length v6, v2

    sub-int v7, v4, v5

    if-ge v6, v7, :cond_0

    .line 311
    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [F

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$3;->val$text:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v5

    .line 318
    :goto_1
    iget-object v2, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$3;->val$view:Lcom/evie/jigsaw/views/RichTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$3;->val$text:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&#8230; "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$3;->val$attribution:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/evie/jigsaw/views/RichTextView;->setRichText(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
