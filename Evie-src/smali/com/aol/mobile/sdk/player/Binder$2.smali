.class Lcom/aol/mobile/sdk/player/Binder$2;
.super Ljava/lang/Object;
.source "Binder.java"

# interfaces
.implements Lcom/aol/mobile/sdk/controls/AdControls$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/player/Binder;->bindControllersToViews(Lcom/aol/mobile/sdk/player/view/PlayerViewport;Lcom/aol/mobile/sdk/player/Player;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aol/mobile/sdk/player/Binder;

.field final synthetic val$player:Lcom/aol/mobile/sdk/player/Player;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/Binder;Lcom/aol/mobile/sdk/player/Player;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/Binder$2;->this$0:Lcom/aol/mobile/sdk/player/Binder;

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/Binder$2;->val$player:Lcom/aol/mobile/sdk/player/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder$2;->val$player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->notifyAdClicked()V

    return-void
.end method

.method public onAdPresented()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder$2;->val$player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->notifyAdPresented()V

    return-void
.end method

.method public onButtonClick(Lcom/aol/mobile/sdk/controls/AdControls$Button;)V
    .locals 1

    .line 128
    sget-object v0, Lcom/aol/mobile/sdk/player/Binder$3;->$SwitchMap$com$aol$mobile$sdk$controls$AdControls$Button:[I

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/controls/AdControls$Button;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 133
    :pswitch_0
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/Binder$2;->val$player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->pause()V

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/Binder$2;->val$player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->play()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
