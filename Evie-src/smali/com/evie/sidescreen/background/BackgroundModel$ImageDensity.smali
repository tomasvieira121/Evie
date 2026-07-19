.class final enum Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;
.super Ljava/lang/Enum;
.source "BackgroundModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/background/BackgroundModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ImageDensity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

.field public static final enum HDPI:Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

.field public static final enum MDPI:Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

.field public static final enum XHDPI:Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

.field public static final enum XXHDPI:Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;


# instance fields
.field private density:Ljava/lang/String;

.field private dpi:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 10
    new-instance v0, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    const-string v1, "MDPI"

    const-string v2, "mdpi"

    const/4 v3, 0x0

    const/16 v4, 0xa0

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->MDPI:Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    .line 11
    new-instance v0, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    const-string v1, "HDPI"

    const-string v2, "hdpi"

    const/4 v4, 0x1

    const/16 v5, 0xf0

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->HDPI:Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    .line 12
    new-instance v0, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    const-string v1, "XHDPI"

    const-string v2, "xhdpi"

    const/4 v5, 0x2

    const/16 v6, 0x140

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->XHDPI:Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    .line 13
    new-instance v0, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    const-string v1, "XXHDPI"

    const-string v2, "xxhdpi"

    const/4 v6, 0x3

    const/16 v7, 0x1e0

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->XXHDPI:Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    const/4 v0, 0x4

    .line 9
    new-array v0, v0, [Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    sget-object v1, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->MDPI:Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->HDPI:Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->XHDPI:Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    aput-object v1, v0, v5

    sget-object v1, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->XXHDPI:Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    aput-object v1, v0, v6

    sput-object v0, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->$VALUES:[Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->dpi:I

    .line 20
    iput-object p4, p0, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->density:Ljava/lang/String;

    return-void
.end method

.method public static findClosestImageDensity(I)Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;
    .locals 7

    .line 27
    invoke-static {}, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->values()[Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 28
    iget v6, v5, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->dpi:I

    sub-int/2addr v6, p0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v3, v6, :cond_0

    move-object v2, v5

    move v3, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;
    .locals 1

    .line 9
    const-class v0, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    return-object p0
.end method

.method public static values()[Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;
    .locals 1

    .line 9
    sget-object v0, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->$VALUES:[Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    invoke-virtual {v0}, [Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    return-object v0
.end method
