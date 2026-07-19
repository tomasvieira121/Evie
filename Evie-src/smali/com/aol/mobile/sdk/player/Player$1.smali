.class Lcom/aol/mobile/sdk/player/Player$1;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/player/Player;-><init>(Lcom/aol/mobile/sdk/player/model/PlayerModel;Lcom/aol/mobile/sdk/player/VvuidGenerator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isFired:Z

.field final synthetic this$0:Lcom/aol/mobile/sdk/player/Player;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/Player;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/Player$1;->this$0:Lcom/aol/mobile/sdk/player/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/Player$1;->isFired:Z

    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 2

    .line 74
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    sget-object v1, Lcom/aol/mobile/sdk/player/model/ErrorState;->CONNECTION_ERROR:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 76
    :cond_0
    sget-object v0, Lcom/aol/mobile/sdk/player/Player$2;->$SwitchMap$com$aol$mobile$sdk$player$Player$ErrorHandlingBehaviour:[I

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/Player$1;->this$0:Lcom/aol/mobile/sdk/player/Player;

    invoke-static {v1}, Lcom/aol/mobile/sdk/player/Player;->access$000(Lcom/aol/mobile/sdk/player/Player;)Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 80
    :pswitch_0
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget-boolean v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->isLastVideo:Z

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/aol/mobile/sdk/player/Player$1;->isFired:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/Player$1;->isFired:Z

    .line 82
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/aol/mobile/sdk/player/Player$1$1;

    invoke-direct {v0, p0}, Lcom/aol/mobile/sdk/player/Player$1$1;-><init>(Lcom/aol/mobile/sdk/player/Player$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_1
    return-void

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
