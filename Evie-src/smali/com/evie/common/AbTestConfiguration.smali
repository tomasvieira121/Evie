.class public Lcom/evie/common/AbTestConfiguration;
.super Ljava/lang/Object;
.source "AbTestConfiguration.java"


# instance fields
.field private final mPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "abtestconfiguration.prefs"

    const/4 v1, 0x0

    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/common/AbTestConfiguration;->mPref:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public getActualExperiment()Ljava/lang/String;
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/evie/common/AbTestConfiguration;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "experiment"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActualGroup()Ljava/lang/String;
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/evie/common/AbTestConfiguration;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "group"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDebugExperimentOverride()Ljava/lang/String;
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/evie/common/AbTestConfiguration;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "debug-experiment"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDebugGroupOverride()Ljava/lang/String;
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/evie/common/AbTestConfiguration;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "debug-group"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExperiment()Ljava/lang/String;
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/evie/common/AbTestConfiguration;->getDebugExperimentOverride()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/evie/common/AbTestConfiguration;->getActualExperiment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/evie/common/AbTestConfiguration;->getDebugGroupOverride()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/evie/common/AbTestConfiguration;->getActualGroup()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setActualExperiment(Ljava/lang/String;)Lcom/evie/common/AbTestConfiguration;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/evie/common/AbTestConfiguration;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "experiment"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object p0
.end method

.method public setActualGroup(Ljava/lang/String;)Lcom/evie/common/AbTestConfiguration;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/evie/common/AbTestConfiguration;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "group"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object p0
.end method

.method public setDebugExperimentOverride(Ljava/lang/String;)Lcom/evie/common/AbTestConfiguration;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/evie/common/AbTestConfiguration;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "debug-experiment"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object p0
.end method

.method public setDebugGroupOverride(Ljava/lang/String;)Lcom/evie/common/AbTestConfiguration;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/evie/common/AbTestConfiguration;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "debug-group"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object p0
.end method
