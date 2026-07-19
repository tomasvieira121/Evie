.class public final synthetic Lcom/evie/search/-$$Lambda$SearchPresenter$py1I5ycEvUsC4hnT4pLPF_T3znU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcom/evie/search/SearchPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/search/SearchPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/search/-$$Lambda$SearchPresenter$py1I5ycEvUsC4hnT4pLPF_T3znU;->f$0:Lcom/evie/search/SearchPresenter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/evie/search/-$$Lambda$SearchPresenter$py1I5ycEvUsC4hnT4pLPF_T3znU;->f$0:Lcom/evie/search/SearchPresenter;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/evie/search/SearchPresenter;->lambda$setupRecentObservable$5(Lcom/evie/search/SearchPresenter;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
