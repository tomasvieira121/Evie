.class public final synthetic Lcom/evie/models/sidescreen/-$$Lambda$SideScreenRelatedContentModel$h2XXN9tzs_v9svRiv7HfjvFfqEQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/evie/models/sidescreen/-$$Lambda$SideScreenRelatedContentModel$h2XXN9tzs_v9svRiv7HfjvFfqEQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/evie/models/sidescreen/-$$Lambda$SideScreenRelatedContentModel$h2XXN9tzs_v9svRiv7HfjvFfqEQ;

    invoke-direct {v0}, Lcom/evie/models/sidescreen/-$$Lambda$SideScreenRelatedContentModel$h2XXN9tzs_v9svRiv7HfjvFfqEQ;-><init>()V

    sput-object v0, Lcom/evie/models/sidescreen/-$$Lambda$SideScreenRelatedContentModel$h2XXN9tzs_v9svRiv7HfjvFfqEQ;->INSTANCE:Lcom/evie/models/sidescreen/-$$Lambda$SideScreenRelatedContentModel$h2XXN9tzs_v9svRiv7HfjvFfqEQ;

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

    check-cast p1, Lcom/evie/common/data/Lce;

    invoke-static {p1}, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->lambda$registerFirebaseToken$2(Lcom/evie/common/data/Lce;)Z

    move-result p1

    return p1
.end method
