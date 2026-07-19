.class public Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler_ViewBinding;
.super Ljava/lang/Object;
.source "ExoVideoHandler_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;Landroid/view/View;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler_ViewBinding;->target:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;

    .line 22
    sget v0, Lcom/evie/sidescreen/R$id;->exoplayer_container:I

    const-string v1, "field \'mExoplayerContainer\'"

    const-class v2, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object v0, p1, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoplayerContainer:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 23
    sget v0, Lcom/evie/sidescreen/R$id;->simple_exoplayer_view:I

    const-string v1, "field \'mSimpleExoPlayerView\'"

    const-class v2, Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object p2, p1, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mSimpleExoPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler_ViewBinding;->target:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler_ViewBinding;->target:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;

    .line 33
    iput-object v1, v0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoplayerContainer:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 34
    iput-object v1, v0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mSimpleExoPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
