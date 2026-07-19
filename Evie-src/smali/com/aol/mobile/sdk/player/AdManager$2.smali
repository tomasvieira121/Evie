.class synthetic Lcom/aol/mobile/sdk/player/AdManager$2;
.super Ljava/lang/Object;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$aol$mobile$sdk$player$AdManager$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 230
    invoke-static {}, Lcom/aol/mobile/sdk/player/AdManager$State;->values()[Lcom/aol/mobile/sdk/player/AdManager$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/aol/mobile/sdk/player/AdManager$2;->$SwitchMap$com$aol$mobile$sdk$player$AdManager$State:[I

    :try_start_0
    sget-object v0, Lcom/aol/mobile/sdk/player/AdManager$2;->$SwitchMap$com$aol$mobile$sdk$player$AdManager$State:[I

    sget-object v1, Lcom/aol/mobile/sdk/player/AdManager$State;->AD_PLAY_PREROLL:Lcom/aol/mobile/sdk/player/AdManager$State;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/AdManager$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/aol/mobile/sdk/player/AdManager$2;->$SwitchMap$com$aol$mobile$sdk$player$AdManager$State:[I

    sget-object v1, Lcom/aol/mobile/sdk/player/AdManager$State;->AD_PLAY_MIDROLL:Lcom/aol/mobile/sdk/player/AdManager$State;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/AdManager$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
