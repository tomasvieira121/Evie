.class synthetic Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter$1;
.super Ljava/lang/Object;
.source "AdDetectorsReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$aol$mobile$sdk$player$model$VrmState$GroupProcessingState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 301
    invoke-static {}, Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;->values()[Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter$1;->$SwitchMap$com$aol$mobile$sdk$player$model$VrmState$GroupProcessingState:[I

    :try_start_0
    sget-object v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter$1;->$SwitchMap$com$aol$mobile$sdk$player$model$VrmState$GroupProcessingState:[I

    sget-object v1, Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;->SOFT_TIMEOUT_REACHED:Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter$1;->$SwitchMap$com$aol$mobile$sdk$player$model$VrmState$GroupProcessingState:[I

    sget-object v1, Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;->HARD_TIMEOUT_REACHED:Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
