.class Lcom/evie/search/recyclerview/presenter/RecentItemPresenter$1;
.super Ljava/lang/Object;
.source "RecentItemPresenter.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->bind(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;


# direct methods
.method constructor <init>(Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter$1;->this$0:Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 79
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter$1;->this$0:Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;

    invoke-static {v0}, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->access$000(Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;)Lcom/evie/search/model/RecentItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evie/search/model/RecentItem;->setImageUrl(Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter$1;->this$0:Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;

    invoke-static {p1}, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->access$100(Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;)Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter$1;->this$0:Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;

    invoke-static {p1}, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->access$100(Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;)Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter$1;->this$0:Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;

    invoke-static {v0}, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->access$000(Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;)Lcom/evie/search/model/RecentItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->bindItem(Lcom/evie/search/model/RecentItem;)V

    :cond_0
    return-void
.end method
