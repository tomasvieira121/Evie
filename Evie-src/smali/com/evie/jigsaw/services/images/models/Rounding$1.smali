.class synthetic Lcom/evie/jigsaw/services/images/models/Rounding$1;
.super Ljava/lang/Object;
.source "Rounding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/services/images/models/Rounding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$evie$jigsaw$services$images$models$Rounding$RoundingShape:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    invoke-static {}, Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;->values()[Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/evie/jigsaw/services/images/models/Rounding$1;->$SwitchMap$com$evie$jigsaw$services$images$models$Rounding$RoundingShape:[I

    :try_start_0
    sget-object v0, Lcom/evie/jigsaw/services/images/models/Rounding$1;->$SwitchMap$com$evie$jigsaw$services$images$models$Rounding$RoundingShape:[I

    sget-object v1, Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;->CIRCLE:Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

    invoke-virtual {v1}, Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/evie/jigsaw/services/images/models/Rounding$1;->$SwitchMap$com$evie$jigsaw$services$images$models$Rounding$RoundingShape:[I

    sget-object v1, Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;->SQUARE:Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

    invoke-virtual {v1}, Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
