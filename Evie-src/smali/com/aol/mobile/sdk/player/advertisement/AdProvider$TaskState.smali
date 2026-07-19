.class final enum Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;
.super Ljava/lang/Enum;
.source "AdProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/advertisement/AdProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TaskState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

.field public static final enum FAILURE:Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

.field public static final enum PROGRESS:Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

.field public static final enum SUCCESS:Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 166
    new-instance v0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

    const-string v1, "PROGRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;->PROGRESS:Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

    new-instance v0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

    const-string v1, "SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;->SUCCESS:Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

    new-instance v0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

    const-string v1, "FAILURE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;->FAILURE:Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

    sget-object v1, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;->PROGRESS:Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;->SUCCESS:Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;->FAILURE:Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;->$VALUES:[Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;
    .locals 1

    .line 166
    const-class v0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

    return-object p0
.end method

.method public static values()[Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;
    .locals 1

    .line 166
    sget-object v0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;->$VALUES:[Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

    invoke-virtual {v0}, [Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

    return-object v0
.end method
