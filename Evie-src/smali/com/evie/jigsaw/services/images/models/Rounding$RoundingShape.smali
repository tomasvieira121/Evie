.class final enum Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;
.super Ljava/lang/Enum;
.source "Rounding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/services/images/models/Rounding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RoundingShape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

.field public static final enum CIRCLE:Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

.field public static final enum SQUARE:Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    new-instance v0, Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

    const-string v1, "CIRCLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;->CIRCLE:Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

    .line 48
    new-instance v0, Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

    const-string v1, "SQUARE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;->SQUARE:Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

    const/4 v0, 0x2

    .line 46
    new-array v0, v0, [Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

    sget-object v1, Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;->CIRCLE:Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;->SQUARE:Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

    aput-object v1, v0, v3

    sput-object v0, Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;->$VALUES:[Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;
    .locals 1

    .line 46
    const-class v0, Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

    return-object p0
.end method

.method public static values()[Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;
    .locals 1

    .line 46
    sget-object v0, Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;->$VALUES:[Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

    invoke-virtual {v0}, [Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evie/jigsaw/services/images/models/Rounding$RoundingShape;

    return-object v0
.end method
