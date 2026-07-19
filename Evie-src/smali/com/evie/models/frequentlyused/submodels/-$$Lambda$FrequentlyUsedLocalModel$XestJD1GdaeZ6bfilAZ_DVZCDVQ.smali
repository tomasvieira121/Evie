.class public final synthetic Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedLocalModel$XestJD1GdaeZ6bfilAZ_DVZCDVQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedLocalModel$XestJD1GdaeZ6bfilAZ_DVZCDVQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedLocalModel$XestJD1GdaeZ6bfilAZ_DVZCDVQ;

    invoke-direct {v0}, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedLocalModel$XestJD1GdaeZ6bfilAZ_DVZCDVQ;-><init>()V

    sput-object v0, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedLocalModel$XestJD1GdaeZ6bfilAZ_DVZCDVQ;->INSTANCE:Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedLocalModel$XestJD1GdaeZ6bfilAZ_DVZCDVQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/core/util/Pair;

    check-cast p2, Landroidx/core/util/Pair;

    invoke-static {p1, p2}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->lambda$calculateRankings$3(Landroidx/core/util/Pair;Landroidx/core/util/Pair;)I

    move-result p1

    return p1
.end method
