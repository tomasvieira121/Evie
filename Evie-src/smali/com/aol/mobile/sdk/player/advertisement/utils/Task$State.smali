.class final enum Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;
.super Ljava/lang/Enum;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/advertisement/utils/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;

.field public static final enum DONE:Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;

.field public static final enum WORKING:Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 78
    new-instance v0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;

    const-string v1, "WORKING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;->WORKING:Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;

    new-instance v0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;

    const-string v1, "DONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;->DONE:Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;

    sget-object v1, Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;->WORKING:Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;->DONE:Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;->$VALUES:[Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;
    .locals 1

    .line 78
    const-class v0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;

    return-object p0
.end method

.method public static values()[Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;
    .locals 1

    .line 78
    sget-object v0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;->$VALUES:[Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;

    invoke-virtual {v0}, [Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;

    return-object v0
.end method
