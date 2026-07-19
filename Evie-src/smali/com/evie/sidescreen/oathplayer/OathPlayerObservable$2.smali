.class Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$2;
.super Lcom/aol/mobile/sdk/player/listener/ErrorListener;
.source "OathPlayerObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;
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

    .line 113
    iput-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$2;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/listener/ErrorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/aol/mobile/sdk/player/model/ErrorState;)V
    .locals 2

    .line 117
    sget-object v0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$5;->$SwitchMap$com$aol$mobile$sdk$player$model$ErrorState:[I

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/model/ErrorState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "Error: Unknown"

    goto :goto_0

    :pswitch_0
    const-string p1, "Error: Corrupted Content"

    goto :goto_0

    :pswitch_1
    const-string p1, "Error: Bad Connection"

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$2;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$100(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Error;

    invoke-direct {v1, p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
