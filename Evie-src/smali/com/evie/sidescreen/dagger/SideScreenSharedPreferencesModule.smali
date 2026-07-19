.class public abstract Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule;
.super Ljava/lang/Object;
.source "SideScreenSharedPreferencesModule.java"


# direct methods
.method static configSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "com.evie.sidescreen.config.prefs"

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static providesPromptStore(Landroid/content/Context;Lcom/google/gson/Gson;)Lcom/evie/models/PromptStoreModel;
    .locals 2

    const-string v0, "com.evie.sidescreen.prompts.store.prefs"

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 39
    new-instance v0, Lcom/evie/models/PromptStoreModel;

    invoke-direct {v0, p0, p1}, Lcom/evie/models/PromptStoreModel;-><init>(Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)V

    return-object v0
.end method

.method static providesSharedPreferencesModel(Landroid/content/Context;Lcom/google/gson/Gson;)Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;
    .locals 2

    const-string v0, "com.evie.sidescreen.prefs"

    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 25
    new-instance v0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;-><init>(Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)V

    return-object v0
.end method
