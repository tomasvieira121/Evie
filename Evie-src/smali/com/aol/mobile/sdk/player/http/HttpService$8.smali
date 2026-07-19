.class synthetic Lcom/aol/mobile/sdk/player/http/HttpService$8;
.super Ljava/lang/Object;
.source "HttpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/http/HttpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$aol$mobile$sdk$player$http$HttpService$Method:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 110
    invoke-static {}, Lcom/aol/mobile/sdk/player/http/HttpService$Method;->values()[Lcom/aol/mobile/sdk/player/http/HttpService$Method;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/aol/mobile/sdk/player/http/HttpService$8;->$SwitchMap$com$aol$mobile$sdk$player$http$HttpService$Method:[I

    :try_start_0
    sget-object v0, Lcom/aol/mobile/sdk/player/http/HttpService$8;->$SwitchMap$com$aol$mobile$sdk$player$http$HttpService$Method:[I

    sget-object v1, Lcom/aol/mobile/sdk/player/http/HttpService$Method;->POST:Lcom/aol/mobile/sdk/player/http/HttpService$Method;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/http/HttpService$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
