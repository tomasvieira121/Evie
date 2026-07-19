.class public Lcom/aol/mobile/sdk/player/view/PlayerView;
.super Landroid/widget/FrameLayout;
.source "PlayerView.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/view/PlayerViewport;


# instance fields
.field private final adControls:Lcom/aol/mobile/sdk/controls/AdControls;

.field private adView:Lcom/aol/mobile/sdk/renderer/VideoRenderer;

.field private final hasRatio:Z

.field private final ratio:F

.field private rendererId:Ljava/lang/String;

.field private renderersRegistry:Lcom/aol/mobile/sdk/renderer/RenderersRegistry;

.field private videoControls:Lcom/aol/mobile/sdk/controls/ContentControls;

.field private videoView:Lcom/aol/mobile/sdk/renderer/VideoRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/aol/mobile/sdk/player/view/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 49
    new-instance v0, Lcom/aol/mobile/sdk/renderer/RenderersRegistry;

    invoke-direct {v0, p1}, Lcom/aol/mobile/sdk/renderer/RenderersRegistry;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/aol/mobile/sdk/player/view/PlayerView;-><init>(Landroid/content/Context;Lcom/aol/mobile/sdk/renderer/RenderersRegistry;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/aol/mobile/sdk/renderer/RenderersRegistry;Landroid/util/AttributeSet;)V
    .locals 4

    .line 53
    invoke-direct {p0, p1, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "com.onemobilesdk.videorenderer.flat@2.11"

    .line 41
    iput-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->rendererId:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->renderersRegistry:Lcom/aol/mobile/sdk/renderer/RenderersRegistry;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 56
    sget-object v2, Lcom/aol/mobile/sdk/R$styleable;->PlayerView:[I

    invoke-virtual {p1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 58
    :try_start_0
    sget v2, Lcom/aol/mobile/sdk/R$styleable;->PlayerView_ratio:I

    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ":"

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, ":"

    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 61
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v3, v0

    iput v3, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->ratio:F

    .line 62
    iput-boolean v2, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->hasRatio:Z

    goto :goto_0

    .line 64
    :cond_0
    iput v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->ratio:F

    .line 65
    iput-boolean v1, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->hasRatio:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :goto_0
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    .line 71
    :cond_1
    iput v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->ratio:F

    .line 72
    iput-boolean v1, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->hasRatio:Z

    .line 75
    :goto_1
    new-instance p3, Lcom/aol/mobile/sdk/controls/view/AdControlsView;

    invoke-direct {p3, p1}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->adControls:Lcom/aol/mobile/sdk/controls/AdControls;

    .line 76
    new-instance p3, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-direct {p3, p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->videoControls:Lcom/aol/mobile/sdk/controls/ContentControls;

    const-string p3, "com.onemobilesdk.videorenderer.flat@2.11"

    .line 77
    invoke-virtual {p2, p3, p1}, Lcom/aol/mobile/sdk/renderer/RenderersRegistry;->getRenderer(Ljava/lang/String;Landroid/content/Context;)Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    move-result-object p3

    iput-object p3, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->adView:Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    .line 78
    iget-object p3, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->rendererId:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/aol/mobile/sdk/renderer/RenderersRegistry;->getRenderer(Ljava/lang/String;Landroid/content/Context;)Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    move-result-object p1

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->videoView:Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    .line 80
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/view/PlayerView;->setInternalViews()V

    .line 82
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->videoControls:Lcom/aol/mobile/sdk/controls/ContentControls;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->adControls:Lcom/aol/mobile/sdk/controls/AdControls;

    check-cast p1, Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private renderContentRenderer(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->rendererId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->rendererId:Ljava/lang/String;

    .line 158
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->videoView:Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    invoke-interface {p1}, Lcom/aol/mobile/sdk/renderer/VideoRenderer;->dispose()V

    .line 159
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->renderersRegistry:Lcom/aol/mobile/sdk/renderer/RenderersRegistry;

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->rendererId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/view/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/aol/mobile/sdk/renderer/RenderersRegistry;->getRenderer(Ljava/lang/String;Landroid/content/Context;)Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    move-result-object p1

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->videoView:Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    .line 160
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/view/PlayerView;->setInternalViews()V

    :cond_0
    return-void
.end method

.method private setInternalViews()V
    .locals 3

    .line 97
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/view/PlayerView;->removeAllViews()V

    .line 98
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->adView:Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/view/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/aol/mobile/sdk/controls/R$dimen;->ad_controls_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 100
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->videoView:Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/aol/mobile/sdk/player/view/PlayerView;->addView(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->adView:Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/aol/mobile/sdk/player/view/PlayerView;->addView(Landroid/view/View;)V

    .line 102
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->videoControls:Lcom/aol/mobile/sdk/controls/ContentControls;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/aol/mobile/sdk/player/view/PlayerView;->addView(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->adControls:Lcom/aol/mobile/sdk/controls/AdControls;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/aol/mobile/sdk/player/view/PlayerView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->videoView:Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    check-cast v0, Landroid/view/View;

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 93
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispose()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->videoView:Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->videoView:Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    invoke-interface {v0}, Lcom/aol/mobile/sdk/renderer/VideoRenderer;->dispose()V

    .line 121
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->adView:Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->adView:Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    invoke-interface {v0}, Lcom/aol/mobile/sdk/renderer/VideoRenderer;->dispose()V

    .line 124
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->videoControls:Lcom/aol/mobile/sdk/controls/ContentControls;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->adControls:Lcom/aol/mobile/sdk/controls/AdControls;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getAdControls()Lcom/aol/mobile/sdk/controls/AdControls;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->adControls:Lcom/aol/mobile/sdk/controls/AdControls;

    return-object v0
.end method

.method public getAdVideoRenderer()Lcom/aol/mobile/sdk/renderer/VideoRenderer;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->adView:Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    return-object v0
.end method

.method public getContentControls()Lcom/aol/mobile/sdk/controls/ContentControls;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->videoControls:Lcom/aol/mobile/sdk/controls/ContentControls;

    return-object v0
.end method

.method public getContentVideoRenderer()Lcom/aol/mobile/sdk/renderer/VideoRenderer;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->videoView:Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->hasRatio:Z

    if-nez v0, :cond_0

    .line 109
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    .line 111
    :cond_0
    iget p2, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->ratio:F

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/view/PlayerView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 112
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public render(Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;)V
    .locals 2

    .line 148
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;->contentRendererId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/player/view/PlayerView;->renderContentRenderer(Ljava/lang/String;)V

    .line 149
    iget-boolean v0, p1, Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;->isAdControlsVisible:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->adControls:Lcom/aol/mobile/sdk/controls/AdControls;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    .line 150
    iget-boolean v0, p1, Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;->isContentControlsVisible:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->videoControls:Lcom/aol/mobile/sdk/controls/ContentControls;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    .line 151
    iget-boolean v0, p1, Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;->isAdVisible:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->adView:Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    .line 152
    iget-boolean p1, p1, Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;->isContentVisible:Z

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->videoView:Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    check-cast v0, Landroid/view/View;

    invoke-static {p1, v0}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    return-void
.end method

.method public setContentControls(Lcom/aol/mobile/sdk/controls/ContentControls;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/view/PlayerView;->videoControls:Lcom/aol/mobile/sdk/controls/ContentControls;

    .line 137
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/view/PlayerView;->setInternalViews()V

    return-void
.end method
