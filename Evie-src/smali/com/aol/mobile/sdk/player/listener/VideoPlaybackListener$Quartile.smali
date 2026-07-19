.class public final enum Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;
.super Ljava/lang/Enum;
.source "VideoPlaybackListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Quartile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

.field public static final enum FIRST:Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

.field public static final enum FORTH:Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

.field public static final enum SECOND:Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

.field public static final enum THIRD:Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

.field public static final enum UNKNOWN:Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 140
    new-instance v0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    const-string v1, "FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;->FIRST:Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    new-instance v0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    const-string v1, "SECOND"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;->SECOND:Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    new-instance v0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    const-string v1, "THIRD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;->THIRD:Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    new-instance v0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    const-string v1, "FORTH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;->FORTH:Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    new-instance v0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    const-string v1, "UNKNOWN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;->UNKNOWN:Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    const/4 v0, 0x5

    .line 139
    new-array v0, v0, [Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    sget-object v1, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;->FIRST:Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;->SECOND:Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;->THIRD:Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;->FORTH:Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;->UNKNOWN:Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    aput-object v1, v0, v6

    sput-object v0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;->$VALUES:[Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 158
    sget-object p0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;->UNKNOWN:Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    return-object p0

    .line 155
    :pswitch_0
    sget-object p0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;->FORTH:Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    return-object p0

    .line 152
    :pswitch_1
    sget-object p0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;->THIRD:Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    return-object p0

    .line 149
    :pswitch_2
    sget-object p0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;->SECOND:Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    return-object p0

    .line 146
    :pswitch_3
    sget-object p0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;->FIRST:Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;
    .locals 1

    .line 139
    const-class v0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    return-object p0
.end method

.method public static values()[Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;
    .locals 1

    .line 139
    sget-object v0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;->$VALUES:[Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    invoke-virtual {v0}, [Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    return-object v0
.end method
