.class public Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;
.super Ljava/lang/Object;
.source "TileSettingsModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$providesOnSharedPreferenceChangeListener$0(Lio/reactivex/subjects/BehaviorSubject;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.evie.screen.SettingsActivity.PREF_AUTOPLAY_VIDEO"

    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "com.evie.screen.SettingsActivity.PREF_AUTOPLAY_VIDEO"

    const/4 v0, 0x0

    .line 38
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method providesAutoplaySubject(Landroid/content/SharedPreferences;)Lio/reactivex/subjects/BehaviorSubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "com.evie.screen.SettingsActivity.PREF_AUTOPLAY_VIDEO"

    const/4 v1, 0x0

    .line 29
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 30
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    return-object p1
.end method

.method providesOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences;Lio/reactivex/subjects/BehaviorSubject;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/module/-$$Lambda$TileSettingsModule$ZrYiuZ0UfbajQLlXrq9bD3J20Us;

    invoke-direct {v0, p2}, Lcom/voxel/simplesearchlauncher/dagger/module/-$$Lambda$TileSettingsModule$ZrYiuZ0UfbajQLlXrq9bD3J20Us;-><init>(Lio/reactivex/subjects/BehaviorSubject;)V

    .line 40
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-object v0
.end method

.method providesSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 22
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method providesTileSettings(Lio/reactivex/subjects/BehaviorSubject;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)Lcom/evie/sidescreen/TileSettings;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ")",
            "Lcom/evie/sidescreen/TileSettings;"
        }
    .end annotation

    .line 46
    invoke-static {}, Lcom/evie/sidescreen/TileSettings;->builder()Lcom/evie/sidescreen/TileSettings$TileSettingsBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/evie/sidescreen/TileSettings$TileSettingsBuilder;->autoplayVideos(Lio/reactivex/Observable;)Lcom/evie/sidescreen/TileSettings$TileSettingsBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evie/sidescreen/TileSettings$TileSettingsBuilder;->build()Lcom/evie/sidescreen/TileSettings;

    move-result-object p1

    return-object p1
.end method
