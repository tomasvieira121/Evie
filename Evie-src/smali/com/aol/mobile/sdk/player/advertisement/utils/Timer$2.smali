.class Lcom/aol/mobile/sdk/player/advertisement/utils/Timer$2;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer$2;->this$0:Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer$2;->this$0:Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;->access$000(Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;)Lcom/aol/mobile/sdk/player/advertisement/utils/Timer$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer$2;->this$0:Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;->access$000(Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;)Lcom/aol/mobile/sdk/player/advertisement/utils/Timer$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer$Callback;->onHardTimeoutReached()V

    :cond_0
    return-void
.end method
