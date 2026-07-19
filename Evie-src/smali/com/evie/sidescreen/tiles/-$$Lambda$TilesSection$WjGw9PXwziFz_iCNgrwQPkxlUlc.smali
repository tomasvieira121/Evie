.class public final synthetic Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$WjGw9PXwziFz_iCNgrwQPkxlUlc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$WjGw9PXwziFz_iCNgrwQPkxlUlc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$WjGw9PXwziFz_iCNgrwQPkxlUlc;

    invoke-direct {v0}, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$WjGw9PXwziFz_iCNgrwQPkxlUlc;-><init>()V

    sput-object v0, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$WjGw9PXwziFz_iCNgrwQPkxlUlc;->INSTANCE:Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$WjGw9PXwziFz_iCNgrwQPkxlUlc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/evie/sidescreen/tiles/TilesSection;->lambda$new$9(Ljava/util/List;)Z

    move-result p1

    return p1
.end method
