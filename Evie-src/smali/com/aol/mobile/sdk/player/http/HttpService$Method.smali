.class final enum Lcom/aol/mobile/sdk/player/http/HttpService$Method;
.super Ljava/lang/Enum;
.source "HttpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/http/HttpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aol/mobile/sdk/player/http/HttpService$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aol/mobile/sdk/player/http/HttpService$Method;

.field public static final enum GET:Lcom/aol/mobile/sdk/player/http/HttpService$Method;

.field public static final enum POST:Lcom/aol/mobile/sdk/player/http/HttpService$Method;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 239
    new-instance v0, Lcom/aol/mobile/sdk/player/http/HttpService$Method;

    const-string v1, "GET"

    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/aol/mobile/sdk/player/http/HttpService$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aol/mobile/sdk/player/http/HttpService$Method;->GET:Lcom/aol/mobile/sdk/player/http/HttpService$Method;

    .line 240
    new-instance v0, Lcom/aol/mobile/sdk/player/http/HttpService$Method;

    const-string v1, "POST"

    const-string v2, "POST"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/aol/mobile/sdk/player/http/HttpService$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aol/mobile/sdk/player/http/HttpService$Method;->POST:Lcom/aol/mobile/sdk/player/http/HttpService$Method;

    const/4 v0, 0x2

    .line 238
    new-array v0, v0, [Lcom/aol/mobile/sdk/player/http/HttpService$Method;

    sget-object v1, Lcom/aol/mobile/sdk/player/http/HttpService$Method;->GET:Lcom/aol/mobile/sdk/player/http/HttpService$Method;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aol/mobile/sdk/player/http/HttpService$Method;->POST:Lcom/aol/mobile/sdk/player/http/HttpService$Method;

    aput-object v1, v0, v4

    sput-object v0, Lcom/aol/mobile/sdk/player/http/HttpService$Method;->$VALUES:[Lcom/aol/mobile/sdk/player/http/HttpService$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 245
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 246
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/http/HttpService$Method;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/http/HttpService$Method;
    .locals 1

    .line 238
    const-class v0, Lcom/aol/mobile/sdk/player/http/HttpService$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aol/mobile/sdk/player/http/HttpService$Method;

    return-object p0
.end method

.method public static values()[Lcom/aol/mobile/sdk/player/http/HttpService$Method;
    .locals 1

    .line 238
    sget-object v0, Lcom/aol/mobile/sdk/player/http/HttpService$Method;->$VALUES:[Lcom/aol/mobile/sdk/player/http/HttpService$Method;

    invoke-virtual {v0}, [Lcom/aol/mobile/sdk/player/http/HttpService$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aol/mobile/sdk/player/http/HttpService$Method;

    return-object v0
.end method
