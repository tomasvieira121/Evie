.class Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$3;
.super Ljava/lang/Object;
.source "OathPlayerObservable.java"

# interfaces
.implements Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor$PlayerBuilderRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;-><init>(Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;)V
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

    .line 133
    iput-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$3;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$3;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$100(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Error;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/aol/mobile/sdk/player/PlayerBuilder;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$3;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$602(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;Lcom/aol/mobile/sdk/player/PlayerBuilder;)Lcom/aol/mobile/sdk/player/PlayerBuilder;

    .line 137
    iget-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$3;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$100(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    new-instance v0, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$BuilderReady;

    invoke-direct {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$BuilderReady;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
