.class public Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "VideoControlsViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

.field private view7f0b00bd:Landroid/view/View;

.field private view7f0b00be:Landroid/view/View;

.field private view7f0b00c4:Landroid/view/View;

.field private view7f0b00c5:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;Landroid/view/View;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    .line 33
    sget v0, Lcom/evie/sidescreen/R$id;->exo_play:I

    const-string v1, "field \'mPlayButton\' and method \'onPlayClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 34
    sget v1, Lcom/evie/sidescreen/R$id;->exo_play:I

    const-string v2, "field \'mPlayButton\'"

    const-class v3, Landroid/widget/ImageButton;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p1, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mPlayButton:Landroid/widget/ImageButton;

    .line 35
    iput-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;->view7f0b00c5:Landroid/view/View;

    .line 36
    new-instance v1, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding$1;-><init>(Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    sget v0, Lcom/evie/sidescreen/R$id;->exo_pause:I

    const-string v1, "field \'mPauseButton\' and method \'onPauseClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 43
    sget v1, Lcom/evie/sidescreen/R$id;->exo_pause:I

    const-string v2, "field \'mPauseButton\'"

    const-class v3, Landroid/widget/ImageButton;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p1, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mPauseButton:Landroid/widget/ImageButton;

    .line 44
    iput-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;->view7f0b00c4:Landroid/view/View;

    .line 45
    new-instance v1, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding$2;-><init>(Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    sget v0, Lcom/evie/sidescreen/R$id;->exo_position:I

    const-string v1, "field \'mPositionText\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mPositionText:Landroid/widget/TextView;

    .line 52
    sget v0, Lcom/evie/sidescreen/R$id;->exo_progress:I

    const-string v1, "field \'mProgressBar\'"

    const-class v2, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mProgressBar:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    .line 53
    sget v0, Lcom/evie/sidescreen/R$id;->exo_duration:I

    const-string v1, "field \'mDurationText\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mDurationText:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/evie/sidescreen/R$id;->exo_enter_fullscreen_button:I

    const-string v1, "field \'mEnterFullScreenButton\' and method \'onEnterFullScreen\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 55
    sget v1, Lcom/evie/sidescreen/R$id;->exo_enter_fullscreen_button:I

    const-string v2, "field \'mEnterFullScreenButton\'"

    const-class v3, Landroid/widget/ImageButton;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p1, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mEnterFullScreenButton:Landroid/widget/ImageButton;

    .line 56
    iput-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;->view7f0b00bd:Landroid/view/View;

    .line 57
    new-instance v1, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding$3;-><init>(Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget v0, Lcom/evie/sidescreen/R$id;->exo_exit_fullscreen_button:I

    const-string v1, "field \'mExitFullScreenButton\' and method \'onExitFullScreen\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 64
    sget v0, Lcom/evie/sidescreen/R$id;->exo_exit_fullscreen_button:I

    const-string v1, "field \'mExitFullScreenButton\'"

    const-class v2, Landroid/widget/ImageButton;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mExitFullScreenButton:Landroid/widget/ImageButton;

    .line 65
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;->view7f0b00be:Landroid/view/View;

    .line 66
    new-instance v0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding$4;-><init>(Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    .line 81
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mPlayButton:Landroid/widget/ImageButton;

    .line 82
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mPauseButton:Landroid/widget/ImageButton;

    .line 83
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mPositionText:Landroid/widget/TextView;

    .line 84
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mProgressBar:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    .line 85
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mDurationText:Landroid/widget/TextView;

    .line 86
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mEnterFullScreenButton:Landroid/widget/ImageButton;

    .line 87
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mExitFullScreenButton:Landroid/widget/ImageButton;

    .line 89
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;->view7f0b00c5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;->view7f0b00c5:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;->view7f0b00c4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;->view7f0b00c4:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;->view7f0b00bd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;->view7f0b00bd:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;->view7f0b00be:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;->view7f0b00be:Landroid/view/View;

    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
