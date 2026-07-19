.class Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter$1;
.super Lcom/facebook/datasource/BaseDataSubscriber;
.source "RichTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/datasource/BaseDataSubscriber<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter$1;->this$1:Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;

    invoke-direct {p0}, Lcom/facebook/datasource/BaseDataSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailureImpl(Lcom/facebook/datasource/DataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onNewResultImpl(Lcom/facebook/datasource/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 238
    iget-object p1, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter$1;->this$1:Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;

    iget-object p1, p1, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    invoke-static {p1}, Lcom/evie/jigsaw/views/RichTextView;->access$400(Lcom/evie/jigsaw/views/RichTextView;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter$1$1;

    invoke-direct {v0, p0}, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter$1$1;-><init>(Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
