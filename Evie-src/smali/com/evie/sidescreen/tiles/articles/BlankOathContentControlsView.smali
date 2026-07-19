.class public Lcom/evie/sidescreen/tiles/articles/BlankOathContentControlsView;
.super Landroid/widget/FrameLayout;
.source "BlankOathContentControlsView.java"

# interfaces
.implements Lcom/aol/mobile/sdk/controls/ContentControls;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/articles/BlankOathContentControlsView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/evie/sidescreen/R$layout;->ss_oath_player_controls_overlay:I

    invoke-static {p1, v0, p0}, Lcom/evie/sidescreen/tiles/articles/BlankOathContentControlsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public render(Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isCastButtonVisible:Z

    .line 25
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isNextButtonEnabled:Z

    .line 26
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isNextButtonVisible:Z

    .line 27
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isLiveIndicatorVisible:Z

    .line 28
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isCompassViewVisible:Z

    .line 29
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isPrevButtonEnabled:Z

    .line 30
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isLoading:Z

    .line 31
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isPlayButtonVisible:Z

    .line 32
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isPauseButtonVisible:Z

    .line 33
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isSeekerVisible:Z

    .line 34
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isSeekForwardButtonVisible:Z

    .line 35
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isSeekBackButtonVisible:Z

    .line 36
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isTitleVisible:Z

    .line 37
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isTrackChooserButtonVisible:Z

    return-void
.end method

.method public setListener(Lcom/aol/mobile/sdk/controls/ContentControls$Listener;)V
    .locals 0

    return-void
.end method
