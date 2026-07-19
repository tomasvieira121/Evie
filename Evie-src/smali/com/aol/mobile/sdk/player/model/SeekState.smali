.class public final enum Lcom/aol/mobile/sdk/player/model/SeekState;
.super Ljava/lang/Enum;
.source "SeekState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aol/mobile/sdk/player/model/SeekState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aol/mobile/sdk/player/model/SeekState;

.field public static final enum NONE:Lcom/aol/mobile/sdk/player/model/SeekState;

.field public static final enum SEEKING:Lcom/aol/mobile/sdk/player/model/SeekState;

.field public static final enum SEEKING_WITH_RESUME:Lcom/aol/mobile/sdk/player/model/SeekState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/aol/mobile/sdk/player/model/SeekState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aol/mobile/sdk/player/model/SeekState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/model/SeekState;->NONE:Lcom/aol/mobile/sdk/player/model/SeekState;

    .line 20
    new-instance v0, Lcom/aol/mobile/sdk/player/model/SeekState;

    const-string v1, "SEEKING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/aol/mobile/sdk/player/model/SeekState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/model/SeekState;->SEEKING:Lcom/aol/mobile/sdk/player/model/SeekState;

    .line 25
    new-instance v0, Lcom/aol/mobile/sdk/player/model/SeekState;

    const-string v1, "SEEKING_WITH_RESUME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/aol/mobile/sdk/player/model/SeekState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/model/SeekState;->SEEKING_WITH_RESUME:Lcom/aol/mobile/sdk/player/model/SeekState;

    const/4 v0, 0x3

    .line 11
    new-array v0, v0, [Lcom/aol/mobile/sdk/player/model/SeekState;

    sget-object v1, Lcom/aol/mobile/sdk/player/model/SeekState;->NONE:Lcom/aol/mobile/sdk/player/model/SeekState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aol/mobile/sdk/player/model/SeekState;->SEEKING:Lcom/aol/mobile/sdk/player/model/SeekState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aol/mobile/sdk/player/model/SeekState;->SEEKING_WITH_RESUME:Lcom/aol/mobile/sdk/player/model/SeekState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/aol/mobile/sdk/player/model/SeekState;->$VALUES:[Lcom/aol/mobile/sdk/player/model/SeekState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/model/SeekState;
    .locals 1

    .line 11
    const-class v0, Lcom/aol/mobile/sdk/player/model/SeekState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aol/mobile/sdk/player/model/SeekState;

    return-object p0
.end method

.method public static values()[Lcom/aol/mobile/sdk/player/model/SeekState;
    .locals 1

    .line 11
    sget-object v0, Lcom/aol/mobile/sdk/player/model/SeekState;->$VALUES:[Lcom/aol/mobile/sdk/player/model/SeekState;

    invoke-virtual {v0}, [Lcom/aol/mobile/sdk/player/model/SeekState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aol/mobile/sdk/player/model/SeekState;

    return-object v0
.end method
