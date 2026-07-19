.class public Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;
.super Landroid/app/Dialog;
.source "FullScreenExoDialog.java"


# static fields
.field public static final ID:I


# instance fields
.field mContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mControllerViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

.field mFullScreenController:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mOldView:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private mPeekyControls:Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;

.field private mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_related_fullscreen_dialog:I

    sput v0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 37
    iput-object p3, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mControllerViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    return-void
.end method


# virtual methods
.method public enterFullScreen(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 48
    iput-object p2, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mOldView:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 49
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->show()V

    return-void
.end method

.method public exitFullScreen(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1, v0, p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->switchTargetView(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/ui/PlayerView;Lcom/google/android/exoplayer2/ui/PlayerView;)V

    .line 85
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mControllerViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->bindSmallScreenControls()V

    .line 86
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mPeekyControls:Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;

    invoke-virtual {p1}, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->dispose()V

    .line 87
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 59
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget p1, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->ID:I

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->setContentView(I)V

    .line 61
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Dialog;)Lbutterknife/Unbinder;

    .line 62
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mOldView:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->switchTargetView(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/ui/PlayerView;Lcom/google/android/exoplayer2/ui/PlayerView;)V

    .line 63
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mControllerViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    sget v0, Lcom/evie/sidescreen/R$id;->fullscreen_controller:I

    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->bindFullScreenControls(Landroid/view/View;)V

    .line 64
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mControllerViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setExpand(Z)V

    .line 65
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setClickable(Z)V

    .line 66
    new-instance p1, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;

    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v4, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mFullScreenController:Landroid/view/View;

    iget-object v5, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mControllerViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    iget-object v6, v0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/View;Landroid/view/View;Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder$ActionHandler;)V

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mPeekyControls:Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 71
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 72
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mPeekyControls:Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;

    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->initialize(Landroid/content/Context;)V

    return-void
.end method
