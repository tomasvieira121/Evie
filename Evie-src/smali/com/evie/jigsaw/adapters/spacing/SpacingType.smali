.class public final enum Lcom/evie/jigsaw/adapters/spacing/SpacingType;
.super Ljava/lang/Enum;
.source "SpacingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evie/jigsaw/adapters/spacing/SpacingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evie/jigsaw/adapters/spacing/SpacingType;

.field public static final enum none:Lcom/evie/jigsaw/adapters/spacing/SpacingType;

.field public static final enum regular:Lcom/evie/jigsaw/adapters/spacing/SpacingType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/evie/jigsaw/adapters/spacing/SpacingType;

    const-string v1, "none"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/evie/jigsaw/adapters/spacing/SpacingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/jigsaw/adapters/spacing/SpacingType;->none:Lcom/evie/jigsaw/adapters/spacing/SpacingType;

    .line 5
    new-instance v0, Lcom/evie/jigsaw/adapters/spacing/SpacingType;

    const-string v1, "regular"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/evie/jigsaw/adapters/spacing/SpacingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/jigsaw/adapters/spacing/SpacingType;->regular:Lcom/evie/jigsaw/adapters/spacing/SpacingType;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lcom/evie/jigsaw/adapters/spacing/SpacingType;

    sget-object v1, Lcom/evie/jigsaw/adapters/spacing/SpacingType;->none:Lcom/evie/jigsaw/adapters/spacing/SpacingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/jigsaw/adapters/spacing/SpacingType;->regular:Lcom/evie/jigsaw/adapters/spacing/SpacingType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/evie/jigsaw/adapters/spacing/SpacingType;->$VALUES:[Lcom/evie/jigsaw/adapters/spacing/SpacingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evie/jigsaw/adapters/spacing/SpacingType;
    .locals 1

    .line 3
    const-class v0, Lcom/evie/jigsaw/adapters/spacing/SpacingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evie/jigsaw/adapters/spacing/SpacingType;

    return-object p0
.end method

.method public static values()[Lcom/evie/jigsaw/adapters/spacing/SpacingType;
    .locals 1

    .line 3
    sget-object v0, Lcom/evie/jigsaw/adapters/spacing/SpacingType;->$VALUES:[Lcom/evie/jigsaw/adapters/spacing/SpacingType;

    invoke-virtual {v0}, [Lcom/evie/jigsaw/adapters/spacing/SpacingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evie/jigsaw/adapters/spacing/SpacingType;

    return-object v0
.end method
