.class public final synthetic Lcom/voxel/launcher3/fresco/-$$Lambda$RetryOkHttpNetworkFetcher$1$7t5SjLTubmKVHe9dUFjcpfkWXkw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lokhttp3/Call;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/Call;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/fresco/-$$Lambda$RetryOkHttpNetworkFetcher$1$7t5SjLTubmKVHe9dUFjcpfkWXkw;->f$0:Lokhttp3/Call;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/fresco/-$$Lambda$RetryOkHttpNetworkFetcher$1$7t5SjLTubmKVHe9dUFjcpfkWXkw;->f$0:Lokhttp3/Call;

    invoke-static {v0}, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$1;->lambda$onCancellationRequested$0(Lokhttp3/Call;)V

    return-void
.end method
