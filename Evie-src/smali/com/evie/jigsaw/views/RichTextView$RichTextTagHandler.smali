.class Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;
.super Ljava/lang/Object;
.source "RichTextView.java"

# interfaces
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/views/RichTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RichTextTagHandler"
.end annotation


# instance fields
.field private marks:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/evie/jigsaw/views/RichTextView;


# direct methods
.method private constructor <init>(Lcom/evie/jigsaw/views/RichTextView;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;->marks:Ljava/util/Stack;

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/jigsaw/views/RichTextView;Lcom/evie/jigsaw/views/RichTextView$1;)V
    .locals 0

    .line 314
    invoke-direct {p0, p1}, Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;-><init>(Lcom/evie/jigsaw/views/RichTextView;)V

    return-void
.end method

.method private close(Landroid/text/Editable;)V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 392
    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method private close(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 4

    .line 396
    iget-object v0, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 397
    invoke-interface {p1, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 398
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-interface {p1, p2, v1, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 399
    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 5

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    .line 326
    iget-object p1, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;->marks:Ljava/util/Stack;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 327
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p2

    const/16 v0, 0x11

    invoke-interface {p3, p1, p4, p2, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    .line 330
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x57195dd5

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v0, :cond_4

    const v0, -0x3d363934

    if-eq p1, v0, :cond_3

    const v0, 0x17dcb

    if-eq p1, v0, :cond_2

    const v0, 0x197c3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "img"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string p1, "box"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const-string p1, "underline"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    goto :goto_1

    :cond_4
    const-string p1, "nounderline"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 348
    iget-object p1, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;->marks:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    const-string p1, "-"

    .line 351
    invoke-virtual {p2, p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 353
    array-length p2, p1

    if-ne p2, v2, :cond_a

    .line 354
    aget-object p2, p1, p4

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 344
    :pswitch_0
    new-instance p1, Lcom/evie/jigsaw/views/RichTextView$UnderlineSpan;

    iget-object p2, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    invoke-direct {p1, p2, p4}, Lcom/evie/jigsaw/views/RichTextView$UnderlineSpan;-><init>(Lcom/evie/jigsaw/views/RichTextView;Z)V

    invoke-direct {p0, p3, p1}, Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;->close(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 340
    :pswitch_1
    new-instance p1, Lcom/evie/jigsaw/views/RichTextView$UnderlineSpan;

    iget-object p2, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    invoke-direct {p1, p2, v3}, Lcom/evie/jigsaw/views/RichTextView$UnderlineSpan;-><init>(Lcom/evie/jigsaw/views/RichTextView;Z)V

    invoke-direct {p0, p3, p1}, Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;->close(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 332
    :pswitch_2
    new-instance p1, Lcom/evie/jigsaw/views/RichTextView$BoxedTextSpan;

    iget-object p2, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    invoke-direct {p1, p2}, Lcom/evie/jigsaw/views/RichTextView$BoxedTextSpan;-><init>(Lcom/evie/jigsaw/views/RichTextView;)V

    invoke-direct {p0, p3, p1}, Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;->close(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_4

    :goto_2
    const/16 v4, 0xc45

    if-eq v0, v4, :cond_8

    const/16 v4, 0xcc1

    if-eq v0, v4, :cond_7

    const v4, 0x18b2b

    if-eq v0, v4, :cond_6

    goto :goto_3

    :cond_6
    const-string v0, "fbg"

    .line 354
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 v1, 0x2

    goto :goto_3

    :cond_7
    const-string v0, "fg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    const-string v0, "bg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 v1, 0x0

    :cond_9
    :goto_3
    packed-switch v1, :pswitch_data_1

    .line 378
    invoke-direct {p0, p3}, Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;->close(Landroid/text/Editable;)V

    goto/16 :goto_4

    .line 368
    :pswitch_3
    aget-object p1, p1, v3

    const-string p2, "-"

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 369
    new-instance p2, Lcom/evie/jigsaw/views/RichTextView$RoundedBackgroundColorSpan;

    iget-object v0, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p4, p1, p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 370
    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 371
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p2, v0, p4, p1}, Lcom/evie/jigsaw/views/RichTextView$RoundedBackgroundColorSpan;-><init>(Lcom/evie/jigsaw/views/RichTextView;II)V

    .line 369
    invoke-direct {p0, p3, p2}, Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;->close(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_4

    .line 363
    :pswitch_4
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v3

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-direct {p0, p3, p2}, Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;->close(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_4

    .line 358
    :pswitch_5
    new-instance p2, Lcom/evie/jigsaw/views/RichTextView$RoundedBackgroundColorSpan;

    iget-object p4, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p2, p4, p1}, Lcom/evie/jigsaw/views/RichTextView$RoundedBackgroundColorSpan;-><init>(Lcom/evie/jigsaw/views/RichTextView;I)V

    invoke-direct {p0, p3, p2}, Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;->close(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_4

    .line 384
    :cond_a
    invoke-direct {p0, p3}, Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;->close(Landroid/text/Editable;)V

    :goto_4
    :pswitch_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
