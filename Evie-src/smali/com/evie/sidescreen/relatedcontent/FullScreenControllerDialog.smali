.class public Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;
.super Landroid/app/Dialog;
.source "FullScreenControllerDialog.java"


# static fields
.field private static final ID:I


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

.field private mPeekyControls:Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_related_fullscreen_controller:I

    sput v0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 40
    iput-object p3, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->mControllerViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    .line 41
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    const p2, 0x106000d

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/16 p2, 0x20

    .line 45
    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setFlags(II)V

    const/high16 p2, 0x40000

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public exitFullScreen()V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->dismiss()V

    .line 73
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->mControllerViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->bindSmallScreenControls()V

    .line 74
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->mPeekyControls:Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;

    invoke-virtual {v0}, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->dispose()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 52
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget p1, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->ID:I

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->setContentView(I)V

    .line 54
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Dialog;)Lbutterknife/Unbinder;

    .line 55
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->mControllerViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    sget v0, Lcom/evie/sidescreen/R$id;->fullscreen_controller:I

    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->bindFullScreenControls(Landroid/view/View;)V

    .line 56
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->mControllerViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setExpand(Z)V

    .line 57
    new-instance p1, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;

    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v4, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->mControls:Landroid/view/View;

    iget-object v5, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->mContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->mControllerViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    iget-object v6, v0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/View;Landroid/view/View;Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder$ActionHandler;)V

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->mPeekyControls:Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;

    .line 58
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 60
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/evie/sidescreen/R$dimen;->ss_popup_video_viewer_playback_control_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 66
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 67
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->mPeekyControls:Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;

    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 81
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->mPeekyControls:Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;

    invoke-virtual {p1}, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->toggleController()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public show()V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 100
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 103
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method
