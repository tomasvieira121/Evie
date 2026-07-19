.class public final enum Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;
.super Ljava/lang/Enum;
.source "Properties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/model/properties/Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

.field public static final enum Ad:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

.field public static final enum Content:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 93
    new-instance v0, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    const-string v1, "Content"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Content:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    new-instance v0, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    const-string v1, "Ad"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Ad:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    sget-object v1, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Content:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Ad:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->$VALUES:[Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;
    .locals 1

    .line 93
    const-class v0, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    return-object p0
.end method

.method public static values()[Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;
    .locals 1

    .line 93
    sget-object v0, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->$VALUES:[Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    invoke-virtual {v0}, [Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    return-object v0
.end method
