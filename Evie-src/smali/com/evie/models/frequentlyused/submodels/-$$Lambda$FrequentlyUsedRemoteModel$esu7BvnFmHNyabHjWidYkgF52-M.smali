.class public final synthetic Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedRemoteModel$esu7BvnFmHNyabHjWidYkgF52-M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedRemoteModel$esu7BvnFmHNyabHjWidYkgF52-M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedRemoteModel$esu7BvnFmHNyabHjWidYkgF52-M;

    invoke-direct {v0}, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedRemoteModel$esu7BvnFmHNyabHjWidYkgF52-M;-><init>()V

    sput-object v0, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedRemoteModel$esu7BvnFmHNyabHjWidYkgF52-M;->INSTANCE:Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedRemoteModel$esu7BvnFmHNyabHjWidYkgF52-M;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedRemoteModel;->lambda$refresh$0(Ljava/lang/Throwable;)Lcom/evie/models/frequentlyused/data/FrequentlyUsedResponse;

    move-result-object p1

    return-object p1
.end method
