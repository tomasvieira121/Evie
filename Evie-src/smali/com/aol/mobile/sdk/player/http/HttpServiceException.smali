.class public final Lcom/aol/mobile/sdk/player/http/HttpServiceException;
.super Ljava/lang/Exception;
.source "HttpServiceException.java"


# instance fields
.field public final cause:Ljava/lang/Exception;

.field public final responseCode:I

.field public final responseJson:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/Exception;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 18
    iput p1, p0, Lcom/aol/mobile/sdk/player/http/HttpServiceException;->responseCode:I

    .line 19
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/http/HttpServiceException;->cause:Ljava/lang/Exception;

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/http/HttpServiceException;->responseJson:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 24
    iput p1, p0, Lcom/aol/mobile/sdk/player/http/HttpServiceException;->responseCode:I

    .line 25
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/http/HttpServiceException;->cause:Ljava/lang/Exception;

    .line 26
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/http/HttpServiceException;->responseJson:Ljava/lang/String;

    return-void
.end method
