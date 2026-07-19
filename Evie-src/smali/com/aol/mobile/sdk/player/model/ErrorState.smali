.class public final enum Lcom/aol/mobile/sdk/player/model/ErrorState;
.super Ljava/lang/Enum;
.source "ErrorState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aol/mobile/sdk/player/model/ErrorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aol/mobile/sdk/player/model/ErrorState;

.field public static final enum CONNECTION_ERROR:Lcom/aol/mobile/sdk/player/model/ErrorState;

.field public static final enum CONTENT_ERROR:Lcom/aol/mobile/sdk/player/model/ErrorState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Lcom/aol/mobile/sdk/player/model/ErrorState;

    const-string v1, "CONNECTION_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aol/mobile/sdk/player/model/ErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/model/ErrorState;->CONNECTION_ERROR:Lcom/aol/mobile/sdk/player/model/ErrorState;

    .line 16
    new-instance v0, Lcom/aol/mobile/sdk/player/model/ErrorState;

    const-string v1, "CONTENT_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/aol/mobile/sdk/player/model/ErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/model/ErrorState;->CONTENT_ERROR:Lcom/aol/mobile/sdk/player/model/ErrorState;

    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Lcom/aol/mobile/sdk/player/model/ErrorState;

    sget-object v1, Lcom/aol/mobile/sdk/player/model/ErrorState;->CONNECTION_ERROR:Lcom/aol/mobile/sdk/player/model/ErrorState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aol/mobile/sdk/player/model/ErrorState;->CONTENT_ERROR:Lcom/aol/mobile/sdk/player/model/ErrorState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/aol/mobile/sdk/player/model/ErrorState;->$VALUES:[Lcom/aol/mobile/sdk/player/model/ErrorState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/model/ErrorState;
    .locals 1

    .line 8
    const-class v0, Lcom/aol/mobile/sdk/player/model/ErrorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aol/mobile/sdk/player/model/ErrorState;

    return-object p0
.end method

.method public static values()[Lcom/aol/mobile/sdk/player/model/ErrorState;
    .locals 1

    .line 8
    sget-object v0, Lcom/aol/mobile/sdk/player/model/ErrorState;->$VALUES:[Lcom/aol/mobile/sdk/player/model/ErrorState;

    invoke-virtual {v0}, [Lcom/aol/mobile/sdk/player/model/ErrorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aol/mobile/sdk/player/model/ErrorState;

    return-object v0
.end method
