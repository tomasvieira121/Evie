.class public final Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesOnSharedPreferenceChangeListenerFactory;
.super Ljava/lang/Object;
.source "TileSettingsModule_ProvidesOnSharedPreferenceChangeListenerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final autoplaySubjectProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final module:Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;

.field private final prefsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesOnSharedPreferenceChangeListenerFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;

    .line 27
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesOnSharedPreferenceChangeListenerFactory;->prefsProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesOnSharedPreferenceChangeListenerFactory;->autoplaySubjectProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesOnSharedPreferenceChangeListenerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesOnSharedPreferenceChangeListenerFactory;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesOnSharedPreferenceChangeListenerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesOnSharedPreferenceChangeListenerFactory;-><init>(Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesOnSharedPreferenceChangeListener(Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;Landroid/content/SharedPreferences;Lio/reactivex/subjects/BehaviorSubject;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;",
            "Landroid/content/SharedPreferences;",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;->providesOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences;Lio/reactivex/subjects/BehaviorSubject;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 50
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesOnSharedPreferenceChangeListenerFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesOnSharedPreferenceChangeListenerFactory;->prefsProvider:Ljavax/inject/Provider;

    .line 34
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesOnSharedPreferenceChangeListenerFactory;->autoplaySubjectProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/subjects/BehaviorSubject;

    .line 33
    invoke-static {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesOnSharedPreferenceChangeListenerFactory;->proxyProvidesOnSharedPreferenceChangeListener(Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;Landroid/content/SharedPreferences;Lio/reactivex/subjects/BehaviorSubject;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesOnSharedPreferenceChangeListenerFactory;->get()Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    move-result-object v0

    return-object v0
.end method
