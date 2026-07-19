.class Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$1;
.super Ljava/lang/Object;
.source "VrmAdServices.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/advertisement/utils/Timer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;-><init>(Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$1;->this$0:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHardTimeoutReached()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$1;->this$0:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->access$100(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;)Ljava/util/List;

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

    .line 49
    invoke-interface {v1}, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;->onHardTimeoutReached()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSoftTimeoutReached()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$1;->this$0:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->access$000(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;)Ljava/util/List;

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

    .line 42
    invoke-interface {v1}, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;->onSoftTimeoutReached()V

    goto :goto_0

    :cond_0
    return-void
.end method
