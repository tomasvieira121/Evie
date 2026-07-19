.class public Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;
.super Ljava/lang/Object;
.source "AnnouncementSection.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# static fields
.field private static mSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mActivationModel:Lcom/evie/sidescreen/ActivationModel;

.field private mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

.field private mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field private mDisposed:Z

.field private mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

.field private mPromptStoreModel:Lcom/evie/models/PromptStoreModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-void
.end method

.method public constructor <init>(Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/models/PromptStoreModel;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mDisposed:Z

    .line 40
    iput-object p2, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    .line 41
    iput-object p1, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    .line 42
    iput-object p3, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mPromptStoreModel:Lcom/evie/models/PromptStoreModel;

    .line 43
    iput-object p4, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    .line 44
    sget-object p1, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    iget-object p2, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mPromptStoreModel:Lcom/evie/models/PromptStoreModel;

    invoke-virtual {p2}, Lcom/evie/models/PromptStoreModel;->getNewAnnouncement()Lcom/evie/models/announcement/data/Announcement;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->createPresenters(Lcom/evie/models/announcement/data/Announcement;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 46
    iget-object p1, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object p2, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mPromptStoreModel:Lcom/evie/models/PromptStoreModel;

    .line 47
    invoke-virtual {p2}, Lcom/evie/models/PromptStoreModel;->observePromptStoreChanges()Lio/reactivex/Observable;

    move-result-object p2

    sget-object p3, Lcom/evie/sidescreen/prompts/announcement/-$$Lambda$AnnouncementSection$VoETPYrWU9PYDh6cZsbyKOP3Mc8;->INSTANCE:Lcom/evie/sidescreen/prompts/announcement/-$$Lambda$AnnouncementSection$VoETPYrWU9PYDh6cZsbyKOP3Mc8;

    .line 48
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/evie/sidescreen/prompts/announcement/-$$Lambda$AnnouncementSection$CZeRkl2uyeQNw0g7Mtl7DvVK2kw;

    invoke-direct {p3, p0}, Lcom/evie/sidescreen/prompts/announcement/-$$Lambda$AnnouncementSection$CZeRkl2uyeQNw0g7Mtl7DvVK2kw;-><init>(Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;)V

    .line 49
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 52
    iget-object p1, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object p2, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    .line 53
    invoke-virtual {p2}, Lcom/evie/sidescreen/ActivationModel;->getActivationObservable()Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/evie/sidescreen/prompts/announcement/-$$Lambda$AnnouncementSection$2rG4qYms-dyktUNALCOeAHSoPpI;

    invoke-direct {p3, p0}, Lcom/evie/sidescreen/prompts/announcement/-$$Lambda$AnnouncementSection$2rG4qYms-dyktUNALCOeAHSoPpI;-><init>(Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;)V

    .line 54
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private createPresenters(Lcom/evie/models/announcement/data/Announcement;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/models/announcement/data/Announcement;",
            ")",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 76
    new-array v0, v0, [Lcom/evie/sidescreen/mvp/ItemPresenter;

    const/4 v1, 0x0

    new-instance v2, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;

    iget-object v3, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    iget-object v4, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mPromptStoreModel:Lcom/evie/models/PromptStoreModel;

    invoke-direct {v2, v3, v4, p1}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;-><init>(Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/models/PromptStoreModel;Lcom/evie/models/announcement/data/Announcement;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "prompt_announcement_new"

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$new$1(Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    sget-object p1, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mPromptStoreModel:Lcom/evie/models/PromptStoreModel;

    invoke-virtual {v0}, Lcom/evie/models/PromptStoreModel;->getNewAnnouncement()Lcom/evie/models/announcement/data/Announcement;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->createPresenters(Lcom/evie/models/announcement/data/Announcement;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    sget-object p1, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mPromptStoreModel:Lcom/evie/models/PromptStoreModel;

    invoke-virtual {v0}, Lcom/evie/models/PromptStoreModel;->getNewAnnouncement()Lcom/evie/models/announcement/data/Announcement;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->createPresenters(Lcom/evie/models/announcement/data/Announcement;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mDisposed:Z

    return-void
.end method

.method public getPresenters()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;>;"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method

.method public isDisposed()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->mDisposed:Z

    return v0
.end method
