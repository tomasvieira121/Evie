.class synthetic Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$5;
.super Ljava/lang/Object;
.source "OathPlayerObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$aol$mobile$sdk$player$model$ErrorState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 117
    invoke-static {}, Lcom/aol/mobile/sdk/player/model/ErrorState;->values()[Lcom/aol/mobile/sdk/player/model/ErrorState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$5;->$SwitchMap$com$aol$mobile$sdk$player$model$ErrorState:[I

    :try_start_0
    sget-object v0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$5;->$SwitchMap$com$aol$mobile$sdk$player$model$ErrorState:[I

    sget-object v1, Lcom/aol/mobile/sdk/player/model/ErrorState;->CONNECTION_ERROR:Lcom/aol/mobile/sdk/player/model/ErrorState;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/model/ErrorState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$5;->$SwitchMap$com$aol$mobile$sdk$player$model$ErrorState:[I

    sget-object v1, Lcom/aol/mobile/sdk/player/model/ErrorState;->CONTENT_ERROR:Lcom/aol/mobile/sdk/player/model/ErrorState;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/model/ErrorState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
