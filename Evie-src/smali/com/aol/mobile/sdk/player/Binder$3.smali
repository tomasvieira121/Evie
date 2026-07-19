.class synthetic Lcom/aol/mobile/sdk/player/Binder$3;
.super Ljava/lang/Object;
.source "Binder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/Binder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$aol$mobile$sdk$controls$AdControls$Button:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 128
    invoke-static {}, Lcom/aol/mobile/sdk/controls/AdControls$Button;->values()[Lcom/aol/mobile/sdk/controls/AdControls$Button;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/aol/mobile/sdk/player/Binder$3;->$SwitchMap$com$aol$mobile$sdk$controls$AdControls$Button:[I

    :try_start_0
    sget-object v0, Lcom/aol/mobile/sdk/player/Binder$3;->$SwitchMap$com$aol$mobile$sdk$controls$AdControls$Button:[I

    sget-object v1, Lcom/aol/mobile/sdk/controls/AdControls$Button;->PLAY:Lcom/aol/mobile/sdk/controls/AdControls$Button;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/controls/AdControls$Button;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/aol/mobile/sdk/player/Binder$3;->$SwitchMap$com$aol$mobile$sdk$controls$AdControls$Button:[I

    sget-object v1, Lcom/aol/mobile/sdk/controls/AdControls$Button;->PAUSE:Lcom/aol/mobile/sdk/controls/AdControls$Button;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/controls/AdControls$Button;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
