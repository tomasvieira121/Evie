.class public final enum Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;
.super Ljava/lang/Enum;
.source "ScrollingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;

.field public static final enum none:Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;

.field public static final enum regular:Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;

    const-string v1, "none"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;->none:Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;

    .line 9
    new-instance v0, Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;

    const-string v1, "regular"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;->regular:Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;

    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;

    sget-object v1, Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;->none:Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;->regular:Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;->$VALUES:[Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;
    .locals 1

    .line 7
    const-class v0, Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;

    return-object p0
.end method

.method public static values()[Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;
    .locals 1

    .line 7
    sget-object v0, Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;->$VALUES:[Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;

    invoke-virtual {v0}, [Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;

    return-object v0
.end method
