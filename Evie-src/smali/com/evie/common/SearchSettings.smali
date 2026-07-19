.class public Lcom/evie/common/SearchSettings;
.super Ljava/lang/Object;
.source "SearchSettings.java"


# static fields
.field private static instance:Lcom/evie/common/SearchSettings;


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.evie.search"

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/common/SearchSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/evie/common/SearchSettings;
    .locals 1

    .line 24
    sget-object v0, Lcom/evie/common/SearchSettings;->instance:Lcom/evie/common/SearchSettings;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/evie/common/SearchSettings;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/evie/common/SearchSettings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/evie/common/SearchSettings;->instance:Lcom/evie/common/SearchSettings;

    .line 28
    :cond_0
    sget-object p0, Lcom/evie/common/SearchSettings;->instance:Lcom/evie/common/SearchSettings;

    return-object p0
.end method


# virtual methods
.method public getIncludeFrequentlyUsed()Z
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/evie/common/SearchSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "include_frequently_used"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLastDecay()I
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/evie/common/SearchSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_decay"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxRecents()I
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/evie/common/SearchSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "max_recents"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getOpenWebResultsInBrowser()Z
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/evie/common/SearchSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "open_web_results_in_browser"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRecentsIncludeWebResults()Z
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/evie/common/SearchSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "recents_include_web_results"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSearchEngine()I
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/evie/common/SearchSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "search_engine"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setIncludeFrequentlyUsed(Z)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/evie/common/SearchSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "include_frequently_used"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastDecay(I)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/evie/common/SearchSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_decay"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMaxRecents(I)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/evie/common/SearchSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "max_recents"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setOpenWebResultsInBrowser(Z)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/evie/common/SearchSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "open_web_results_in_browser"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setRecentsIncludeWebResults(Z)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/evie/common/SearchSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "recents_include_web_results"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSearchEngine(I)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/evie/common/SearchSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "search_engine"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
