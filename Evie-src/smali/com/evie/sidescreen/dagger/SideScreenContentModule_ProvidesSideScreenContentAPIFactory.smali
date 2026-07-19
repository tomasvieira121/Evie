.class public final Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenContentAPIFactory;
.super Ljava/lang/Object;
.source "SideScreenContentModule_ProvidesSideScreenContentAPIFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/models/sidescreen/SideScreenContentAPI;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/evie/sidescreen/dagger/SideScreenContentModule;

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
.method public constructor <init>(Lcom/evie/sidescreen/dagger/SideScreenContentModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/SideScreenContentModule;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenContentAPIFactory;->module:Lcom/evie/sidescreen/dagger/SideScreenContentModule;

    .line 28
    iput-object p2, p0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenContentAPIFactory;->clientProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenContentAPIFactory;->retrofitProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/SideScreenContentModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenContentAPIFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/SideScreenContentModule;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenContentAPIFactory;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenContentAPIFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenContentAPIFactory;-><init>(Lcom/evie/sidescreen/dagger/SideScreenContentModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesSideScreenContentAPI(Lcom/evie/sidescreen/dagger/SideScreenContentModule;Lokhttp3/OkHttpClient;Lretrofit2/Retrofit;)Lcom/evie/models/sidescreen/SideScreenContentAPI;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/evie/sidescreen/dagger/SideScreenContentModule;->providesSideScreenContentAPI(Lokhttp3/OkHttpClient;Lretrofit2/Retrofit;)Lcom/evie/models/sidescreen/SideScreenContentAPI;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 47
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/models/sidescreen/SideScreenContentAPI;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/models/sidescreen/SideScreenContentAPI;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenContentAPIFactory;->module:Lcom/evie/sidescreen/dagger/SideScreenContentModule;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenContentAPIFactory;->clientProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/OkHttpClient;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenContentAPIFactory;->retrofitProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lretrofit2/Retrofit;

    invoke-static {v0, v1, v2}, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenContentAPIFactory;->proxyProvidesSideScreenContentAPI(Lcom/evie/sidescreen/dagger/SideScreenContentModule;Lokhttp3/OkHttpClient;Lretrofit2/Retrofit;)Lcom/evie/models/sidescreen/SideScreenContentAPI;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenContentAPIFactory;->get()Lcom/evie/models/sidescreen/SideScreenContentAPI;

    move-result-object v0

    return-object v0
.end method
