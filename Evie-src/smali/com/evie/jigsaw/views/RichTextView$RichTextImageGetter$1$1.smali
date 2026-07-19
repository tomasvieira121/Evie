.class Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter$1$1;
.super Ljava/lang/Object;
.source "RichTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter$1;->onNewResultImpl(Lcom/facebook/datasource/DataSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter$1;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter$1;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter$1$1;->this$2:Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter$1$1;->this$2:Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter$1;

    iget-object v0, v0, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter$1;->this$1:Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;

    iget-object v0, v0, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    iget-object v1, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter$1$1;->this$2:Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter$1;

    iget-object v1, v1, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter$1;->this$1:Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;

    iget-object v1, v1, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    invoke-static {v1}, Lcom/evie/jigsaw/views/RichTextView;->access$300(Lcom/evie/jigsaw/views/RichTextView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/jigsaw/views/RichTextView;->setRichText(Ljava/lang/String;)V

    return-void
.end method
