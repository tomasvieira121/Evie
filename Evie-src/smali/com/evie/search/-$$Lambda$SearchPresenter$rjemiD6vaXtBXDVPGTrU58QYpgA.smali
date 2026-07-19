.class public final synthetic Lcom/evie/search/-$$Lambda$SearchPresenter$rjemiD6vaXtBXDVPGTrU58QYpgA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/evie/search/-$$Lambda$SearchPresenter$rjemiD6vaXtBXDVPGTrU58QYpgA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/evie/search/-$$Lambda$SearchPresenter$rjemiD6vaXtBXDVPGTrU58QYpgA;

    invoke-direct {v0}, Lcom/evie/search/-$$Lambda$SearchPresenter$rjemiD6vaXtBXDVPGTrU58QYpgA;-><init>()V

    sput-object v0, Lcom/evie/search/-$$Lambda$SearchPresenter$rjemiD6vaXtBXDVPGTrU58QYpgA;->INSTANCE:Lcom/evie/search/-$$Lambda$SearchPresenter$rjemiD6vaXtBXDVPGTrU58QYpgA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/evie/search/SearchPresenter;->lambda$setupRecentObservable$7(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
