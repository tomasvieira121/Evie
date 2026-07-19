.class Lcom/evie/search/SearchPresenter$2;
.super Ljava/lang/Object;
.source "SearchPresenter.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/search/SearchPresenter;->setupRecentObservable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/util/List<",
        "Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/search/SearchPresenter;


# direct methods
.method constructor <init>(Lcom/evie/search/SearchPresenter;)V
    .locals 0

    .line 835
    iput-object p1, p0, Lcom/evie/search/SearchPresenter$2;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 853
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 835
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/evie/search/SearchPresenter$2;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;",
            ">;)V"
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/evie/search/SearchPresenter$2;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v0, p1}, Lcom/evie/search/SearchPresenter;->access$1302(Lcom/evie/search/SearchPresenter;Ljava/util/List;)Ljava/util/List;

    .line 846
    iget-object v0, p0, Lcom/evie/search/SearchPresenter$2;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v0}, Lcom/evie/search/SearchPresenter;->access$100(Lcom/evie/search/SearchPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/evie/search/SearchPresenter$2;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v0}, Lcom/evie/search/SearchPresenter;->access$1100(Lcom/evie/search/SearchPresenter;)Lcom/evie/search/SearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evie/search/SearchAdapter;->setPresenters(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/evie/search/SearchPresenter$2;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v0, p1}, Lcom/evie/search/SearchPresenter;->access$1202(Lcom/evie/search/SearchPresenter;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
