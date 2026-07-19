.class public Lcom/evie/models/PromptStoreModel;
.super Ljava/lang/Object;
.source "PromptStoreModel.java"


# instance fields
.field private final mGson:Lcom/google/gson/Gson;

.field private mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mPublishSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/evie/models/PromptStoreModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 30
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/models/PromptStoreModel;->mPublishSubject:Lio/reactivex/subjects/PublishSubject;

    .line 34
    iput-object p1, p0, Lcom/evie/models/PromptStoreModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 35
    iput-object p2, p0, Lcom/evie/models/PromptStoreModel;->mGson:Lcom/google/gson/Gson;

    .line 36
    new-instance p1, Lcom/evie/models/-$$Lambda$PromptStoreModel$fKDDxgTUrPWZ-glHRFx08ltMFIQ;

    invoke-direct {p1, p0}, Lcom/evie/models/-$$Lambda$PromptStoreModel$fKDDxgTUrPWZ-glHRFx08ltMFIQ;-><init>(Lcom/evie/models/PromptStoreModel;)V

    iput-object p1, p0, Lcom/evie/models/PromptStoreModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 39
    iget-object p1, p0, Lcom/evie/models/PromptStoreModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/evie/models/PromptStoreModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method private getAnnouncement()Lcom/evie/models/announcement/data/Announcement;
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/evie/models/PromptStoreModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "prompt_announcement"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/evie/models/PromptStoreModel;->mGson:Lcom/google/gson/Gson;

    const-class v3, Lcom/evie/models/announcement/data/Announcement;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/models/announcement/data/Announcement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 67
    :catch_0
    iget-object v0, p0, Lcom/evie/models/PromptStoreModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prompt_announcement"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v2
.end method

.method public static synthetic lambda$new$0(Lcom/evie/models/PromptStoreModel;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 37
    iget-object p1, p0, Lcom/evie/models/PromptStoreModel;->mPublishSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private markAnnouncementNew(Lcom/evie/models/announcement/data/Announcement;Lcom/evie/models/announcement/data/Announcement;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/evie/models/announcement/data/Announcement;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/evie/models/announcement/data/Announcement;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 87
    invoke-direct {p0, p1}, Lcom/evie/models/PromptStoreModel;->setNewAnnouncementFlag(Z)V

    :cond_1
    return-void
.end method

.method private setBreakingNewsList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/models/breakingnews/data/BreakingNews;",
            ">;)V"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/evie/models/PromptStoreModel;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/evie/models/PromptStoreModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prompt_breaking_news"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setNewAnnouncementFlag(Z)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/evie/models/PromptStoreModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prompt_announcement_new"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public addNewBreakingNews(Lcom/evie/models/breakingnews/data/BreakingNews;)V
    .locals 5

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/evie/models/PromptStoreModel;->getBreakingNewsList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    const/4 v1, 0x0

    .line 98
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-gt v1, v4, :cond_0

    .line 99
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_0
    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 103
    invoke-direct {p0, v0}, Lcom/evie/models/PromptStoreModel;->setBreakingNewsList(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public getBreakingNewsList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evie/models/breakingnews/data/BreakingNews;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/evie/models/PromptStoreModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "prompt_breaking_news"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/evie/models/PromptStoreModel;->mGson:Lcom/google/gson/Gson;

    new-instance v2, Lcom/evie/models/PromptStoreModel$1;

    invoke-direct {v2, p0}, Lcom/evie/models/PromptStoreModel$1;-><init>(Lcom/evie/models/PromptStoreModel;)V

    .line 131
    invoke-virtual {v2}, Lcom/evie/models/PromptStoreModel$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 130
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 133
    :catch_0
    iget-object v0, p0, Lcom/evie/models/PromptStoreModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prompt_breaking_news"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 134
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 126
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNewAnnouncement()Lcom/evie/models/announcement/data/Announcement;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/evie/models/PromptStoreModel;->hasNewAnnouncement()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/evie/models/PromptStoreModel;->getAnnouncement()Lcom/evie/models/announcement/data/Announcement;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasNewAnnouncement()Z
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/evie/models/PromptStoreModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "prompt_announcement_new"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public markAnnouncementOld()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0}, Lcom/evie/models/PromptStoreModel;->setNewAnnouncementFlag(Z)V

    return-void
.end method

.method public observePromptStoreChanges()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/evie/models/PromptStoreModel;->mPublishSubject:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method

.method public removeAllBreakingNews()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/evie/models/PromptStoreModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prompt_breaking_news"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public removeSingleBreakingNews(Lcom/evie/models/breakingnews/data/BreakingNews;)V
    .locals 2

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/evie/models/PromptStoreModel;->getBreakingNewsList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 109
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 110
    invoke-direct {p0, v0}, Lcom/evie/models/PromptStoreModel;->setBreakingNewsList(Ljava/util/List;)V

    return-void
.end method

.method public setAnnouncement(Lcom/evie/models/announcement/data/Announcement;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 49
    invoke-direct {p0}, Lcom/evie/models/PromptStoreModel;->getAnnouncement()Lcom/evie/models/announcement/data/Announcement;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/evie/models/PromptStoreModel;->hasNewAnnouncement()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/evie/models/announcement/data/Announcement;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/evie/models/PromptStoreModel;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/evie/models/PromptStoreModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "prompt_announcement"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/evie/models/PromptStoreModel;->markAnnouncementNew(Lcom/evie/models/announcement/data/Announcement;Lcom/evie/models/announcement/data/Announcement;)V

    :cond_2
    return-void
.end method
