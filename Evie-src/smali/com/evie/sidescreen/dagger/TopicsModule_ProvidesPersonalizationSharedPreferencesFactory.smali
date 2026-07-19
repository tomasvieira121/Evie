.class public final Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesPersonalizationSharedPreferencesFactory;
.super Ljava/lang/Object;
.source "TopicsModule_ProvidesPersonalizationSharedPreferencesFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/evie/sidescreen/dagger/TopicsModule;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/TopicsModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/TopicsModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesPersonalizationSharedPreferencesFactory;->module:Lcom/evie/sidescreen/dagger/TopicsModule;

    .line 23
    iput-object p2, p0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesPersonalizationSharedPreferencesFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/TopicsModule;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesPersonalizationSharedPreferencesFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/TopicsModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesPersonalizationSharedPreferencesFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesPersonalizationSharedPreferencesFactory;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesPersonalizationSharedPreferencesFactory;-><init>(Lcom/evie/sidescreen/dagger/TopicsModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesPersonalizationSharedPreferences(Lcom/evie/sidescreen/dagger/TopicsModule;Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/dagger/TopicsModule;->providesPersonalizationSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 39
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/SharedPreferences;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesPersonalizationSharedPreferencesFactory;->module:Lcom/evie/sidescreen/dagger/TopicsModule;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesPersonalizationSharedPreferencesFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesPersonalizationSharedPreferencesFactory;->proxyProvidesPersonalizationSharedPreferences(Lcom/evie/sidescreen/dagger/TopicsModule;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesPersonalizationSharedPreferencesFactory;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
