.class public final enum Lcom/evie/jigsaw/services/images/models/Rounding;
.super Ljava/lang/Enum;
.source "Rounding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evie/jigsaw/services/images/models/Rounding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evie/jigsaw/services/images/models/Rounding;

.field public static final enum circle:Lcom/evie/jigsaw/services/images/models/Rounding;

.field public static final enum clear_circle:Lcom/evie/jigsaw/services/images/models/Rounding;

.field public static final enum clear_square:Lcom/evie/jigsaw/services/images/models/Rounding;

.field public static final enum square:Lcom/evie/jigsaw/services/images/models/Rounding;


# instance fields
.field private final colorResource:I

.field private final shape:Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 13
    new-instance v0, Lcom/evie/jigsaw/services/images/models/Rounding;

    const-string v1, "circle"

    sget v2, Lcom/evie/jigsaw/R$color;->white:I

    sget-object v3, Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;->CIRCLE:Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/evie/jigsaw/services/images/models/Rounding;-><init>(Ljava/lang/String;IILcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;)V

    sput-object v0, Lcom/evie/jigsaw/services/images/models/Rounding;->circle:Lcom/evie/jigsaw/services/images/models/Rounding;

    .line 14
    new-instance v0, Lcom/evie/jigsaw/services/images/models/Rounding;

    const-string v1, "clear_circle"

    sget v2, Lcom/evie/jigsaw/R$color;->transparent:I

    sget-object v3, Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;->CIRCLE:Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/evie/jigsaw/services/images/models/Rounding;-><init>(Ljava/lang/String;IILcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;)V

    sput-object v0, Lcom/evie/jigsaw/services/images/models/Rounding;->clear_circle:Lcom/evie/jigsaw/services/images/models/Rounding;

    .line 15
    new-instance v0, Lcom/evie/jigsaw/services/images/models/Rounding;

    const-string v1, "square"

    sget v2, Lcom/evie/jigsaw/R$color;->white:I

    sget-object v3, Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;->SQUARE:Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/evie/jigsaw/services/images/models/Rounding;-><init>(Ljava/lang/String;IILcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;)V

    sput-object v0, Lcom/evie/jigsaw/services/images/models/Rounding;->square:Lcom/evie/jigsaw/services/images/models/Rounding;

    .line 16
    new-instance v0, Lcom/evie/jigsaw/services/images/models/Rounding;

    const-string v1, "clear_square"

    sget v2, Lcom/evie/jigsaw/R$color;->transparent:I

    sget-object v3, Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;->SQUARE:Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/evie/jigsaw/services/images/models/Rounding;-><init>(Ljava/lang/String;IILcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;)V

    sput-object v0, Lcom/evie/jigsaw/services/images/models/Rounding;->clear_square:Lcom/evie/jigsaw/services/images/models/Rounding;

    const/4 v0, 0x4

    .line 11
    new-array v0, v0, [Lcom/evie/jigsaw/services/images/models/Rounding;

    sget-object v1, Lcom/evie/jigsaw/services/images/models/Rounding;->circle:Lcom/evie/jigsaw/services/images/models/Rounding;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evie/jigsaw/services/images/models/Rounding;->clear_circle:Lcom/evie/jigsaw/services/images/models/Rounding;

    aput-object v1, v0, v5

    sget-object v1, Lcom/evie/jigsaw/services/images/models/Rounding;->square:Lcom/evie/jigsaw/services/images/models/Rounding;

    aput-object v1, v0, v6

    sget-object v1, Lcom/evie/jigsaw/services/images/models/Rounding;->clear_square:Lcom/evie/jigsaw/services/images/models/Rounding;

    aput-object v1, v0, v7

    sput-object v0, Lcom/evie/jigsaw/services/images/models/Rounding;->$VALUES:[Lcom/evie/jigsaw/services/images/models/Rounding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/evie/jigsaw/services/images/models/Rounding;->colorResource:I

    iput-object p4, p0, Lcom/evie/jigsaw/services/images/models/Rounding;->shape:Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evie/jigsaw/services/images/models/Rounding;
    .locals 1

    .line 11
    const-class v0, Lcom/evie/jigsaw/services/images/models/Rounding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evie/jigsaw/services/images/models/Rounding;

    return-object p0
.end method

.method public static values()[Lcom/evie/jigsaw/services/images/models/Rounding;
    .locals 1

    .line 11
    sget-object v0, Lcom/evie/jigsaw/services/images/models/Rounding;->$VALUES:[Lcom/evie/jigsaw/services/images/models/Rounding;

    invoke-virtual {v0}, [Lcom/evie/jigsaw/services/images/models/Rounding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evie/jigsaw/services/images/models/Rounding;

    return-object v0
.end method


# virtual methods
.method public getParams(Landroid/content/Context;I)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 3

    .line 27
    new-instance v0, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v0}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/evie/jigsaw/services/images/models/Rounding;->colorResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/RoundingParams;->setBorderColor(I)Lcom/facebook/drawee/generic/RoundingParams;

    int-to-float p2, p2

    const v1, 0x3d23d70a    # 0.04f

    mul-float p2, p2, v1

    .line 30
    invoke-virtual {v0, p2}, Lcom/facebook/drawee/generic/RoundingParams;->setBorderWidth(F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 32
    sget-object p2, Lcom/evie/jigsaw/services/images/models/Rounding$1;->$SwitchMap$com$evie$jigsaw$services$images$models$Rounding$RoundingShape:[I

    iget-object v1, p0, Lcom/evie/jigsaw/services/images/models/Rounding;->shape:Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

    invoke-virtual {v1}, Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;->ordinal()I

    move-result v1

    aget p2, p2, v1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 38
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/evie/jigsaw/R$dimen;->image_rounding_border_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 39
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/generic/RoundingParams;->setCornersRadius(F)Lcom/facebook/drawee/generic/RoundingParams;

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 34
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/generic/RoundingParams;->setRoundAsCircle(Z)Lcom/facebook/drawee/generic/RoundingParams;

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
