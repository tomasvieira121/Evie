.class public final Lcom/evie/sidescreen/dagger/TileSettingsModule_ProvideAutoplayVideoSettingFactory;
.super Ljava/lang/Object;
.source "TileSettingsModule_ProvideAutoplayVideoSettingFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lio/reactivex/Observable<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final module:Lcom/evie/sidescreen/dagger/TileSettingsModule;

.field private final settingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/TileSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/TileSettingsModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/TileSettingsModule;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/TileSettings;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/TileSettingsModule_ProvideAutoplayVideoSettingFactory;->module:Lcom/evie/sidescreen/dagger/TileSettingsModule;

    .line 23
    iput-object p2, p0, Lcom/evie/sidescreen/dagger/TileSettingsModule_ProvideAutoplayVideoSettingFactory;->settingsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/TileSettingsModule;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/TileSettingsModule_ProvideAutoplayVideoSettingFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/TileSettingsModule;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/TileSettings;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/TileSettingsModule_ProvideAutoplayVideoSettingFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/evie/sidescreen/dagger/TileSettingsModule_ProvideAutoplayVideoSettingFactory;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/dagger/TileSettingsModule_ProvideAutoplayVideoSettingFactory;-><init>(Lcom/evie/sidescreen/dagger/TileSettingsModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvideAutoplayVideoSetting(Lcom/evie/sidescreen/dagger/TileSettingsModule;Lcom/evie/sidescreen/TileSettings;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/TileSettingsModule;",
            "Lcom/evie/sidescreen/TileSettings;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/dagger/TileSettingsModule;->provideAutoplayVideoSetting(Lcom/evie/sidescreen/TileSettings;)Lio/reactivex/Observable;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 38
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Observable;

    return-object p0
.end method


# virtual methods
.method public get()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/TileSettingsModule_ProvideAutoplayVideoSettingFactory;->module:Lcom/evie/sidescreen/dagger/TileSettingsModule;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/TileSettingsModule_ProvideAutoplayVideoSettingFactory;->settingsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/TileSettings;

    invoke-static {v0, v1}, Lcom/evie/sidescreen/dagger/TileSettingsModule_ProvideAutoplayVideoSettingFactory;->proxyProvideAutoplayVideoSetting(Lcom/evie/sidescreen/dagger/TileSettingsModule;Lcom/evie/sidescreen/TileSettings;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/TileSettingsModule_ProvideAutoplayVideoSettingFactory;->get()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
