.class public final Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesConvertToCelsiusFactory;
.super Ljava/lang/Object;
.source "SettingsModule_ProvidesConvertToCelsiusFactory.java"

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
.field private final module:Lcom/evie/sidescreen/dagger/SettingsModule;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/SettingsModule;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesConvertToCelsiusFactory;->module:Lcom/evie/sidescreen/dagger/SettingsModule;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/SettingsModule;)Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesConvertToCelsiusFactory;
    .locals 1

    .line 26
    new-instance v0, Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesConvertToCelsiusFactory;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesConvertToCelsiusFactory;-><init>(Lcom/evie/sidescreen/dagger/SettingsModule;)V

    return-object v0
.end method

.method public static proxyProvidesConvertToCelsius(Lcom/evie/sidescreen/dagger/SettingsModule;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/SettingsModule;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/SettingsModule;->providesConvertToCelsius()Lio/reactivex/Observable;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Observable;

    return-object p0
.end method


# virtual methods
.method public get()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesConvertToCelsiusFactory;->module:Lcom/evie/sidescreen/dagger/SettingsModule;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesConvertToCelsiusFactory;->proxyProvidesConvertToCelsius(Lcom/evie/sidescreen/dagger/SettingsModule;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesConvertToCelsiusFactory;->get()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
