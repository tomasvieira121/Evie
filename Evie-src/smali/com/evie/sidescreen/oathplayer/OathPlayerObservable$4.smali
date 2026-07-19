.class Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$4;
.super Ljava/lang/Object;
.source "OathPlayerObservable.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/Player$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->createPlayer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$4;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$4;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$100(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Error;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public success(Lcom/aol/mobile/sdk/player/Player;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$4;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$002(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;Lcom/aol/mobile/sdk/player/Player;)Lcom/aol/mobile/sdk/player/Player;

    .line 164
    iget-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$4;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$000(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lcom/aol/mobile/sdk/player/Player;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$4;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$700(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lcom/aol/mobile/sdk/player/PlayerStateObserver;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/Player;->addPlayerStateObserver(Lcom/aol/mobile/sdk/player/PlayerStateObserver;)V

    .line 165
    iget-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$4;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$000(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lcom/aol/mobile/sdk/player/Player;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$4;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$800(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lcom/aol/mobile/sdk/player/listener/ErrorListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/Player;->addErrorListener(Lcom/aol/mobile/sdk/player/listener/ErrorListener;)V

    .line 166
    iget-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$4;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$100(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    new-instance v0, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Ready;

    invoke-direct {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Ready;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
