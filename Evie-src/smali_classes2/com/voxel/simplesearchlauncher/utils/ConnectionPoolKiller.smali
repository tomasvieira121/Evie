.class public Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;
.super Ljava/lang/Object;
.source "ConnectionPoolKiller.java"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mOkHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method


# virtual methods
.method public clearConnectionPool()V
    .locals 2

    .line 58
    new-instance v0, Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller$2;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller$2;-><init>(Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 68
    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public declared-synchronized registerReceiver()V
    .locals 4

    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller$1;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller$1;-><init>(Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lis/shortcut/compat/ReceiverCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
