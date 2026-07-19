.class public Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule;
.super Ljava/lang/Object;
.source "OkHttpModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 22
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 44
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
