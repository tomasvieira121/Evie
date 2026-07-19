.class Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$2$1;
.super Ljava/lang/Object;
.source "VrmAdServices.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$2;->success([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$2;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$2;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$2$1;->this$1:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .locals 2

    .line 70
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$2$1;->this$1:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$2;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$2;->this$0:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;

    invoke-static {p1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->access$300(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;

    const/4 v1, 0x0

    .line 71
    invoke-interface {v0, v1, v1, v1}, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;->onTasksReady(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public success(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$2$1;->this$1:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$2;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$2;->this$0:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->access$200(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;

    .line 64
    invoke-interface {v1, p1, p2, p3}, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;->onTasksReady(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
