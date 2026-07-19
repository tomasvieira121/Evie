.class public final Lcom/aol/mobile/sdk/player/http/HttpService;
.super Ljava/lang/Object;
.source "HttpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/http/HttpService$Method;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x7530

.field private static final READ_TIMEOUT:I = 0x7530


# instance fields
.field private final uiHandler:Landroid/os/Handler;

.field public final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/aol/mobile/sdk/player/http/HttpService;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 40
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/http/HttpService;->uiHandler:Landroid/os/Handler;

    .line 41
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/http/HttpService;->userAgent:Ljava/lang/String;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Handler must connected to main thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/aol/mobile/sdk/player/http/HttpService;Ljava/lang/String;Ljava/lang/Object;Lcom/aol/mobile/sdk/player/http/DataSerializer;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p5}, Lcom/aol/mobile/sdk/player/http/HttpService;->asyncProcessRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/aol/mobile/sdk/player/http/DataSerializer;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V

    return-void
.end method

.method static synthetic access$100(Lcom/aol/mobile/sdk/player/http/HttpService;Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/aol/mobile/sdk/player/http/HttpService;->asyncProcessRequest(Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V

    return-void
.end method

.method private asyncProcessRequest(Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/aol/mobile/sdk/player/http/ResponseParser<",
            "TV;>;",
            "Lcom/aol/mobile/sdk/player/http/ResponseHandler<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 201
    :try_start_0
    sget-object v1, Lcom/aol/mobile/sdk/player/http/HttpService$Method;->GET:Lcom/aol/mobile/sdk/player/http/HttpService$Method;

    invoke-direct {p0, p1, v0, v1}, Lcom/aol/mobile/sdk/player/http/HttpService;->makeRequest(Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/HttpService$Method;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/aol/mobile/sdk/player/http/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    invoke-direct {p0, p2, p3, p1}, Lcom/aol/mobile/sdk/player/http/HttpService;->processResponse(Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 203
    iget-object p2, p0, Lcom/aol/mobile/sdk/player/http/HttpService;->uiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/aol/mobile/sdk/player/http/HttpService$5;

    invoke-direct {v0, p0, p3, p1}, Lcom/aol/mobile/sdk/player/http/HttpService$5;-><init>(Lcom/aol/mobile/sdk/player/http/HttpService;Lcom/aol/mobile/sdk/player/http/ResponseHandler;Lcom/aol/mobile/sdk/player/http/HttpServiceException;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private asyncProcessRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/aol/mobile/sdk/player/http/DataSerializer;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/aol/mobile/sdk/player/http/DataSerializer<",
            "TT;>;",
            "Lcom/aol/mobile/sdk/player/http/ResponseParser<",
            "TV;>;",
            "Lcom/aol/mobile/sdk/player/http/ResponseHandler<",
            "TV;>;)V"
        }
    .end annotation

    .line 168
    :try_start_0
    invoke-interface {p3, p2}, Lcom/aol/mobile/sdk/player/http/DataSerializer;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 181
    :try_start_1
    sget-object p3, Lcom/aol/mobile/sdk/player/http/HttpService$Method;->POST:Lcom/aol/mobile/sdk/player/http/HttpService$Method;

    invoke-direct {p0, p1, p2, p3}, Lcom/aol/mobile/sdk/player/http/HttpService;->makeRequest(Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/HttpService$Method;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lcom/aol/mobile/sdk/player/http/HttpServiceException; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    invoke-direct {p0, p4, p5, p1}, Lcom/aol/mobile/sdk/player/http/HttpService;->processResponse(Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 183
    iget-object p2, p0, Lcom/aol/mobile/sdk/player/http/HttpService;->uiHandler:Landroid/os/Handler;

    new-instance p3, Lcom/aol/mobile/sdk/player/http/HttpService$4;

    invoke-direct {p3, p0, p5, p1}, Lcom/aol/mobile/sdk/player/http/HttpService$4;-><init>(Lcom/aol/mobile/sdk/player/http/HttpService;Lcom/aol/mobile/sdk/player/http/ResponseHandler;Lcom/aol/mobile/sdk/player/http/HttpServiceException;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_1
    move-exception p1

    .line 170
    iget-object p2, p0, Lcom/aol/mobile/sdk/player/http/HttpService;->uiHandler:Landroid/os/Handler;

    new-instance p3, Lcom/aol/mobile/sdk/player/http/HttpService$3;

    invoke-direct {p3, p0, p5, p1}, Lcom/aol/mobile/sdk/player/http/HttpService$3;-><init>(Lcom/aol/mobile/sdk/player/http/HttpService;Lcom/aol/mobile/sdk/player/http/ResponseHandler;Ljava/lang/Exception;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private createConnection(Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/HttpService$Method;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aol/mobile/sdk/player/http/HttpServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 95
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 96
    iget-object v1, p2, Lcom/aol/mobile/sdk/player/http/HttpService$Method;->value:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/http/HttpService;->userAgent:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "User-Agent"

    .line 102
    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x7530

    .line 105
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 106
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 107
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 110
    sget-object v1, Lcom/aol/mobile/sdk/player/http/HttpService$8;->$SwitchMap$com$aol$mobile$sdk$player$http$HttpService$Method:[I

    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/http/HttpService$Method;->ordinal()I

    move-result p2

    aget p2, v1, p2

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p2, "charset"

    const-string v0, "utf-8"

    .line 113
    invoke-virtual {p1, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Content-Type"

    const-string v0, "application/json"

    .line 114
    invoke-virtual {p1, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 98
    new-instance p2, Lcom/aol/mobile/sdk/player/http/HttpServiceException;

    invoke-direct {p2, v0, p1}, Lcom/aol/mobile/sdk/player/http/HttpServiceException;-><init>(ILjava/lang/Exception;)V

    throw p2
.end method

.method private getBytesFrom(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aol/mobile/sdk/player/http/HttpServiceException;
        }
    .end annotation

    :try_start_0
    const-string v0, "utf-8"

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 58
    new-instance v0, Lcom/aol/mobile/sdk/player/http/HttpServiceException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/aol/mobile/sdk/player/http/HttpServiceException;-><init>(ILjava/lang/Exception;)V

    throw v0
.end method

.method private makeRequest(Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/HttpService$Method;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aol/mobile/sdk/player/http/HttpServiceException;
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p3}, Lcom/aol/mobile/sdk/player/http/HttpService;->createConnection(Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/HttpService$Method;)Ljava/net/HttpURLConnection;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 48
    invoke-direct {p0, p2}, Lcom/aol/mobile/sdk/player/http/HttpService;->getBytesFrom(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/aol/mobile/sdk/player/http/HttpService;->sendData([BLjava/net/HttpURLConnection;)V

    .line 49
    :cond_0
    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/player/http/HttpService;->receiveResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private processResponse(Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/aol/mobile/sdk/player/http/ResponseParser<",
            "TV;>;",
            "Lcom/aol/mobile/sdk/player/http/ResponseHandler<",
            "TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 219
    :try_start_0
    invoke-interface {p1, p3}, Lcom/aol/mobile/sdk/player/http/ResponseParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    iget-object p3, p0, Lcom/aol/mobile/sdk/player/http/HttpService;->uiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/aol/mobile/sdk/player/http/HttpService$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/aol/mobile/sdk/player/http/HttpService$7;-><init>(Lcom/aol/mobile/sdk/player/http/HttpService;Lcom/aol/mobile/sdk/player/http/ResponseHandler;Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception p1

    .line 221
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/http/HttpService;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/aol/mobile/sdk/player/http/HttpService$6;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/aol/mobile/sdk/player/http/HttpService$6;-><init>(Lcom/aol/mobile/sdk/player/http/HttpService;Lcom/aol/mobile/sdk/player/http/ResponseHandler;Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private receiveResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aol/mobile/sdk/player/http/HttpServiceException;
        }
    .end annotation

    .line 67
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 75
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 76
    invoke-static {v2}, Lcom/aol/mobile/sdk/player/utils/IOUtils;->readAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 81
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 78
    :try_start_3
    new-instance v1, Lcom/aol/mobile/sdk/player/http/HttpServiceException;

    invoke-direct {v1, v0, p1}, Lcom/aol/mobile/sdk/player/http/HttpServiceException;-><init>(ILjava/lang/Exception;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v2, :cond_1

    .line 81
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 83
    :catch_2
    :cond_1
    throw p1

    .line 86
    :cond_2
    new-instance p1, Lcom/aol/mobile/sdk/player/http/HttpServiceException;

    invoke-direct {p1, v0, v2}, Lcom/aol/mobile/sdk/player/http/HttpServiceException;-><init>(ILjava/lang/Exception;)V

    throw p1

    :catch_3
    move-exception p1

    .line 69
    new-instance v0, Lcom/aol/mobile/sdk/player/http/HttpServiceException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/aol/mobile/sdk/player/http/HttpServiceException;-><init>(ILjava/lang/Exception;)V

    throw v0
.end method

.method private sendData([BLjava/net/HttpURLConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aol/mobile/sdk/player/http/HttpServiceException;
        }
    .end annotation

    const-string v0, "Content-Length"

    .line 123
    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 127
    :try_start_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 128
    invoke-static {p1, v0}, Lcom/aol/mobile/sdk/player/utils/IOUtils;->writeData([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 133
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 130
    :try_start_2
    new-instance p2, Lcom/aol/mobile/sdk/player/http/HttpServiceException;

    const/4 v1, 0x0

    invoke-direct {p2, v1, p1}, Lcom/aol/mobile/sdk/player/http/HttpServiceException;-><init>(ILjava/lang/Exception;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 133
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 135
    :catch_2
    :cond_1
    throw p1
.end method


# virtual methods
.method public makeGet(Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/aol/mobile/sdk/player/http/ResponseParser<",
            "TV;>;",
            "Lcom/aol/mobile/sdk/player/http/ResponseHandler<",
            "TV;>;)V"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aol/mobile/sdk/player/http/HttpService$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/aol/mobile/sdk/player/http/HttpService$2;-><init>(Lcom/aol/mobile/sdk/player/http/HttpService;Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 158
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public makePost(Ljava/lang/String;Ljava/lang/Object;Lcom/aol/mobile/sdk/player/http/DataSerializer;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/aol/mobile/sdk/player/http/DataSerializer<",
            "TT;>;",
            "Lcom/aol/mobile/sdk/player/http/ResponseParser<",
            "TV;>;",
            "Lcom/aol/mobile/sdk/player/http/ResponseHandler<",
            "TV;>;)V"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/lang/Thread;

    new-instance v8, Lcom/aol/mobile/sdk/player/http/HttpService$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/aol/mobile/sdk/player/http/HttpService$1;-><init>(Lcom/aol/mobile/sdk/player/http/HttpService;Ljava/lang/String;Ljava/lang/Object;Lcom/aol/mobile/sdk/player/http/DataSerializer;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
