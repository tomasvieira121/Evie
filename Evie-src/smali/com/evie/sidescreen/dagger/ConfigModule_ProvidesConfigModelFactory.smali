.class public final Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesConfigModelFactory;
.super Ljava/lang/Object;
.source "ConfigModule_ProvidesConfigModelFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/models/config/ConfigModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final retrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesConfigModelFactory;->retrofitProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesConfigModelFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesConfigModelFactory;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesConfigModelFactory;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesConfigModelFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesConfigModel(Lretrofit2/Retrofit;)Lcom/evie/models/config/ConfigModel;
    .locals 1

    .line 33
    invoke-static {p0}, Lcom/evie/sidescreen/dagger/ConfigModule;->providesConfigModel(Lretrofit2/Retrofit;)Lcom/evie/models/config/ConfigModel;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 32
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/models/config/ConfigModel;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/models/config/ConfigModel;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesConfigModelFactory;->retrofitProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Retrofit;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesConfigModelFactory;->proxyProvidesConfigModel(Lretrofit2/Retrofit;)Lcom/evie/models/config/ConfigModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesConfigModelFactory;->get()Lcom/evie/models/config/ConfigModel;

    move-result-object v0

    return-object v0
.end method
