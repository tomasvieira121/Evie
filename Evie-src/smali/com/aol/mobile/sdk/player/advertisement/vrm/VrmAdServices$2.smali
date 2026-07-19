.class Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$2;
.super Ljava/lang/Object;
.source "VrmAdServices.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->prepareTasks()V
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

    .line 57
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$2;->this$0:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .locals 2

    .line 79
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$2;->this$0:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;

    invoke-static {p1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->access$400(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;)Ljava/util/List;

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

    .line 80
    invoke-interface {v0, v1, v1, v1}, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;->onTasksReady(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public success([B)V
    .locals 1

    .line 60
    new-instance v0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$2$1;

    invoke-direct {v0, p0}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$2$1;-><init>(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$2;)V

    invoke-static {p1, v0}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser;->parse([BLcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser$Listener;)V

    return-void
.end method
