.class public final Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesAutoplaySubjectFactory;
.super Ljava/lang/Object;
.source "TileSettingsModule_ProvidesAutoplaySubjectFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lio/reactivex/subjects/BehaviorSubject<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final module:Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;

.field private final sharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesAutoplaySubjectFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;

    .line 23
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesAutoplaySubjectFactory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;Ljavax/inject/Provider;)Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesAutoplaySubjectFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)",
            "Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesAutoplaySubjectFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesAutoplaySubjectFactory;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesAutoplaySubjectFactory;-><init>(Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesAutoplaySubject(Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;Landroid/content/SharedPreferences;)Lio/reactivex/subjects/BehaviorSubject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;",
            "Landroid/content/SharedPreferences;",
            ")",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;->providesAutoplaySubject(Landroid/content/SharedPreferences;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 38
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/subjects/BehaviorSubject;

    return-object p0
.end method


# virtual methods
.method public get()Lio/reactivex/subjects/BehaviorSubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesAutoplaySubjectFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesAutoplaySubjectFactory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesAutoplaySubjectFactory;->proxyProvidesAutoplaySubject(Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;Landroid/content/SharedPreferences;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule_ProvidesAutoplaySubjectFactory;->get()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    return-object v0
.end method
