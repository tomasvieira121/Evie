.class Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$3;
.super Ljava/lang/Object;
.source "VrmAdServices.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->addFetchTask(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;

.field final synthetic val$task:Lcom/aol/mobile/sdk/player/advertisement/utils/Task;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$3;->this$0:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$3;->val$task:Lcom/aol/mobile/sdk/player/advertisement/utils/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;J)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$3;->this$0:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$3;->val$task:Lcom/aol/mobile/sdk/player/advertisement/utils/Task;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->access$500(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;Lcom/aol/mobile/sdk/player/advertisement/utils/Task;Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;J)V

    return-void
.end method

.method public error(Ljava/lang/Exception;J)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$3;->this$0:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$3;->val$task:Lcom/aol/mobile/sdk/player/advertisement/utils/Task;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->access$600(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;Lcom/aol/mobile/sdk/player/advertisement/utils/Task;Ljava/lang/Exception;J)V

    return-void
.end method
