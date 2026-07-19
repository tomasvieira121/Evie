.class public Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;
.super Ljava/lang/Object;
.source "SideScreenSharedPreferencesModel.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil$UpgradableComponent;
.implements Lio/reactivex/disposables/Disposable;


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

    .line 27
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mPublishSubject:Lio/reactivex/subjects/PublishSubject;

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 34
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 35
    iput-object p2, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mGson:Lcom/google/gson/Gson;

    .line 36
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil;->processUpgrade(Landroid/content/SharedPreferences;Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil$UpgradableComponent;I)Z

    .line 37
    new-instance p1, Lcom/evie/sidescreen/-$$Lambda$SideScreenSharedPreferencesModel$s_aV9-Ea_o9UjOeMzHs724nx61Y;

    invoke-direct {p1, p0}, Lcom/evie/sidescreen/-$$Lambda$SideScreenSharedPreferencesModel$s_aV9-Ea_o9UjOeMzHs724nx61Y;-><init>(Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;)V

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 38
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method private containsId(Ljava/util/List;Lorg/schema/Id;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schema/evie/topics/Topic;",
            ">;",
            "Lorg/schema/Id;",
            ")Z"
        }
    .end annotation

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schema/evie/topics/Topic;

    .line 107
    invoke-virtual {v0}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/schema/Id;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$new$0(Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 37
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mPublishSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addToPersonalizeOnboardingList(Lorg/schema/evie/topics/Topic;)V
    .locals 2

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->getPersonalizeOnboardingList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 90
    invoke-direct {p0, v0, p1}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->containsId(Ljava/util/List;Lorg/schema/Id;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->setPersonalizeOnboardingList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public getDataWarningCardDismissed()Z
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "dwcd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFirebaseCloudMessagingRegistrationToken()Ljava/lang/String;
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fcmrt"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHasFinishedPersonalizeOnboarding()Z
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "personalize_onboarding_finished"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHasOpenedPersonalize()Z
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "has_opened_personalize"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPersonalizeOnboardingList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schema/evie/topics/Topic;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "personalize_onboarding_saved_topics"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mGson:Lcom/google/gson/Gson;

    new-instance v2, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel$1;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel$1;-><init>(Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;)V

    .line 79
    invoke-virtual {v2}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 78
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 81
    :catch_0
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "personalize_onboarding_saved_topics"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 74
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistAutoplayEnabled()Z
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "playlist_autoplay"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getWasOnboardedWithFreeBee()Ljava/lang/Boolean;
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "wowf"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "wowf"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDisposed()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public observeSharedPreferenceChanges()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mPublishSubject:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method

.method public onUpgrade(II)V
    .locals 0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->getHasOpenedPersonalize()Z

    move-result p1

    .line 45
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->setHasFinishedPersonalizeOnboarding(Z)V

    :cond_0
    return-void
.end method

.method public removeFromPersonalizeOnboardingList(Lorg/schema/evie/topics/Topic;)V
    .locals 2

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->getPersonalizeOnboardingList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 99
    invoke-direct {p0, v0, p1}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->containsId(Ljava/util/List;Lorg/schema/Id;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->setPersonalizeOnboardingList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setDataWarningCardDismissed(Z)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dwcd"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setFirebaseCloudMessagingRegistrationToken(Ljava/lang/String;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fcmrt"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHasFinishedPersonalizeOnboarding(Z)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "personalize_onboarding_finished"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHasOpenedPersonalize(Z)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "has_opened_personalize"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPersonalizeOnboardingList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schema/evie/topics/Topic;",
            ">;)V"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mGson:Lcom/google/gson/Gson;

    const-class v1, Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    .line 116
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "personalize_onboarding_saved_topics"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPlaylistAutoplayEnabled(Z)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "playlist_autoplay"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setWasOnboardedWithFreeBee(Z)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wowf"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
