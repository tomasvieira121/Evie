.class public Lcom/evie/sidescreen/SideScreenConfiguration;
.super Ljava/lang/Object;
.source "SideScreenConfiguration.java"


# instance fields
.field private final mGson:Lcom/google/gson/Gson;

.field private final mPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenConfiguration;->mPref:Landroid/content/SharedPreferences;

    .line 35
    iput-object p2, p0, Lcom/evie/sidescreen/SideScreenConfiguration;->mGson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public getConfigTabs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evie/models/config/ConfigTab;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenConfiguration;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "sidescreenconfiguration.tab_labels"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenConfiguration;->mGson:Lcom/google/gson/Gson;

    new-instance v2, Lcom/evie/sidescreen/SideScreenConfiguration$1;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/SideScreenConfiguration$1;-><init>(Lcom/evie/sidescreen/SideScreenConfiguration;)V

    .line 77
    invoke-virtual {v2}, Lcom/evie/sidescreen/SideScreenConfiguration$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 76
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOnboardingFlow()Ljava/lang/String;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenConfiguration;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "sidescreenconfiguration.onboarding_flow"

    const-string v2, "classic"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTabsEnabled()Z
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenConfiguration;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "sidescreenconfiguration.tabs_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setFromConfigData(Lcom/evie/models/config/ConfigData;)V
    .locals 1

    .line 39
    invoke-virtual {p1}, Lcom/evie/models/config/ConfigData;->getOnboardingFlow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/SideScreenConfiguration;->setOnboardingFlow(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/evie/models/config/ConfigData;->getIsTabsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/SideScreenConfiguration;->setTabsEnabled(Ljava/lang/Boolean;)V

    .line 43
    invoke-virtual {p1}, Lcom/evie/models/config/ConfigData;->getConfigTabs()Ljava/util/List;

    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/SideScreenConfiguration;->setTabLabels(Ljava/util/List;)V

    return-void
.end method

.method public setOnboardingFlow(Ljava/lang/String;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenConfiguration;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sidescreenconfiguration.onboarding_flow"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTabLabels(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/models/config/ConfigTab;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenConfiguration;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenConfiguration;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sidescreenconfiguration.tab_labels"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenConfiguration;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "sidescreenconfiguration.tab_labels"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public setTabsEnabled(Ljava/lang/Boolean;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenConfiguration;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sidescreenconfiguration.tabs_enabled"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
