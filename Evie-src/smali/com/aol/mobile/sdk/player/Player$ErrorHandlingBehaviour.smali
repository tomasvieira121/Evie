.class public final enum Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;
.super Ljava/lang/Enum;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorHandlingBehaviour"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;

.field public static final enum NEXT_VIDEO_ON_CONTENT_ERROR:Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;

.field public static final enum NO_ACTION:Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 471
    new-instance v0, Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;

    const-string v1, "NO_ACTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;->NO_ACTION:Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;

    .line 478
    new-instance v0, Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;

    const-string v1, "NEXT_VIDEO_ON_CONTENT_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;->NEXT_VIDEO_ON_CONTENT_ERROR:Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;

    const/4 v0, 0x2

    .line 466
    new-array v0, v0, [Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;

    sget-object v1, Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;->NO_ACTION:Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;->NEXT_VIDEO_ON_CONTENT_ERROR:Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;

    aput-object v1, v0, v3

    sput-object v0, Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;->$VALUES:[Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 466
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;
    .locals 1

    .line 466
    const-class v0, Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;

    return-object p0
.end method

.method public static values()[Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;
    .locals 1

    .line 466
    sget-object v0, Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;->$VALUES:[Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;

    invoke-virtual {v0}, [Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;

    return-object v0
.end method
