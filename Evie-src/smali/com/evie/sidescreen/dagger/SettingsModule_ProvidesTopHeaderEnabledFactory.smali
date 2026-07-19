.class public final Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesTopHeaderEnabledFactory;
.super Ljava/lang/Object;
.source "SettingsModule_ProvidesTopHeaderEnabledFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/evie/sidescreen/dagger/SettingsModule;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/SettingsModule;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesTopHeaderEnabledFactory;->module:Lcom/evie/sidescreen/dagger/SettingsModule;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/SettingsModule;)Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesTopHeaderEnabledFactory;
    .locals 1

    .line 23
    new-instance v0, Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesTopHeaderEnabledFactory;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesTopHeaderEnabledFactory;-><init>(Lcom/evie/sidescreen/dagger/SettingsModule;)V

    return-object v0
.end method

.method public static proxyProvidesTopHeaderEnabled(Lcom/evie/sidescreen/dagger/SettingsModule;)Z
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/SettingsModule;->providesTopHeaderEnabled()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesTopHeaderEnabledFactory;->module:Lcom/evie/sidescreen/dagger/SettingsModule;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesTopHeaderEnabledFactory;->proxyProvidesTopHeaderEnabled(Lcom/evie/sidescreen/dagger/SettingsModule;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesTopHeaderEnabledFactory;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
