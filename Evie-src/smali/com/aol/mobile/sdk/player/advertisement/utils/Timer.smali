.class public Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/advertisement/utils/Timer$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcom/aol/mobile/sdk/player/advertisement/utils/Timer$Callback;

.field private final handler:Landroid/os/Handler;

.field private final hardCallback:Ljava/lang/Runnable;

.field private final hardTimeout:J

.field private final softCallback:Ljava/lang/Runnable;

.field private final softTimeout:J


# direct methods
.method public constructor <init>(JJLandroid/os/Handler;)V
    .locals 6

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer$1;

    invoke-direct {v0, p0}, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer$1;-><init>(Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;->softCallback:Ljava/lang/Runnable;

    .line 30
    new-instance v0, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer$2;

    invoke-direct {v0, p0}, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer$2;-><init>(Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;->hardCallback:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmp-long v4, p1, v0

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "Soft timeout can not be negative"

    .line 41
    invoke-static {v4, v5}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    cmp-long v4, p3, v0

    if-ltz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Hard timeout can not be negative"

    .line 42
    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    cmp-long v0, p3, p1

    if-ltz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const-string v0, "Hard timeout can not be less then soft timeout"

    .line 43
    invoke-static {v2, v0}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 45
    iput-object p5, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;->handler:Landroid/os/Handler;

    .line 46
    iput-wide p1, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;->softTimeout:J

    .line 47
    iput-wide p3, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;->hardTimeout:J

    return-void
.end method

.method static synthetic access$000(Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;)Lcom/aol/mobile/sdk/player/advertisement/utils/Timer$Callback;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;->callback:Lcom/aol/mobile/sdk/player/advertisement/utils/Timer$Callback;

    return-object p0
.end method


# virtual methods
.method public reset()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;->softCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;->hardCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCallback(Lcom/aol/mobile/sdk/player/advertisement/utils/Timer$Callback;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;->callback:Lcom/aol/mobile/sdk/player/advertisement/utils/Timer$Callback;

    return-void
.end method

.method public start()V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;->softCallback:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;->softTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;->hardCallback:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;->hardTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
