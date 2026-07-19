.class public final enum Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;
.super Ljava/lang/Enum;
.source "JsIssue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

.field public static final enum DEBUG_TEXT:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

.field public static final enum EXECUTION:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

.field public static final enum INIT:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

.field public static final enum PROPS_SERIALIZATION:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

.field public static final enum SOURCE_LOADING:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 29
    new-instance v0, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    const-string v1, "SOURCE_LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;->SOURCE_LOADING:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    new-instance v0, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    const-string v1, "INIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;->INIT:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    new-instance v0, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    const-string v1, "EXECUTION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;->EXECUTION:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    new-instance v0, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    const-string v1, "PROPS_SERIALIZATION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;->PROPS_SERIALIZATION:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    new-instance v0, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    const-string v1, "DEBUG_TEXT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;->DEBUG_TEXT:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    sget-object v1, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;->SOURCE_LOADING:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;->INIT:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;->EXECUTION:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;->PROPS_SERIALIZATION:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;->DEBUG_TEXT:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;->$VALUES:[Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;
    .locals 1

    .line 29
    const-class v0, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    return-object p0
.end method

.method public static values()[Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;
    .locals 1

    .line 29
    sget-object v0, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;->$VALUES:[Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    invoke-virtual {v0}, [Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    return-object v0
.end method
