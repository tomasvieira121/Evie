.class public Lcom/evie/sidescreen/personalize/TopicsListFragment;
.super Landroidx/fragment/app/Fragment;
.source "TopicsListFragment.java"

# interfaces
.implements Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;


# static fields
.field private static final EXTRA_EXTERNAL_CONTROL:Ljava/lang/String;

.field private static final EXTRA_SCREEN_INFO:Ljava/lang/String;

.field private static final EXTRA_TOPICS_OPTIONS:Ljava/lang/String;

.field private static final EXTRA_USE_SECTIONS:Ljava/lang/String;


# instance fields
.field private mActive:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field mTopicsListPresenter:Lcom/evie/sidescreen/personalize/TopicsListPresenter;

.field mTopicsListPresenterFactory:Lcom/evie/sidescreen/personalize/TopicsListPresenterFactory;

.field mTopicsListViewHolder:Lcom/evie/sidescreen/personalize/TopicsListViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/evie/sidescreen/personalize/TopicsListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".options"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->EXTRA_TOPICS_OPTIONS:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/evie/sidescreen/personalize/TopicsListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".external_control"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->EXTRA_EXTERNAL_CONTROL:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/evie/sidescreen/personalize/TopicsListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".useSections"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->EXTRA_USE_SECTIONS:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/evie/sidescreen/personalize/TopicsListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".screenInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->EXTRA_SCREEN_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 31
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->mActive:Lio/reactivex/subjects/BehaviorSubject;

    .line 38
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static createInstance(Lcom/evie/models/topics/data/ListTopicsRequestOptions;ZZLcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/personalize/TopicsListFragment;
    .locals 2

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    sget-object v1, Lcom/evie/sidescreen/personalize/TopicsListFragment;->EXTRA_TOPICS_OPTIONS:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->getOptions()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 52
    sget-object p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->EXTRA_EXTERNAL_CONTROL:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    sget-object p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->EXTRA_USE_SECTIONS:Ljava/lang/String;

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    sget-object p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->EXTRA_SCREEN_INFO:Ljava/lang/String;

    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 56
    new-instance p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;

    invoke-direct {p0}, Lcom/evie/sidescreen/personalize/TopicsListFragment;-><init>()V

    .line 57
    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/personalize/TopicsListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static synthetic lambda$onViewCreated$0(Lcom/evie/sidescreen/personalize/TopicsListFragment;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->mTopicsListPresenter:Lcom/evie/sidescreen/personalize/TopicsListPresenter;

    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->load()V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->mTopicsListPresenter:Lcom/evie/sidescreen/personalize/TopicsListPresenter;

    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->clear()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 65
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    .line 66
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 72
    sget p3, Lcom/evie/sidescreen/R$layout;->ss_topics_list_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 142
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/personalize/TopicsListFragment;->setActive(Z)V

    .line 144
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->mTopicsListPresenter:Lcom/evie/sidescreen/personalize/TopicsListPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->dispose()V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->mTopicsListPresenter:Lcom/evie/sidescreen/personalize/TopicsListPresenter;

    .line 146
    iput-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->mTopicsListViewHolder:Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    .line 147
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method public onFollowStateChanged(Lcom/evie/sidescreen/personalize/TopicItemPresenter;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 132
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 133
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->mActive:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->mTopicsListPresenter:Lcom/evie/sidescreen/personalize/TopicsListPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->load()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/4 p2, 0x0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/TopicsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/evie/sidescreen/personalize/TopicsListFragment;->EXTRA_TOPICS_OPTIONS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, p2

    .line 85
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/TopicsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/evie/sidescreen/personalize/TopicsListFragment;->EXTRA_SCREEN_INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/analytics/data/ScreenInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p2, v1

    .line 90
    :catch_1
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/TopicsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/evie/sidescreen/personalize/TopicsListFragment;->EXTRA_USE_SECTIONS:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 92
    iget-object v2, p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->mTopicsListPresenterFactory:Lcom/evie/sidescreen/personalize/TopicsListPresenterFactory;

    new-instance v3, Lcom/evie/models/topics/data/ListTopicsRequestOptions;

    invoke-direct {v3, v0}, Lcom/evie/models/topics/data/ListTopicsRequestOptions;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v3, v1, p2, p0}, Lcom/evie/sidescreen/personalize/TopicsListPresenterFactory;->create(Lcom/evie/models/topics/data/ListTopicsRequestOptions;ZLcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;)Lcom/evie/sidescreen/personalize/TopicsListPresenter;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->mTopicsListPresenter:Lcom/evie/sidescreen/personalize/TopicsListPresenter;

    .line 93
    new-instance p2, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    invoke-direct {p2, p1}, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->mTopicsListViewHolder:Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    .line 95
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->mTopicsListViewHolder:Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    iget-object p2, p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->mTopicsListPresenter:Lcom/evie/sidescreen/personalize/TopicsListPresenter;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->bindPresenter(Lcom/evie/sidescreen/mvp/ItemPresenter;)V

    .line 96
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->mTopicsListPresenter:Lcom/evie/sidescreen/personalize/TopicsListPresenter;

    iget-object p2, p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->mTopicsListViewHolder:Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->bindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V

    .line 99
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object p2, p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->mActive:Lio/reactivex/subjects/BehaviorSubject;

    .line 100
    invoke-virtual {p2}, Lio/reactivex/subjects/BehaviorSubject;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsListFragment$V4_dd1MskyPHGXNSO-xts0KMLC8;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsListFragment$V4_dd1MskyPHGXNSO-xts0KMLC8;-><init>(Lcom/evie/sidescreen/personalize/TopicsListFragment;)V

    .line 101
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p2

    .line 99
    invoke-virtual {p1, p2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 109
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/TopicsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object p2, Lcom/evie/sidescreen/personalize/TopicsListFragment;->EXTRA_EXTERNAL_CONTROL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 111
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/personalize/TopicsListFragment;->setActive(Z)V

    :cond_0
    return-void
.end method

.method public setActive(Z)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->mActive:Lio/reactivex/subjects/BehaviorSubject;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
