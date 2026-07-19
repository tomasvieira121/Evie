.class Lcom/evie/jigsaw/JigsawActivity$3;
.super Ljava/lang/Object;
.source "JigsawActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/JigsawActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/evie/jigsaw/components/base/AbstractComponent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/jigsaw/JigsawActivity;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/JigsawActivity;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/evie/jigsaw/JigsawActivity$3;->this$0:Lcom/evie/jigsaw/JigsawActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/evie/jigsaw/components/base/AbstractComponent;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 90
    iget-object p1, p0, Lcom/evie/jigsaw/JigsawActivity$3;->this$0:Lcom/evie/jigsaw/JigsawActivity;

    invoke-static {p1}, Lcom/evie/jigsaw/JigsawActivity;->access$100(Lcom/evie/jigsaw/JigsawActivity;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/jigsaw/JigsawActivity$3;->this$0:Lcom/evie/jigsaw/JigsawActivity;

    invoke-static {v0}, Lcom/evie/jigsaw/JigsawActivity;->access$400(Lcom/evie/jigsaw/JigsawActivity;)Lcom/evie/jigsaw/components/base/AbstractComponent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 91
    iget-object p1, p0, Lcom/evie/jigsaw/JigsawActivity$3;->this$0:Lcom/evie/jigsaw/JigsawActivity;

    invoke-static {p1}, Lcom/evie/jigsaw/JigsawActivity;->access$300(Lcom/evie/jigsaw/JigsawActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/jigsaw/JigsawActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 92
    invoke-static {}, Lcom/evie/jigsaw/JigsawActivity;->access$500()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to fetch link "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evie/jigsaw/JigsawActivity$3;->this$0:Lcom/evie/jigsaw/JigsawActivity;

    invoke-static {v1}, Lcom/evie/jigsaw/JigsawActivity;->access$600(Lcom/evie/jigsaw/JigsawActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/evie/jigsaw/components/base/AbstractComponent;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/evie/jigsaw/components/base/AbstractComponent;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/jigsaw/components/base/AbstractComponent;

    .line 78
    iget-object p2, p0, Lcom/evie/jigsaw/JigsawActivity$3;->this$0:Lcom/evie/jigsaw/JigsawActivity;

    iget-object p2, p2, Lcom/evie/jigsaw/JigsawActivity;->jigsaw:Lcom/evie/jigsaw/Jigsaw;

    invoke-virtual {p1, p2}, Lcom/evie/jigsaw/components/base/AbstractComponent;->initialize(Lcom/evie/jigsaw/Jigsaw;)V

    .line 79
    invoke-virtual {p1}, Lcom/evie/jigsaw/components/base/AbstractComponent;->recordOpenEvent()V

    .line 80
    iget-object p2, p0, Lcom/evie/jigsaw/JigsawActivity$3;->this$0:Lcom/evie/jigsaw/JigsawActivity;

    invoke-static {p2}, Lcom/evie/jigsaw/JigsawActivity;->access$100(Lcom/evie/jigsaw/JigsawActivity;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 81
    iget-object p1, p0, Lcom/evie/jigsaw/JigsawActivity$3;->this$0:Lcom/evie/jigsaw/JigsawActivity;

    invoke-static {p1}, Lcom/evie/jigsaw/JigsawActivity;->access$300(Lcom/evie/jigsaw/JigsawActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/evie/jigsaw/JigsawActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 84
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p2}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/evie/jigsaw/JigsawActivity$3;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
