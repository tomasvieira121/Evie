.class Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller$2;
.super Landroid/os/AsyncTask;
.source "ConnectionPoolKiller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;->clearConnectionPool()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller$2;->this$0:Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    const-string p1, "clearConnectionPool"

    const/4 v0, 0x0

    .line 61
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller$2;->this$0:Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;->access$000(Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;)Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ConnectionPool;->evictAll()V

    const/4 p1, 0x0

    return-object p1
.end method
