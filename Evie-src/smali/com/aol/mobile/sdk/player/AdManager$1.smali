.class Lcom/aol/mobile/sdk/player/AdManager$1;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback<",
        "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;",
        "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aol/mobile/sdk/player/AdManager;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/AdManager;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/AdManager$1;->this$0:Lcom/aol/mobile/sdk/player/AdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdArrived(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->adVideoUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager$1;->this$0:Lcom/aol/mobile/sdk/player/AdManager;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/AdManager;->processVrmAd(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/AdManager$1;->this$0:Lcom/aol/mobile/sdk/player/AdManager;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/AdManager;->processNoAd()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onAdArrived(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/AdManager$1;->onAdArrived(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;)V

    return-void
.end method

.method public onHardTimeoutReached()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager$1;->this$0:Lcom/aol/mobile/sdk/player/AdManager;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/AdManager;->access$000(Lcom/aol/mobile/sdk/player/AdManager;)Lcom/aol/mobile/sdk/player/Player;

    move-result-object v0

    sget-object v1, Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;->HARD_TIMEOUT_REACHED:Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/Player;->setGroupProcessingState(Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;)V

    return-void
.end method

.method public onSoftTimeoutReached()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager$1;->this$0:Lcom/aol/mobile/sdk/player/AdManager;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/AdManager;->access$000(Lcom/aol/mobile/sdk/player/AdManager;)Lcom/aol/mobile/sdk/player/Player;

    move-result-object v0

    sget-object v1, Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;->SOFT_TIMEOUT_REACHED:Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/Player;->setGroupProcessingState(Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;)V

    return-void
.end method

.method public onTaskFinished(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;",
            ">;)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager$1;->this$0:Lcom/aol/mobile/sdk/player/AdManager;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/AdManager;->access$000(Lcom/aol/mobile/sdk/player/AdManager;)Lcom/aol/mobile/sdk/player/Player;

    move-result-object v0

    sget-object v1, Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;->FINISHED:Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;

    invoke-virtual {v0, p1, v1}, Lcom/aol/mobile/sdk/player/Player;->setTask(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;)V

    return-void
.end method

.method public onTaskLaunched(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;",
            ">;)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager$1;->this$0:Lcom/aol/mobile/sdk/player/AdManager;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/AdManager;->access$000(Lcom/aol/mobile/sdk/player/AdManager;)Lcom/aol/mobile/sdk/player/Player;

    move-result-object v0

    sget-object v1, Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;->IN_PROGRESS:Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;

    invoke-virtual {v0, p1, v1}, Lcom/aol/mobile/sdk/player/Player;->setTask(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;)V

    return-void
.end method

.method public onVrmParamsReady(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager$1;->this$0:Lcom/aol/mobile/sdk/player/AdManager;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/AdManager;->access$000(Lcom/aol/mobile/sdk/player/AdManager;)Lcom/aol/mobile/sdk/player/Player;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/AdManager$1;->this$0:Lcom/aol/mobile/sdk/player/AdManager;

    invoke-static {v1}, Lcom/aol/mobile/sdk/player/AdManager;->access$100(Lcom/aol/mobile/sdk/player/AdManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/aol/mobile/sdk/player/Player;->setAdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
