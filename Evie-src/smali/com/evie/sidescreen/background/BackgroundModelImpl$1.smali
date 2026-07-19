.class synthetic Lcom/evie/sidescreen/background/BackgroundModelImpl$1;
.super Ljava/lang/Object;
.source "BackgroundModelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/background/BackgroundModelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$evie$sidescreen$background$BackgroundModel$ImageDensity:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 106
    invoke-static {}, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->values()[Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/evie/sidescreen/background/BackgroundModelImpl$1;->$SwitchMap$com$evie$sidescreen$background$BackgroundModel$ImageDensity:[I

    :try_start_0
    sget-object v0, Lcom/evie/sidescreen/background/BackgroundModelImpl$1;->$SwitchMap$com$evie$sidescreen$background$BackgroundModel$ImageDensity:[I

    sget-object v1, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->MDPI:Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    invoke-virtual {v1}, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/evie/sidescreen/background/BackgroundModelImpl$1;->$SwitchMap$com$evie$sidescreen$background$BackgroundModel$ImageDensity:[I

    sget-object v1, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->HDPI:Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    invoke-virtual {v1}, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/evie/sidescreen/background/BackgroundModelImpl$1;->$SwitchMap$com$evie$sidescreen$background$BackgroundModel$ImageDensity:[I

    sget-object v1, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->XHDPI:Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    invoke-virtual {v1}, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/evie/sidescreen/background/BackgroundModelImpl$1;->$SwitchMap$com$evie$sidescreen$background$BackgroundModel$ImageDensity:[I

    sget-object v1, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->XXHDPI:Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    invoke-virtual {v1}, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
