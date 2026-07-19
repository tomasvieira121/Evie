.class Lcom/aol/mobile/sdk/player/Binder$1;
.super Ljava/lang/Object;
.source "Binder.java"

# interfaces
.implements Lcom/aol/mobile/sdk/controls/ContentControls$Listener;


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

    .line 79
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/Binder$1;->this$0:Lcom/aol/mobile/sdk/player/Binder;

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/Binder$1;->val$player:Lcom/aol/mobile/sdk/player/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioTrackSelected(I)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder$1;->this$0:Lcom/aol/mobile/sdk/player/Binder;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/Binder;->access$000(Lcom/aol/mobile/sdk/player/Binder;)Lcom/aol/mobile/sdk/player/view/ControlsFeedbackHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/Binder$1;->val$player:Lcom/aol/mobile/sdk/player/Player;

    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/player/view/ControlsFeedbackHandler;->onAudioTrackSelected(Lcom/aol/mobile/sdk/player/Player;I)V

    return-void
.end method

.method public onButtonClick(Lcom/aol/mobile/sdk/controls/ContentControls$Button;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder$1;->this$0:Lcom/aol/mobile/sdk/player/Binder;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/Binder;->access$000(Lcom/aol/mobile/sdk/player/Binder;)Lcom/aol/mobile/sdk/player/view/ControlsFeedbackHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/Binder$1;->val$player:Lcom/aol/mobile/sdk/player/Player;

    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/player/view/ControlsFeedbackHandler;->onButtonClick(Lcom/aol/mobile/sdk/player/Player;Lcom/aol/mobile/sdk/controls/ContentControls$Button;)V

    return-void
.end method

.method public onCastDisabled()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder$1;->val$player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->disableCast()V

    return-void
.end method

.method public onCastEnabled()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder$1;->val$player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->enableCast()V

    return-void
.end method

.method public onCcTrackSelected(I)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder$1;->this$0:Lcom/aol/mobile/sdk/player/Binder;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/Binder;->access$000(Lcom/aol/mobile/sdk/player/Binder;)Lcom/aol/mobile/sdk/player/view/ControlsFeedbackHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/Binder$1;->val$player:Lcom/aol/mobile/sdk/player/Player;

    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/player/view/ControlsFeedbackHandler;->onCcTrackSelected(Lcom/aol/mobile/sdk/player/Player;I)V

    return-void
.end method

.method public onScroll(FF)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder$1;->this$0:Lcom/aol/mobile/sdk/player/Binder;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/Binder;->access$000(Lcom/aol/mobile/sdk/player/Binder;)Lcom/aol/mobile/sdk/player/view/ControlsFeedbackHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/Binder$1;->val$player:Lcom/aol/mobile/sdk/player/Player;

    invoke-interface {v0, v1, p1, p2}, Lcom/aol/mobile/sdk/player/view/ControlsFeedbackHandler;->onScroll(Lcom/aol/mobile/sdk/player/Player;FF)V

    return-void
.end method

.method public onSeekStarted()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder$1;->this$0:Lcom/aol/mobile/sdk/player/Binder;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/Binder;->access$000(Lcom/aol/mobile/sdk/player/Binder;)Lcom/aol/mobile/sdk/player/view/ControlsFeedbackHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/Binder$1;->val$player:Lcom/aol/mobile/sdk/player/Player;

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/player/view/ControlsFeedbackHandler;->onSeekStarted(Lcom/aol/mobile/sdk/player/Player;)V

    return-void
.end method

.method public onSeekStopped()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder$1;->this$0:Lcom/aol/mobile/sdk/player/Binder;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/Binder;->access$000(Lcom/aol/mobile/sdk/player/Binder;)Lcom/aol/mobile/sdk/player/view/ControlsFeedbackHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/Binder$1;->val$player:Lcom/aol/mobile/sdk/player/Player;

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/player/view/ControlsFeedbackHandler;->onSeekStopped(Lcom/aol/mobile/sdk/player/Player;)V

    return-void
.end method

.method public onSeekTo(D)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder$1;->this$0:Lcom/aol/mobile/sdk/player/Binder;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/Binder;->access$000(Lcom/aol/mobile/sdk/player/Binder;)Lcom/aol/mobile/sdk/player/view/ControlsFeedbackHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/Binder$1;->val$player:Lcom/aol/mobile/sdk/player/Player;

    invoke-interface {v0, v1, p1, p2}, Lcom/aol/mobile/sdk/player/view/ControlsFeedbackHandler;->onSeekTo(Lcom/aol/mobile/sdk/player/Player;D)V

    return-void
.end method
