.class public final synthetic Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$jLZC61SXYy7GWujl-NhzjNKZotQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$jLZC61SXYy7GWujl-NhzjNKZotQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$jLZC61SXYy7GWujl-NhzjNKZotQ;

    invoke-direct {v0}, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$jLZC61SXYy7GWujl-NhzjNKZotQ;-><init>()V

    sput-object v0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$jLZC61SXYy7GWujl-NhzjNKZotQ;->INSTANCE:Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$jLZC61SXYy7GWujl-NhzjNKZotQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroidx/core/util/Pair;

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-direct {v0, p1, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
