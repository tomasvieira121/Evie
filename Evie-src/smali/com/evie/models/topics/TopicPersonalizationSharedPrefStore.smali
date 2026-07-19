.class public Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;
.super Ljava/lang/Object;
.source "TopicPersonalizationSharedPrefStore.java"

# interfaces
.implements Lcom/evie/models/topics/TopicPersonalizationStore;


# instance fields
.field private final BLOCKED_TOPICS:Ljava/lang/String;

.field private final FOLLOWED_TOPICS:Ljava/lang/String;

.field private final mGson:Lcom/google/gson/Gson;

.field private mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mPublishSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "followed_topics"

    .line 20
    iput-object v0, p0, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->FOLLOWED_TOPICS:Ljava/lang/String;

    const-string v0, "blocked_topics"

    .line 21
    iput-object v0, p0, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->BLOCKED_TOPICS:Ljava/lang/String;

    .line 23
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->mPublishSubject:Lio/reactivex/subjects/PublishSubject;

    .line 28
    iput-object p1, p0, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 29
    new-instance p1, Lcom/evie/models/topics/-$$Lambda$TopicPersonalizationSharedPrefStore$tQBB5GZNdPhhjhMphnXURDH-5t8;

    invoke-direct {p1, p0}, Lcom/evie/models/topics/-$$Lambda$TopicPersonalizationSharedPrefStore$tQBB5GZNdPhhjhMphnXURDH-5t8;-><init>(Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;)V

    iput-object p1, p0, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 35
    iget-object p1, p0, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 36
    iput-object p2, p0, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->mGson:Lcom/google/gson/Gson;

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "followed_topics"

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "blocked_topics"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->mPublishSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addTopicBlocks(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;)V"
        }
    .end annotation

    const-string v0, "blocked_topics"

    .line 113
    invoke-virtual {p0, v0, p1}, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->addTopicIdsForKey(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public addTopicFollows(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;)V"
        }
    .end annotation

    const-string v0, "followed_topics"

    .line 93
    invoke-virtual {p0, v0, p1}, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->addTopicIdsForKey(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method addTopicIdsForKey(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;)V"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->getTopicIdsForKey(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 65
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 66
    invoke-virtual {p0, p1, v0}, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->setTopicIdsForKey(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public getTopicBlocks()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;"
        }
    .end annotation

    const-string v0, "blocked_topics"

    .line 103
    invoke-virtual {p0, v0}, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->getTopicIdsForKey(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getTopicFollows()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;"
        }
    .end annotation

    const-string v0, "followed_topics"

    .line 83
    invoke-virtual {p0, v0}, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->getTopicIdsForKey(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getTopicIdsForKey(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->mGson:Lcom/google/gson/Gson;

    new-instance v2, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore$1;

    invoke-direct {v2, p0}, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore$1;-><init>(Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;)V

    .line 49
    invoke-virtual {v2}, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 48
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 51
    :catch_0
    iget-object v0, p0, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 44
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public listenToChanges()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->mPublishSubject:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method

.method public removeTopicBlocks(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;)V"
        }
    .end annotation

    const-string v0, "blocked_topics"

    .line 118
    invoke-virtual {p0, v0, p1}, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->removeTopicIdsForKey(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public removeTopicFollows(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;)V"
        }
    .end annotation

    const-string v0, "followed_topics"

    .line 98
    invoke-virtual {p0, v0, p1}, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->removeTopicIdsForKey(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method removeTopicIdsForKey(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;)V"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->getTopicIdsForKey(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 72
    invoke-interface {v0, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->setTopicIdsForKey(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public setTopicBlocks(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;)V"
        }
    .end annotation

    const-string v0, "blocked_topics"

    .line 108
    invoke-virtual {p0, v0, p1}, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->setTopicIdsForKey(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public setTopicFollows(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;)V"
        }
    .end annotation

    const-string v0, "followed_topics"

    .line 88
    invoke-virtual {p0, v0, p1}, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->setTopicIdsForKey(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method setTopicIdsForKey(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->mGson:Lcom/google/gson/Gson;

    const-class v1, Ljava/util/Set;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p2

    .line 59
    iget-object v0, p0, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
