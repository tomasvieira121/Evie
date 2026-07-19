.class public Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "FullScreenControllerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment$OnFragmentInteractionListener;
    }
.end annotation


# static fields
.field private static final ID_OATH:I

.field private static final ID_YT:I


# instance fields
.field mContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mControllerViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

.field mControls:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mDialog:Landroid/app/Dialog;

.field private mFragmentInteractionListener:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment$OnFragmentInteractionListener;

.field private mFragmentView:Landroid/view/View;

.field private mIsPlayingAd:Z

.field private mPeekyControls:Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;

.field private mPlayerDuration:J

.field private mPlayerPosition:J

.field private mPlayerShouldPlay:Z

.field private mShouldUseDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_related_fullscreen_fragment:I

    sput v0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->ID_OATH:I

    sget v0, Lcom/evie/sidescreen/R$layout;->ss_related_fullscreen_controller:I

    sput v0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->ID_YT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mIsPlayingAd:Z

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;)Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment$OnFragmentInteractionListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mFragmentInteractionListener:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment$OnFragmentInteractionListener;

    return-object p0
.end method

.method static newInstance(ZZJJZ)Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;
    .locals 3

    .line 66
    new-instance v0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;

    invoke-direct {v0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;-><init>()V

    .line 67
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "use_dialog"

    .line 68
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "is_playing_ad"

    .line 69
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "player_position"

    .line 70
    invoke-virtual {v1, p0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "player_duration"

    .line 71
    invoke-virtual {v1, p0, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "player_should_play"

    .line 72
    invoke-virtual {v1, p0, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public exitFullScreen()V
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mDialog:Landroid/app/Dialog;

    check-cast v0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;

    invoke-virtual {v0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->exitFullScreen()V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mControllerViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->bindSmallScreenControls()V

    .line 174
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mPeekyControls:Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;

    invoke-virtual {v0}, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->dispose()V

    .line 175
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->dismissAllowingStateLoss()V

    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5

    .line 79
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 80
    instance-of v0, p1, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_1

    .line 81
    check-cast p1, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment$OnFragmentInteractionListener;

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mFragmentInteractionListener:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment$OnFragmentInteractionListener;

    .line 82
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mFragmentInteractionListener:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment$OnFragmentInteractionListener;

    invoke-interface {p1}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment$OnFragmentInteractionListener;->getVideoControlsViewHolder()Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mControllerViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    .line 88
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "use_dialog"

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mShouldUseDialog:Z

    const-string v0, "is_playing_ad"

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mIsPlayingAd:Z

    const-string v0, "player_position"

    const-wide/16 v1, -0x1

    .line 92
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mPlayerPosition:J

    const-string v0, "player_duration"

    .line 93
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mPlayerDuration:J

    const-string v0, "player_should_play"

    const/4 v1, 0x1

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mPlayerShouldPlay:Z

    :cond_0
    return-void

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 155
    new-instance p1, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment$1;

    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/evie/sidescreen/R$style;->DialogTheme:I

    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mControllerViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment$1;-><init>(Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;Landroid/content/Context;ILcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;)V

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mDialog:Landroid/app/Dialog;

    .line 162
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 166
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 109
    iget-boolean p3, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mShouldUseDialog:Z

    invoke-virtual {p0, p3}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->setShowsDialog(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->getShowsDialog()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 116
    :cond_0
    sget p3, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->ID_OATH:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mFragmentView:Landroid/view/View;

    .line 118
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mFragmentView:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 119
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mControllerViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    iget-object p2, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mFragmentView:Landroid/view/View;

    sget p3, Lcom/evie/sidescreen/R$id;->fullscreen_controller:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->bindFullScreenControls(Landroid/view/View;)V

    .line 120
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mControllerViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setExpand(Z)V

    .line 122
    new-instance p1, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;

    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mControls:Landroid/view/View;

    iget-object v4, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mContainer:Landroid/view/View;

    iget-object p2, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mControllerViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    iget-object v5, p2, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/View;Landroid/view/View;Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder$ActionHandler;)V

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mPeekyControls:Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;

    .line 125
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mFragmentView:Landroid/view/View;

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 130
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 132
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mControllerViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    iget-wide v1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mPlayerPosition:J

    invoke-virtual {v0, v1, v2}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPosition(J)V

    .line 133
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mControllerViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    iget-wide v1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mPlayerDuration:J

    invoke-virtual {v0, v1, v2}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setDuration(J)V

    .line 134
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mControllerViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    iget-boolean v1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mPlayerShouldPlay:Z

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPlaying(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mPeekyControls:Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;

    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->initialize(Landroid/content/Context;)V

    .line 142
    iget-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mIsPlayingAd:Z

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->turnOffControls()V

    :cond_1
    const/16 v0, 0x1006

    .line 148
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public turnOffControls()V
    .locals 2

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mIsPlayingAd:Z

    .line 181
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mPeekyControls:Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;

    invoke-virtual {v0}, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->hideControls()V

    .line 182
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mPeekyControls:Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->setClickable(Z)V

    return-void
.end method

.method public turnOnControls()V
    .locals 2

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mIsPlayingAd:Z

    .line 187
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mPeekyControls:Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->setClickable(Z)V

    return-void
.end method
