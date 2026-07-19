.class Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_okHttpClient;
.super Ljava/lang/Object;
.source "DaggerSideScreenBaseComponent.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_okHttpClient"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final sideScreenSharedDependenciesExcludingContext:Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;)V
    .locals 0

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_okHttpClient;->sideScreenSharedDependenciesExcludingContext:Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 767
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_okHttpClient;->get()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/OkHttpClient;
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_okHttpClient;->sideScreenSharedDependenciesExcludingContext:Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;

    .line 782
    invoke-interface {v0}, Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;->okHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 781
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method
