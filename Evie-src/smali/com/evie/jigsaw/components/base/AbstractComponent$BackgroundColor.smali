.class public final enum Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;
.super Ljava/lang/Enum;
.source "AbstractComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/base/AbstractComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackgroundColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

.field public static final enum dark:Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

.field public static final enum gray:Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

.field public static final enum light:Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;


# instance fields
.field private final resource:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 248
    new-instance v0, Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

    const-string v1, "light"

    sget v2, Lcom/evie/jigsaw/R$color;->white:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;->light:Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

    .line 249
    new-instance v0, Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

    const-string v1, "gray"

    sget v2, Lcom/evie/jigsaw/R$color;->evie_bluish_gray:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;->gray:Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

    .line 250
    new-instance v0, Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

    const-string v1, "dark"

    sget v2, Lcom/evie/jigsaw/R$color;->black:I

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;->dark:Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

    const/4 v0, 0x3

    .line 246
    new-array v0, v0, [Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

    sget-object v1, Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;->light:Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

    aput-object v1, v0, v3

    sget-object v1, Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;->gray:Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;->dark:Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

    aput-object v1, v0, v5

    sput-object v0, Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;->$VALUES:[Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 246
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;->resource:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;
    .locals 1

    .line 246
    const-class v0, Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

    return-object p0
.end method

.method public static values()[Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;
    .locals 1

    .line 246
    sget-object v0, Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;->$VALUES:[Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

    invoke-virtual {v0}, [Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

    return-object v0
.end method


# virtual methods
.method public getColor(Landroid/content/Context;)I
    .locals 1

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;->resource:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method
