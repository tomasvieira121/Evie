.class public Lcom/android/photos/views/TiledImageView;
.super Landroid/widget/FrameLayout;
.source "TiledImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/photos/views/TiledImageView$TileRenderer;,
        Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    }
.end annotation


# instance fields
.field private mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mFreeTextures:Ljava/lang/Runnable;

.field mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field mInvalPending:Z

.field protected mLock:Ljava/lang/Object;

.field protected mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

.field private mTempRectF:Landroid/graphics/RectF;

.field private mValues:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 48
    iput-boolean p2, p0, Lcom/android/photos/views/TiledImageView;->mInvalPending:Z

    const/16 v0, 0x9

    .line 63
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/photos/views/TiledImageView;->mValues:[F

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageView;->mLock:Ljava/lang/Object;

    .line 100
    new-instance v0, Lcom/android/photos/views/TiledImageView$1;

    invoke-direct {v0, p0}, Lcom/android/photos/views/TiledImageView$1;-><init>(Lcom/android/photos/views/TiledImageView;)V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageView;->mFreeTextures:Ljava/lang/Runnable;

    .line 170
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    .line 77
    new-instance v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    invoke-direct {v0}, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    .line 78
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    new-instance v1, Lcom/android/photos/views/TiledImageRenderer;

    invoke-direct {v1, p0}, Lcom/android/photos/views/TiledImageRenderer;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/android/photos/views/TiledImageRenderer;

    .line 79
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 80
    iget-object p1, p0, Lcom/android/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 81
    iget-object p1, p0, Lcom/android/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v0, Lcom/android/photos/views/TiledImageView$TileRenderer;

    invoke-direct {v0, p0}, Lcom/android/photos/views/TiledImageView$TileRenderer;-><init>(Lcom/android/photos/views/TiledImageView;)V

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 82
    iget-object p1, p0, Lcom/android/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1, p2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 83
    iget-object p1, p0, Lcom/android/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/android/photos/views/TiledImageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private invalOnVsync()V
    .locals 2

    .line 158
    iget-boolean v0, p0, Lcom/android/photos/views/TiledImageView;->mInvalPending:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/android/photos/views/TiledImageView;->mInvalPending:Z

    .line 160
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/android/photos/views/-$$Lambda$TiledImageView$mBaKafax0zul7Db-CieDOfe0P70;

    invoke-direct {v0, p0}, Lcom/android/photos/views/-$$Lambda$TiledImageView$mBaKafax0zul7Db-CieDOfe0P70;-><init>(Lcom/android/photos/views/TiledImageView;)V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 166
    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/photos/views/TiledImageView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$invalOnVsync$0(Lcom/android/photos/views/TiledImageView;J)V
    .locals 0

    const/4 p1, 0x0

    .line 162
    iput-boolean p1, p0, Lcom/android/photos/views/TiledImageView;->mInvalPending:Z

    .line 163
    iget-object p1, p0, Lcom/android/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method private updateScaleIfNecessaryLocked(Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 143
    iget-object v0, p1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v1}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 149
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v2}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 147
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/android/photos/views/TiledImageView;->mFreeTextures:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getTileSource()Lcom/android/photos/views/TiledImageRenderer$TileSource;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    return-object v0
.end method

.method public invalidate()V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/android/photos/views/TiledImageView;->invalOnVsync()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 136
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 137
    iget-object p1, p0, Lcom/android/photos/views/TiledImageView;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 138
    :try_start_0
    iget-object p2, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    invoke-direct {p0, p2}, Lcom/android/photos/views/TiledImageView;->updateScaleIfNecessaryLocked(Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;)V

    .line 139
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public setTileSource(Lcom/android/photos/views/TiledImageRenderer$TileSource;Ljava/lang/Runnable;)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iput-object p1, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    .line 119
    iget-object v1, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iput-object p2, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->isReadyCallback:Ljava/lang/Runnable;

    .line 120
    iget-object p2, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput v2, p2, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerX:I

    .line 121
    iget-object p2, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput v2, p2, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerY:I

    .line 122
    iget-object p2, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getRotation()I

    move-result v1

    :cond_2
    iput v1, p2, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->rotation:I

    .line 123
    iget-object p1, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    const/4 p2, 0x0

    iput p2, p1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 124
    iget-object p1, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    invoke-direct {p0, p1}, Lcom/android/photos/views/TiledImageView;->updateScaleIfNecessaryLocked(Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;)V

    .line 125
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageView;->invalidate()V

    return-void

    :catchall_0
    move-exception p1

    .line 125
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVisibility(I)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    return-void
.end method
