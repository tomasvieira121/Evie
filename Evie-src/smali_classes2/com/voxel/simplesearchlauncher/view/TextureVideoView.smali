.class public Lcom/voxel/simplesearchlauncher/view/TextureVideoView;
.super Landroid/view/TextureView;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/view/TextureVideoView$MediaPlayerListener;,
        Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;,
        Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.voxel.simplesearchlauncher.view.TextureVideoView"


# instance fields
.field private mIsDataSourceSet:Z

.field private mIsPlayCalled:Z

.field private mIsVideoPrepared:Z

.field private mIsViewAvailable:Z

.field private mListener:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$MediaPlayerListener;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mScaleType:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

.field private mState:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

.field private mVideoHeight:F

.field private mVideoWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->initView()V

    return-void
.end method

.method static synthetic access$002(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;F)F
    .locals 0

    .line 44
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mVideoWidth:F

    return p1
.end method

.method static synthetic access$102(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;F)F
    .locals 0

    .line 44
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mVideoHeight:F

    return p1
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->updateTextureViewSize()V

    return-void
.end method

.method static synthetic access$302(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;)Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mState:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    return-object p1
.end method

.method static synthetic access$400(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;)Lcom/voxel/simplesearchlauncher/view/TextureVideoView$MediaPlayerListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mListener:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$MediaPlayerListener;

    return-object p0
.end method

.method static synthetic access$502(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mIsVideoPrepared:Z

    return p1
.end method

.method static synthetic access$600(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mIsPlayCalled:Z

    return p0
.end method

.method static synthetic access$700(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mIsViewAvailable:Z

    return p0
.end method

.method private initPlayer()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :goto_0
    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mIsVideoPrepared:Z

    .line 149
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mIsPlayCalled:Z

    .line 150
    sget-object v0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;->UNINITIALIZED:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mState:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    return-void
.end method

.method private initView()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->initPlayer()V

    .line 90
    sget-object v0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;->CENTER_CROP:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->setScaleType(Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;)V

    .line 91
    invoke-virtual {p0, p0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method static log(Ljava/lang/String;)V
    .locals 1

    .line 371
    sget-object v0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private prepare()V
    .locals 2

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$1;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$1;-><init>(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 212
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$2;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$2;-><init>(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 226
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 229
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$3;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$3;-><init>(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 249
    sget-object v1, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 247
    sget-object v1, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    .line 245
    sget-object v1, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateTextureViewSize()V
    .locals 7

    .line 99
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 100
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 102
    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mVideoWidth:F

    div-float/2addr v2, v0

    .line 103
    iget v3, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mVideoHeight:F

    div-float/2addr v3, v1

    .line 107
    sget-object v4, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$4;->$SwitchMap$com$voxel$simplesearchlauncher$view$TextureVideoView$ScaleType:[I

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mScaleType:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

    invoke-virtual {v5}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    packed-switch v4, :pswitch_data_0

    div-float v4, v0, v6

    float-to-int v5, v4

    div-float v4, v1, v6

    float-to-int v4, v4

    goto :goto_0

    :pswitch_0
    float-to-int v4, v0

    .line 121
    div-int/lit8 v5, v4, 0x2

    float-to-int v4, v1

    goto :goto_0

    :pswitch_1
    div-float v4, v0, v6

    float-to-int v5, v4

    div-float v4, v1, v6

    float-to-int v4, v4

    goto :goto_0

    :pswitch_2
    float-to-int v5, v0

    float-to-int v4, v1

    goto :goto_0

    :pswitch_3
    const/4 v4, 0x0

    .line 130
    :goto_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v5, v5

    int-to-float v4, v4

    .line 132
    invoke-virtual {v6, v2, v3, v5, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 135
    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mVideoWidth:F

    div-float/2addr v0, v2

    .line 136
    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mVideoHeight:F

    div-float/2addr v1, v2

    .line 137
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 138
    invoke-virtual {v6, v0, v0, v5, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 139
    invoke-virtual {p0, v6}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->setTransform(Landroid/graphics/Matrix;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 393
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 394
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    const/4 p1, 0x1

    .line 395
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mIsViewAvailable:Z

    .line 396
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mIsDataSourceSet:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mIsPlayCalled:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mIsVideoPrepared:Z

    if-eqz p1, :cond_0

    const-string p1, "View is available and play() was called."

    .line 397
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->log(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->play()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public play()V
    .locals 2

    .line 260
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mIsDataSourceSet:Z

    if-nez v0, :cond_0

    const-string v0, "play() was called but data source was not set."

    .line 261
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mIsPlayCalled:Z

    .line 267
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mIsVideoPrepared:Z

    if-nez v0, :cond_1

    const-string v0, "play() was called but video is not prepared yet, waiting."

    .line 268
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->log(Ljava/lang/String;)V

    return-void

    .line 272
    :cond_1
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mIsViewAvailable:Z

    if-nez v0, :cond_2

    const-string v0, "play() was called but view is not available yet, waiting."

    .line 273
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->log(Ljava/lang/String;)V

    return-void

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mState:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    sget-object v1, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;->PLAY:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    if-ne v0, v1, :cond_3

    const-string v0, "play() was called but video is already playing."

    .line 278
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->log(Ljava/lang/String;)V

    return-void

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mState:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    sget-object v1, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;->PAUSE:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    if-ne v0, v1, :cond_4

    const-string v0, "play() was called but video is paused, resuming."

    .line 283
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->log(Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;->PLAY:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mState:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    .line 285
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void

    .line 289
    :cond_4
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mState:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    sget-object v1, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;->END:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mState:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    sget-object v1, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;->STOP:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 297
    :cond_5
    sget-object v0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;->PLAY:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mState:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    .line 298
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void

    :cond_6
    :goto_0
    const-string v0, "play() was called but video already ended, starting over."

    .line 290
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->log(Ljava/lang/String;)V

    .line 291
    sget-object v0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;->PLAY:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mState:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    .line 292
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 293
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 172
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->initPlayer()V

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 p1, 0x1

    .line 176
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mIsDataSourceSet:Z

    .line 177
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 179
    sget-object p2, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 6

    .line 187
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->initPlayer()V

    .line 190
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 191
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 192
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    const/4 p1, 0x1

    .line 193
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mIsDataSourceSet:Z

    .line 194
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 196
    sget-object v0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1

    .line 157
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->initPlayer()V

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mIsDataSourceSet:Z

    .line 162
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 164
    sget-object v0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setListener(Lcom/voxel/simplesearchlauncher/view/TextureVideoView$MediaPlayerListener;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mListener:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$MediaPlayerListener;

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public setScaleType(Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mScaleType:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mState:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    sget-object v1, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;->STOP:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    if-ne v0, v1, :cond_0

    const-string v0, "stop() was called but video already stopped."

    .line 332
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->log(Ljava/lang/String;)V

    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mState:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    sget-object v1, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;->END:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    if-ne v0, v1, :cond_1

    const-string v0, "stop() was called but video already ended."

    .line 337
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->log(Ljava/lang/String;)V

    return-void

    .line 341
    :cond_1
    sget-object v0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;->STOP:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mState:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    .line 342
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 344
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_2
    return-void
.end method
