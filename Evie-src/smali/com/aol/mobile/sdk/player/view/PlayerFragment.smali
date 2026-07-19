.class public final Lcom/aol/mobile/sdk/player/view/PlayerFragment;
.super Landroid/app/Fragment;
.source "PlayerFragment.java"


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PublicApi;
.end annotation


# instance fields
.field private final binder:Lcom/aol/mobile/sdk/player/Binder;

.field private playerView:Lcom/aol/mobile/sdk/player/view/PlayerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 21
    new-instance v0, Lcom/aol/mobile/sdk/player/Binder;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/Binder;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerFragment;->binder:Lcom/aol/mobile/sdk/player/Binder;

    return-void
.end method


# virtual methods
.method public final getBinder()Lcom/aol/mobile/sdk/player/Binder;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerFragment;->binder:Lcom/aol/mobile/sdk/player/Binder;

    return-object v0
.end method

.method public getPlayerView()Lcom/aol/mobile/sdk/player/view/PlayerView;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerFragment;->playerView:Lcom/aol/mobile/sdk/player/view/PlayerView;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 37
    sget p3, Lcom/aol/mobile/sdk/R$layout;->fragment_player:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/aol/mobile/sdk/player/view/PlayerView;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/view/PlayerFragment;->playerView:Lcom/aol/mobile/sdk/player/view/PlayerView;

    .line 38
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/view/PlayerFragment;->binder:Lcom/aol/mobile/sdk/player/Binder;

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/view/PlayerFragment;->playerView:Lcom/aol/mobile/sdk/player/view/PlayerView;

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/Binder;->setPlayerView(Lcom/aol/mobile/sdk/player/view/PlayerViewport;)V

    .line 40
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/view/PlayerFragment;->playerView:Lcom/aol/mobile/sdk/player/view/PlayerView;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerFragment;->binder:Lcom/aol/mobile/sdk/player/Binder;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Binder;->onDestroy()V

    .line 66
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerFragment;->playerView:Lcom/aol/mobile/sdk/player/view/PlayerView;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/view/PlayerView;->dispose()V

    .line 58
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerFragment;->binder:Lcom/aol/mobile/sdk/player/Binder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/Binder;->setPlayerView(Lcom/aol/mobile/sdk/player/view/PlayerViewport;)V

    .line 59
    iput-object v1, p0, Lcom/aol/mobile/sdk/player/view/PlayerFragment;->playerView:Lcom/aol/mobile/sdk/player/view/PlayerView;

    .line 60
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 51
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 52
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerFragment;->binder:Lcom/aol/mobile/sdk/player/Binder;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Binder;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 45
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 46
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerFragment;->binder:Lcom/aol/mobile/sdk/player/Binder;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Binder;->onResume()V

    return-void
.end method
