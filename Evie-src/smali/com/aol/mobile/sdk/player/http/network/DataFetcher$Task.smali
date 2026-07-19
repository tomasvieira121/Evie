.class public Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Task;
.super Landroid/os/AsyncTask;
.source "DataFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/http/network/DataFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field private connectionHandler:Lcom/aol/mobile/sdk/player/http/network/ConnectionHandler;

.field private exception:Ljava/lang/Exception;

.field private mCallback:Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Listener;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Listener;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x3a98

    const/16 v1, 0x2710

    .line 42
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Task;-><init>(Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Listener;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Listener;Ljava/lang/String;II)V
    .locals 1

    .line 46
    new-instance v0, Lcom/aol/mobile/sdk/player/http/network/ConnectionHandler;

    invoke-direct {v0, p3, p4}, Lcom/aol/mobile/sdk/player/http/network/ConnectionHandler;-><init>(II)V

    invoke-direct {p0, p1, p2, v0}, Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Task;-><init>(Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Listener;Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/network/ConnectionHandler;)V

    return-void
.end method

.method constructor <init>(Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Listener;Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/network/ConnectionHandler;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Task;->exception:Ljava/lang/Exception;

    .line 50
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Task;->mCallback:Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Listener;

    .line 51
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Task;->connectionHandler:Lcom/aol/mobile/sdk/player/http/network/ConnectionHandler;

    .line 52
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Task;->userAgent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Task;->doInBackground([Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    .line 65
    :try_start_0
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Task;->getData(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 67
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Task;->exception:Ljava/lang/Exception;

    const/4 p1, 0x0

    return-object p1
.end method

.method getData(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Task;->connectionHandler:Lcom/aol/mobile/sdk/player/http/network/ConnectionHandler;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Task;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/aol/mobile/sdk/player/http/network/ConnectionHandler;->getResponseFrom(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Task;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Task;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Task;->mCallback:Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Listener;

    invoke-interface {v0, p1}, Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Listener;->success([B)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Task;->mCallback:Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Listener;

    invoke-interface {p1, v0}, Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Listener;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 58
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
