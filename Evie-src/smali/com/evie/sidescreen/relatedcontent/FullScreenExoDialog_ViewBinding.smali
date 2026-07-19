.class public Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog_ViewBinding;
.super Ljava/lang/Object;
.source "FullScreenExoDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog_ViewBinding;->target:Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;

    .line 26
    sget v0, Lcom/evie/sidescreen/R$id;->exo_fullscreen_player:I

    const-string v1, "field \'mPlayerView\'"

    const-class v2, Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object v0, p1, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 27
    sget v0, Lcom/evie/sidescreen/R$id;->fullscreen_controller:I

    const-string v1, "field \'mFullScreenController\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mFullScreenController:Landroid/view/View;

    .line 28
    sget v0, Lcom/evie/sidescreen/R$id;->exo_fullscreen_container:I

    const-string v1, "field \'mContainer\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mContainer:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog_ViewBinding;->target:Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog_ViewBinding;->target:Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;

    .line 38
    iput-object v1, v0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 39
    iput-object v1, v0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mFullScreenController:Landroid/view/View;

    .line 40
    iput-object v1, v0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mContainer:Landroid/view/View;

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
