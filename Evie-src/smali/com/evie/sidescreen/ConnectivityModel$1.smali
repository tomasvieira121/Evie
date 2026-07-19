.class Lcom/evie/sidescreen/ConnectivityModel$1;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/ConnectivityModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/ConnectivityModel;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/ConnectivityModel;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/evie/sidescreen/ConnectivityModel$1;->this$0:Lcom/evie/sidescreen/ConnectivityModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 28
    iget-object p1, p0, Lcom/evie/sidescreen/ConnectivityModel$1;->this$0:Lcom/evie/sidescreen/ConnectivityModel;

    invoke-virtual {p1}, Lcom/evie/sidescreen/ConnectivityModel;->isConnected()Z

    move-result p1

    .line 30
    iget-object p2, p0, Lcom/evie/sidescreen/ConnectivityModel$1;->this$0:Lcom/evie/sidescreen/ConnectivityModel;

    invoke-static {p2}, Lcom/evie/sidescreen/ConnectivityModel;->access$000(Lcom/evie/sidescreen/ConnectivityModel;)Z

    move-result p2

    if-eq p2, p1, :cond_0

    .line 31
    iget-object p2, p0, Lcom/evie/sidescreen/ConnectivityModel$1;->this$0:Lcom/evie/sidescreen/ConnectivityModel;

    invoke-static {p2, p1}, Lcom/evie/sidescreen/ConnectivityModel;->access$002(Lcom/evie/sidescreen/ConnectivityModel;Z)Z

    .line 32
    iget-object p2, p0, Lcom/evie/sidescreen/ConnectivityModel$1;->this$0:Lcom/evie/sidescreen/ConnectivityModel;

    invoke-static {p2}, Lcom/evie/sidescreen/ConnectivityModel;->access$100(Lcom/evie/sidescreen/ConnectivityModel;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
