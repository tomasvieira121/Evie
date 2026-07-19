.class public final synthetic Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$XaRnOwX-mvpiK6Ub0Hr3BfLinn0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$XaRnOwX-mvpiK6Ub0Hr3BfLinn0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$XaRnOwX-mvpiK6Ub0Hr3BfLinn0;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$XaRnOwX-mvpiK6Ub0Hr3BfLinn0;-><init>()V

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$XaRnOwX-mvpiK6Ub0Hr3BfLinn0;->INSTANCE:Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$XaRnOwX-mvpiK6Ub0Hr3BfLinn0;

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

    new-instance v0, Landroid/util/Pair;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
