.class Lcom/evie/jigsaw/views/RichTextView$UnderlineSpan;
.super Landroid/text/style/CharacterStyle;
.source "RichTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/views/RichTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnderlineSpan"
.end annotation


# instance fields
.field private final mUnderline:Z

.field final synthetic this$0:Lcom/evie/jigsaw/views/RichTextView;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/views/RichTextView;Z)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/evie/jigsaw/views/RichTextView$UnderlineSpan;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 544
    iput-boolean p2, p0, Lcom/evie/jigsaw/views/RichTextView$UnderlineSpan;->mUnderline:Z

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 549
    iget-boolean v0, p0, Lcom/evie/jigsaw/views/RichTextView$UnderlineSpan;->mUnderline:Z

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
