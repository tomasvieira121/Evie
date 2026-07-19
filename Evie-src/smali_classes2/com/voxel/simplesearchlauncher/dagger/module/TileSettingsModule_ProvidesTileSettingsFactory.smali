.class public final Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesTileSettingsFactory;
.super Ljava/lang/Object;
.source "TileSettingsModule_ProvidesTileSettingsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/TileSettings;",
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

.field private final listenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;


# direct methods
.method public static proxyProvidesTileSettings(Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;Lio/reactivex/subjects/BehaviorSubject;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)Lcom/evie/sidescreen/TileSettings;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ")",
            "Lcom/evie/sidescreen/TileSettings;"
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;->providesTileSettings(Lio/reactivex/subjects/BehaviorSubject;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)Lcom/evie/sidescreen/TileSettings;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 48
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/sidescreen/TileSettings;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/TileSettings;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesTileSettingsFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesTileSettingsFactory;->autoplaySubjectProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/BehaviorSubject;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesTileSettingsFactory;->listenerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesTileSettingsFactory;->proxyProvidesTileSettings(Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;Lio/reactivex/subjects/BehaviorSubject;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)Lcom/evie/sidescreen/TileSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesTileSettingsFactory;->get()Lcom/evie/sidescreen/TileSettings;

    move-result-object v0

    return-object v0
.end method
