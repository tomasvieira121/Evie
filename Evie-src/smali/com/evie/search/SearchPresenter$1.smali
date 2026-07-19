.class Lcom/evie/search/SearchPresenter$1;
.super Lio/reactivex/observers/DisposableObserver;
.source "SearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/search/SearchPresenter;->getSearchObserver(Ljava/lang/String;)Lio/reactivex/observers/DisposableObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "Lcom/evie/search/model/SearchPresenterData;",
        ">;"
    }
.end annotation


# instance fields
.field packages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field searchQuery:Ljava/lang/String;

.field state:Lcom/evie/search/SearchPresenter$SearchObserverState;

.field final synthetic this$0:Lcom/evie/search/SearchPresenter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/evie/search/SearchPresenter;Ljava/lang/String;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    iput-object p2, p0, Lcom/evie/search/SearchPresenter$1;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method

.method private updatePresenters()V
    .locals 2

    .line 718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 719
    iget-object v1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v1}, Lcom/evie/search/SearchPresenter;->access$200(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 720
    iget-object v1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v1}, Lcom/evie/search/SearchPresenter;->access$700(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 721
    iget-object v1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v1}, Lcom/evie/search/SearchPresenter;->access$900(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 722
    iget-object v1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v1}, Lcom/evie/search/SearchPresenter;->access$1000(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 723
    iget-object v1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v1}, Lcom/evie/search/SearchPresenter;->access$1100(Lcom/evie/search/SearchPresenter;)Lcom/evie/search/SearchAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/evie/search/SearchAdapter;->setPresenters(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 712
    iget-object v0, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v0}, Lcom/evie/search/SearchPresenter;->access$000(Lcom/evie/search/SearchPresenter;)Lcom/evie/search/SearchPresenter$SearchStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v0}, Lcom/evie/search/SearchPresenter;->access$000(Lcom/evie/search/SearchPresenter;)Lcom/evie/search/SearchPresenter$SearchStateChangeListener;

    move-result-object v0

    sget-object v1, Lcom/evie/search/SearchPresenter$SearchState;->IDLE:Lcom/evie/search/SearchPresenter$SearchState;

    invoke-interface {v0, v1}, Lcom/evie/search/SearchPresenter$SearchStateChangeListener;->onSearchStateChange(Lcom/evie/search/SearchPresenter$SearchState;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 707
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onNext(Lcom/evie/search/model/SearchPresenterData;)V
    .locals 9

    .line 586
    iget-object v0, p0, Lcom/evie/search/SearchPresenter$1;->searchQuery:Ljava/lang/String;

    iget-object v1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v1}, Lcom/evie/search/SearchPresenter;->access$100(Lcom/evie/search/SearchPresenter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 590
    :cond_0
    invoke-virtual {p1}, Lcom/evie/search/model/SearchPresenterData;->getData()Ljava/util/List;

    move-result-object v0

    .line 591
    sget-object v1, Lcom/evie/search/SearchPresenter$3;->$SwitchMap$com$evie$search$model$SearchPresenterData$DataType:[I

    invoke-virtual {p1}, Lcom/evie/search/model/SearchPresenterData;->getDataType()Lcom/evie/search/model/SearchPresenterData$DataType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evie/search/model/SearchPresenterData$DataType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 685
    :pswitch_0
    iget-object p1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {p1}, Lcom/evie/search/SearchPresenter;->access$200(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/evie/search/SearchPresenter$1;->state:Lcom/evie/search/SearchPresenter$SearchObserverState;

    invoke-virtual {v0}, Lcom/evie/search/SearchPresenter$SearchObserverState;->getValue()I

    move-result v0

    sget-object v1, Lcom/evie/search/SearchPresenter$SearchObserverState;->LOCAL_COMPLETE:Lcom/evie/search/SearchPresenter$SearchObserverState;

    invoke-virtual {v1}, Lcom/evie/search/SearchPresenter$SearchObserverState;->getValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 687
    iget-object v0, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v0}, Lcom/evie/search/SearchPresenter;->access$200(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 689
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 690
    iget-object p1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {p1}, Lcom/evie/search/SearchPresenter;->access$700(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 691
    :try_start_1
    iget-object p1, p0, Lcom/evie/search/SearchPresenter$1;->state:Lcom/evie/search/SearchPresenter$SearchObserverState;

    invoke-virtual {p1}, Lcom/evie/search/SearchPresenter$SearchObserverState;->getValue()I

    move-result p1

    sget-object v1, Lcom/evie/search/SearchPresenter$SearchObserverState;->REMOTE_COMPLETE:Lcom/evie/search/SearchPresenter$SearchObserverState;

    invoke-virtual {v1}, Lcom/evie/search/SearchPresenter$SearchObserverState;->getValue()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 692
    iget-object p1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {p1}, Lcom/evie/search/SearchPresenter;->access$700(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 693
    iget-object p1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {p1}, Lcom/evie/search/SearchPresenter;->access$900(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 695
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 696
    iget-object p1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {p1}, Lcom/evie/search/SearchPresenter;->access$1000(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 697
    :try_start_2
    iget-object v0, p0, Lcom/evie/search/SearchPresenter$1;->state:Lcom/evie/search/SearchPresenter$SearchObserverState;

    invoke-virtual {v0}, Lcom/evie/search/SearchPresenter$SearchObserverState;->getValue()I

    move-result v0

    sget-object v1, Lcom/evie/search/SearchPresenter$SearchObserverState;->WEB_COMPLETE:Lcom/evie/search/SearchPresenter$SearchObserverState;

    invoke-virtual {v1}, Lcom/evie/search/SearchPresenter$SearchObserverState;->getValue()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 698
    iget-object v0, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v0}, Lcom/evie/search/SearchPresenter;->access$1000(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 700
    :cond_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 701
    invoke-direct {p0}, Lcom/evie/search/SearchPresenter$1;->updatePresenters()V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    .line 700
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 695
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :catchall_2
    move-exception v0

    .line 689
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 671
    :pswitch_1
    iget-object p1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {p1}, Lcom/evie/search/SearchPresenter;->access$800(Lcom/evie/search/SearchPresenter;)Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {p1}, Lcom/evie/search/SearchPresenter;->access$900(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 672
    iget-object p1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {p1}, Lcom/evie/search/SearchPresenter;->access$900(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v2}, Lcom/evie/search/SearchPresenter;->access$800(Lcom/evie/search/SearchPresenter;)Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    iget-object p1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {p1}, Lcom/evie/search/SearchPresenter;->access$900(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object p1

    new-instance v2, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;

    iget-object v3, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v3}, Lcom/evie/search/SearchPresenter;->access$500(Lcom/evie/search/SearchPresenter;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;-><init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Z)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    :cond_4
    iget-object p1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {p1}, Lcom/evie/search/SearchPresenter;->access$1000(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 677
    :try_start_6
    iget-object v1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v1}, Lcom/evie/search/SearchPresenter;->access$1000(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 678
    iget-object v1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v1}, Lcom/evie/search/SearchPresenter;->access$1000(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 679
    invoke-direct {p0}, Lcom/evie/search/SearchPresenter$1;->updatePresenters()V

    .line 680
    sget-object v0, Lcom/evie/search/SearchPresenter$SearchObserverState;->WEB_COMPLETE:Lcom/evie/search/SearchPresenter$SearchObserverState;

    iput-object v0, p0, Lcom/evie/search/SearchPresenter$1;->state:Lcom/evie/search/SearchPresenter$SearchObserverState;

    .line 681
    monitor-exit p1

    return-void

    :catchall_3
    move-exception v0

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :pswitch_2
    const/4 p1, 0x0

    .line 622
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_b

    .line 623
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    .line 624
    instance-of v3, v2, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;

    if-nez v3, :cond_5

    goto/16 :goto_1

    .line 628
    :cond_5
    check-cast v2, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;

    invoke-virtual {v2}, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->getAppPackage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    goto/16 :goto_1

    .line 633
    :cond_6
    iget-object v3, p0, Lcom/evie/search/SearchPresenter$1;->packages:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v2, p1, -0x1

    .line 635
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move p1, v2

    goto/16 :goto_1

    .line 638
    :cond_7
    iget-object v3, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v3}, Lcom/evie/search/SearchPresenter;->access$300(Lcom/evie/search/SearchPresenter;)Lcom/evie/search/local/LocalAppsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/evie/search/local/LocalAppsManager;->getSearchItemByPackage(Ljava/lang/String;)Lcom/evie/search/model/LocalSearchItem;

    move-result-object v2

    .line 639
    iget-object v3, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v3, v2}, Lcom/evie/search/SearchPresenter;->access$400(Lcom/evie/search/SearchPresenter;Lcom/evie/search/model/LocalSearchItem;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v2, 0x0

    :cond_8
    if-eqz v2, :cond_a

    add-int/lit8 v3, p1, -0x1

    .line 644
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 645
    iget-object p1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {p1}, Lcom/evie/search/SearchPresenter;->access$200(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 646
    :try_start_7
    iget-object p1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {p1}, Lcom/evie/search/SearchPresenter;->access$200(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 647
    iget-object p1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {p1}, Lcom/evie/search/SearchPresenter;->access$200(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object p1

    new-instance v5, Lcom/evie/search/recyclerview/presenter/HeaderPresenter;

    iget-object v6, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v6}, Lcom/evie/search/SearchPresenter;->access$500(Lcom/evie/search/SearchPresenter;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v7}, Lcom/evie/search/SearchPresenter;->access$600(Lcom/evie/search/SearchPresenter;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/evie/search/recyclerview/presenter/HeaderPresenter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object p1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {p1}, Lcom/evie/search/SearchPresenter;->access$200(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object p1

    new-instance v5, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;

    iget-object v6, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    iget-object v7, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v7}, Lcom/evie/search/SearchPresenter;->access$500(Lcom/evie/search/SearchPresenter;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v6, v7, v1}, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;-><init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Z)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_9
    iget-object p1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {p1}, Lcom/evie/search/SearchPresenter;->access$200(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object p1

    iget-object v5, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v5}, Lcom/evie/search/SearchPresenter;->access$200(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    new-instance v6, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;

    iget-object v7, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    iget-object v8, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    .line 651
    invoke-static {v8}, Lcom/evie/search/SearchPresenter;->access$500(Lcom/evie/search/SearchPresenter;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v7, v8, v2}, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;-><init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Lcom/evie/search/model/LocalSearchItem;)V

    .line 650
    invoke-interface {p1, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 652
    monitor-exit v4

    move p1, v3

    goto :goto_1

    :catchall_4
    move-exception p1

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p1

    :cond_a
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 658
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_c

    .line 659
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 662
    :cond_c
    iget-object p1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {p1}, Lcom/evie/search/SearchPresenter;->access$700(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 663
    :try_start_8
    iget-object v1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v1}, Lcom/evie/search/SearchPresenter;->access$700(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 664
    iget-object v1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v1}, Lcom/evie/search/SearchPresenter;->access$700(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 665
    invoke-direct {p0}, Lcom/evie/search/SearchPresenter$1;->updatePresenters()V

    .line 666
    sget-object v0, Lcom/evie/search/SearchPresenter$SearchObserverState;->REMOTE_COMPLETE:Lcom/evie/search/SearchPresenter$SearchObserverState;

    iput-object v0, p0, Lcom/evie/search/SearchPresenter$1;->state:Lcom/evie/search/SearchPresenter$SearchObserverState;

    .line 667
    monitor-exit p1

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    .line 593
    :pswitch_3
    iget-object p1, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {p1}, Lcom/evie/search/SearchPresenter;->access$200(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 594
    :try_start_9
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v3}, Lcom/evie/search/SearchPresenter;->access$200(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 595
    iget-object v3, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v3}, Lcom/evie/search/SearchPresenter;->access$200(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 596
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_f

    .line 597
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    .line 599
    instance-of v4, v3, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;

    if-eqz v4, :cond_e

    .line 601
    move-object v4, v3

    check-cast v4, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;

    invoke-virtual {v4}, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->getAppPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 603
    iget-object v5, p0, Lcom/evie/search/SearchPresenter$1;->packages:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 607
    :cond_d
    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_e

    .line 609
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    .line 613
    :cond_e
    iget-object v4, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v4}, Lcom/evie/search/SearchPresenter;->access$200(Lcom/evie/search/SearchPresenter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 616
    :cond_f
    invoke-direct {p0}, Lcom/evie/search/SearchPresenter$1;->updatePresenters()V

    .line 617
    sget-object v0, Lcom/evie/search/SearchPresenter$SearchObserverState;->LOCAL_COMPLETE:Lcom/evie/search/SearchPresenter$SearchObserverState;

    iput-object v0, p0, Lcom/evie/search/SearchPresenter$1;->state:Lcom/evie/search/SearchPresenter$SearchObserverState;

    .line 618
    monitor-exit p1

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v0

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 568
    check-cast p1, Lcom/evie/search/model/SearchPresenterData;

    invoke-virtual {p0, p1}, Lcom/evie/search/SearchPresenter$1;->onNext(Lcom/evie/search/model/SearchPresenterData;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 575
    iget-object v0, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v0}, Lcom/evie/search/SearchPresenter;->access$000(Lcom/evie/search/SearchPresenter;)Lcom/evie/search/SearchPresenter$SearchStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/evie/search/SearchPresenter$1;->this$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v0}, Lcom/evie/search/SearchPresenter;->access$000(Lcom/evie/search/SearchPresenter;)Lcom/evie/search/SearchPresenter$SearchStateChangeListener;

    move-result-object v0

    sget-object v1, Lcom/evie/search/SearchPresenter$SearchState;->IN_PROGRESS:Lcom/evie/search/SearchPresenter$SearchState;

    invoke-interface {v0, v1}, Lcom/evie/search/SearchPresenter$SearchStateChangeListener;->onSearchStateChange(Lcom/evie/search/SearchPresenter$SearchState;)V

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/evie/search/SearchPresenter$1;->val$query:Ljava/lang/String;

    iput-object v0, p0, Lcom/evie/search/SearchPresenter$1;->searchQuery:Ljava/lang/String;

    .line 580
    sget-object v0, Lcom/evie/search/SearchPresenter$SearchObserverState;->STARTED:Lcom/evie/search/SearchPresenter$SearchObserverState;

    iput-object v0, p0, Lcom/evie/search/SearchPresenter$1;->state:Lcom/evie/search/SearchPresenter$SearchObserverState;

    .line 581
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/evie/search/SearchPresenter$1;->packages:Ljava/util/HashSet;

    return-void
.end method
