.class synthetic Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener$1;
.super Ljava/lang/Object;
.source "StreamStreamListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$aol$mobile$sdk$renderer$viewmodel$VideoVM$Callbacks$Error:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    invoke-static {}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;->values()[Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener$1;->$SwitchMap$com$aol$mobile$sdk$renderer$viewmodel$VideoVM$Callbacks$Error:[I

    :try_start_0
    sget-object v0, Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener$1;->$SwitchMap$com$aol$mobile$sdk$renderer$viewmodel$VideoVM$Callbacks$Error:[I

    sget-object v1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;->CONNECTION:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener$1;->$SwitchMap$com$aol$mobile$sdk$renderer$viewmodel$VideoVM$Callbacks$Error:[I

    sget-object v1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;->CONTENT:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
