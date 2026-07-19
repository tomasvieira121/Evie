.class public Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher;
.super Ljava/lang/Object;
.source "VrmAdFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$Listener;
    }
.end annotation


# static fields
.field public static final TIMEOUT:I = 0x1f4

.field private static executor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 28
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/16 v1, 0xa

    const/16 v2, 0x14

    const-wide/16 v3, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v7, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdTask(Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$Listener;)Landroid/os/AsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$Listener;",
            ")",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "[B>;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Task;

    new-instance v1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$1;

    invoke-direct {v1, p2}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$1;-><init>(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$Listener;)V

    const/16 p2, 0x1f4

    invoke-direct {v0, v1, p1, p2, p2}, Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Task;-><init>(Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Listener;Ljava/lang/String;II)V

    .line 54
    sget-object p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher;->executor:Ljava/util/concurrent/Executor;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, p2, v1

    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method
