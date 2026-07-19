.class public final Lcom/voxel/launcher3/fresco/HybridNetworkFetcher_Factory;
.super Ljava/lang/Object;
.source "HybridNetworkFetcher_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;",
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

.field private final okHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
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
            "Lokhttp3/OkHttpClient;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher_Factory;->okHttpClientProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/voxel/launcher3/fresco/HybridNetworkFetcher_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;)",
            "Lcom/voxel/launcher3/fresco/HybridNetworkFetcher_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher_Factory;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;
    .locals 3

    .line 26
    new-instance v0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;

    iget-object v1, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher_Factory;->okHttpClientProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/OkHttpClient;

    invoke-direct {v0, v1, v2}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;-><init>(Landroid/content/Context;Lokhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher_Factory;->get()Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;

    move-result-object v0

    return-object v0
.end method
