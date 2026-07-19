.class public final enum Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;
.super Ljava/lang/Enum;
.source "VideoProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

.field public static final enum LIVE:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

.field public static final enum STATIC:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

.field public static final enum UNKNOWN:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 134
    new-instance v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;->UNKNOWN:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    new-instance v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    const-string v1, "LIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;->LIVE:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    new-instance v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    const-string v1, "STATIC"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;->STATIC:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    sget-object v1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;->UNKNOWN:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;->LIVE:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;->STATIC:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;->$VALUES:[Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;
    .locals 1

    .line 134
    const-class v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    return-object p0
.end method

.method public static values()[Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;
    .locals 1

    .line 134
    sget-object v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;->$VALUES:[Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    invoke-virtual {v0}, [Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    return-object v0
.end method
