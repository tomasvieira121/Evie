.class public final enum Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;
.super Ljava/lang/Enum;
.source "DetailsComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/content/DetailsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

.field public static final enum center:Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

.field public static final enum left:Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

.field public static final enum right:Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 85
    new-instance v0, Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

    const-string v1, "left"

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;->left:Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

    .line 86
    new-instance v0, Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

    const-string v1, "center"

    const/4 v4, 0x1

    const/16 v5, 0x11

    invoke-direct {v0, v1, v4, v5}, Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;->center:Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

    .line 87
    new-instance v0, Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

    const-string v1, "right"

    const/4 v5, 0x2

    const/4 v6, 0x5

    invoke-direct {v0, v1, v5, v6}, Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;->right:Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

    .line 83
    new-array v0, v2, [Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

    sget-object v1, Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;->left:Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;->center:Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;->right:Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

    aput-object v1, v0, v5

    sput-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;->$VALUES:[Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;->value:I

    return-void
.end method

.method static synthetic access$700(Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;
    .locals 1

    .line 83
    const-class v0, Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

    return-object p0
.end method

.method public static values()[Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;
    .locals 1

    .line 83
    sget-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;->$VALUES:[Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

    invoke-virtual {v0}, [Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

    return-object v0
.end method
