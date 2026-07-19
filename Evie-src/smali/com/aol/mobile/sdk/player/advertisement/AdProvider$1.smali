.class Lcom/aol/mobile/sdk/player/advertisement/AdProvider$1;
.super Ljava/lang/Object;
.source "AdProvider.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/player/advertisement/AdProvider;-><init>(Lcom/aol/mobile/sdk/player/advertisement/AdServices;Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback<",
        "TAd;TSource;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aol/mobile/sdk/player/advertisement/AdProvider;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$1;->this$0:Lcom/aol/mobile/sdk/player/advertisement/AdProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHardTimeoutReached()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$1;->this$0:Lcom/aol/mobile/sdk/player/advertisement/AdProvider;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->access$000(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;)Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;->onHardTimeoutReached()V

    .line 63
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$1;->this$0:Lcom/aol/mobile/sdk/player/advertisement/AdProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->access$700(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V

    return-void
.end method

.method public onSoftTimeoutReached()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$1;->this$0:Lcom/aol/mobile/sdk/player/advertisement/AdProvider;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->access$000(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;)Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;->onSoftTimeoutReached()V

    .line 56
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$1;->this$0:Lcom/aol/mobile/sdk/player/advertisement/AdProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->access$602(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;Z)Z

    .line 57
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$1;->this$0:Lcom/aol/mobile/sdk/player/advertisement/AdProvider;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->access$500(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;)V

    return-void
.end method

.method public onTaskFinished(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "TAd;TSource;>;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$1;->this$0:Lcom/aol/mobile/sdk/player/advertisement/AdProvider;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->access$000(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;)Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;->onTaskFinished(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V

    .line 48
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$1;->this$0:Lcom/aol/mobile/sdk/player/advertisement/AdProvider;

    invoke-static {p1}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->access$400(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$1;->this$0:Lcom/aol/mobile/sdk/player/advertisement/AdProvider;

    invoke-static {p1}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->access$500(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;)V

    :cond_0
    return-void
.end method

.method public onTaskLaunched(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "TAd;TSource;>;)V"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$1;->this$0:Lcom/aol/mobile/sdk/player/advertisement/AdProvider;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->access$000(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;)Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;->onTaskLaunched(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V

    return-void
.end method

.method public onTasksReady(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "TAd;TSource;>;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 38
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$1;->this$0:Lcom/aol/mobile/sdk/player/advertisement/AdProvider;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->access$000(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;)Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;->onVrmParamsReady(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 40
    iget-object p2, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$1;->this$0:Lcom/aol/mobile/sdk/player/advertisement/AdProvider;

    invoke-static {p2}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->access$100(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;)Ljava/util/LinkedList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$1;->this$0:Lcom/aol/mobile/sdk/player/advertisement/AdProvider;

    invoke-static {p1}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->access$200(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;)Lcom/aol/mobile/sdk/player/advertisement/AdServices;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/AdServices;->startTimer()V

    .line 42
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$1;->this$0:Lcom/aol/mobile/sdk/player/advertisement/AdProvider;

    invoke-static {p1}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->access$300(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;)V

    return-void
.end method
