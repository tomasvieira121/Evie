.class public final Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory;
.super Ljava/lang/Object;
.source "SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/models/PromptStoreModel;",
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

.field private final gsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory;->contextProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory;->gsonProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesPromptStore(Landroid/content/Context;Lcom/google/gson/Gson;)Lcom/evie/models/PromptStoreModel;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule;->providesPromptStore(Landroid/content/Context;Lcom/google/gson/Gson;)Lcom/evie/models/PromptStoreModel;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 39
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/models/PromptStoreModel;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/models/PromptStoreModel;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory;->gsonProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/Gson;

    invoke-static {v0, v1}, Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory;->proxyProvidesPromptStore(Landroid/content/Context;Lcom/google/gson/Gson;)Lcom/evie/models/PromptStoreModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory;->get()Lcom/evie/models/PromptStoreModel;

    move-result-object v0

    return-object v0
.end method
