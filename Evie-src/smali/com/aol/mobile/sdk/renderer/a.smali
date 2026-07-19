.class Lcom/aol/mobile/sdk/renderer/a;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/aol/mobile/sdk/renderer/VideoRenderer;
.implements Lcom/aol/mobile/sdk/renderer/i;
.implements Lcom/google/android/exoplayer2/Player$EventListener;
.implements Lcom/google/android/exoplayer2/video/VideoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/renderer/a$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

.field protected callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

.field private final d:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

.field private final e:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

.field private final f:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private final g:Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

.field private final h:Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

.field private final i:Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;

.field private final j:Lcom/google/android/exoplayer2/ui/SubtitleView;

.field private k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private l:Lcom/aol/mobile/sdk/renderer/a$a;

.field private m:Z

.field private n:Landroid/view/View;

.field private o:Landroid/view/Surface;

.field private p:Landroid/content/Context;

.field private q:Lcom/aol/mobile/sdk/renderer/AudioTrack;

.field private r:Lcom/aol/mobile/sdk/renderer/TextTrack;

.field private s:Ljava/lang/Long;

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/aol/mobile/sdk/renderer/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/aol/mobile/sdk/renderer/a;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->b:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->c:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->c:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->d:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection$Factory;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->e:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->d:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->f:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    new-instance v0, Lcom/aol/mobile/sdk/renderer/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aol/mobile/sdk/renderer/a$a;-><init>(Lcom/aol/mobile/sdk/renderer/a;Lcom/aol/mobile/sdk/renderer/a$1;)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->l:Lcom/aol/mobile/sdk/renderer/a$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aol/mobile/sdk/renderer/a;->m:Z

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/aol/mobile/sdk/renderer/a;->v:I

    iput v0, p0, Lcom/aol/mobile/sdk/renderer/a;->w:I

    iput v0, p0, Lcom/aol/mobile/sdk/renderer/a;->x:I

    iput v0, p0, Lcom/aol/mobile/sdk/renderer/a;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aol/mobile/sdk/renderer/a;->z:Z

    iput-boolean v0, p0, Lcom/aol/mobile/sdk/renderer/a;->A:Z

    new-instance v1, Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->j:Lcom/google/android/exoplayer2/ui/SubtitleView;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    const-string v2, "VideoSDK"

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aol/mobile/sdk/renderer/a;->c:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    const/16 v5, 0x1f40

    const/16 v6, 0x1f40

    const/4 v7, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZ)V

    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    iget-object v3, p0, Lcom/aol/mobile/sdk/renderer/a;->c:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v2, p1, v3, v1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->setAllowChunklessPreparation(Z)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->h:Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->g:Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    new-instance v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->i:Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->p:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 15

    move-object v0, p0

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget-object v2, v0, Lcom/aol/mobile/sdk/renderer/a;->g:Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    iget-object v4, v0, Lcom/aol/mobile/sdk/renderer/a;->b:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v4, v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object v1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_2

    const-string v7, "application/x-subrip"

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    move-object/from16 v6, p2

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v14}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iget-object v4, v0, Lcom/aol/mobile/sdk/renderer/a;->i:Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v4, v5, v2, v6, v7}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;

    move-result-object v2

    new-instance v4, Lcom/google/android/exoplayer2/source/MergingMediaSource;

    new-array v3, v3, [Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>([Lcom/google/android/exoplayer2/source/MediaSource;)V

    move-object v1, v4

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/aol/mobile/sdk/renderer/a;->h:Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    iget-object v3, v0, Lcom/aol/mobile/sdk/renderer/a;->b:Landroid/os/Handler;

    new-instance v4, Lcom/aol/mobile/sdk/renderer/a$1;

    invoke-direct {v4, p0}, Lcom/aol/mobile/sdk/renderer/a$1;-><init>(Lcom/aol/mobile/sdk/renderer/a;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object v1

    :cond_2
    :goto_1
    return-object v1
.end method

.method private a()V
    .locals 8

    iget v0, p0, Lcom/aol/mobile/sdk/renderer/a;->y:I

    if-lez v0, :cond_6

    iget v1, p0, Lcom/aol/mobile/sdk/renderer/a;->x:I

    if-lez v1, :cond_6

    iget v2, p0, Lcom/aol/mobile/sdk/renderer/a;->v:I

    if-lez v2, :cond_6

    iget v3, p0, Lcom/aol/mobile/sdk/renderer/a;->w:I

    if-gtz v3, :cond_0

    goto :goto_2

    :cond_0
    int-to-float v4, v1

    int-to-float v5, v0

    div-float/2addr v4, v5

    int-to-float v5, v2

    int-to-float v6, v3

    div-float/2addr v5, v6

    iget-boolean v6, p0, Lcom/aol/mobile/sdk/renderer/a;->z:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v6, :cond_2

    if-gt v2, v1, :cond_2

    if-le v3, v0, :cond_1

    goto :goto_0

    :cond_1
    int-to-float v2, v2

    int-to-float v1, v1

    div-float v7, v2, v1

    int-to-float v1, v3

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    cmpl-float v0, v5, v4

    if-lez v0, :cond_3

    div-float v0, v4, v5

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/renderer/a;->A:Z

    if-eqz v0, :cond_4

    div-float v0, v5, v4

    move v7, v0

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->n:Landroid/view/View;

    instance-of v1, v1, Lcom/aol/mobile/sdk/renderer/j;

    if-eqz v1, :cond_5

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Lcom/aol/mobile/sdk/renderer/a;->x:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/aol/mobile/sdk/renderer/a;->y:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v7, v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->n:Landroid/view/View;

    check-cast v0, Lcom/aol/mobile/sdk/renderer/j;

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/renderer/j;->setTransform(Landroid/graphics/Matrix;)V

    :cond_5
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    if-eqz v0, :cond_6

    iget v1, p0, Lcom/aol/mobile/sdk/renderer/a;->x:I

    iget v2, p0, Lcom/aol/mobile/sdk/renderer/a;->y:I

    invoke-interface {v0, v1, v2}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onViewportResized(II)V

    :cond_6
    :goto_2
    return-void
.end method

.method private a(J)V
    .locals 5

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    :cond_0
    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onSeekPerformed()V

    :cond_1
    return-void
.end method

.method private a(Lcom/aol/mobile/sdk/renderer/AudioTrack;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->f:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->f:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v2, p1, Lcom/aol/mobile/sdk/renderer/AudioTrack;->b:Lcom/aol/mobile/sdk/renderer/AudioTrack$a;

    iget v2, v2, Lcom/aol/mobile/sdk/renderer/AudioTrack$a;->a:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->clearSelectionOverrides(I)V

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->f:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    iget-object v1, p1, Lcom/aol/mobile/sdk/renderer/AudioTrack;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/aol/mobile/sdk/renderer/AudioTrack;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->f:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/aol/mobile/sdk/renderer/AudioTrack;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p1, Lcom/aol/mobile/sdk/renderer/AudioTrack;->b:Lcom/aol/mobile/sdk/renderer/AudioTrack$a;

    iget v1, v1, Lcom/aol/mobile/sdk/renderer/AudioTrack$a;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    iget-object v2, p0, Lcom/aol/mobile/sdk/renderer/a;->e:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    iget-object v3, p1, Lcom/aol/mobile/sdk/renderer/AudioTrack;->b:Lcom/aol/mobile/sdk/renderer/AudioTrack$a;

    iget v3, v3, Lcom/aol/mobile/sdk/renderer/AudioTrack$a;->b:I

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/aol/mobile/sdk/renderer/AudioTrack;->b:Lcom/aol/mobile/sdk/renderer/AudioTrack$a;

    iget v6, v6, Lcom/aol/mobile/sdk/renderer/AudioTrack$a;->c:I

    aput v6, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;I[I)V

    iget-object v2, p0, Lcom/aol/mobile/sdk/renderer/a;->f:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object p1, p1, Lcom/aol/mobile/sdk/renderer/AudioTrack;->b:Lcom/aol/mobile/sdk/renderer/AudioTrack$a;

    iget p1, p1, Lcom/aol/mobile/sdk/renderer/AudioTrack$a;->a:I

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;)V

    :goto_1
    return-void
.end method

.method private a(Lcom/aol/mobile/sdk/renderer/TextTrack;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->f:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/aol/mobile/sdk/renderer/TextTrack;->a:Lcom/aol/mobile/sdk/renderer/TextTrack$a;

    iget v1, v1, Lcom/aol/mobile/sdk/renderer/TextTrack$a;->b:I

    const/4 v2, 0x1

    if-ltz v1, :cond_2

    iget-object v1, p1, Lcom/aol/mobile/sdk/renderer/TextTrack;->a:Lcom/aol/mobile/sdk/renderer/TextTrack$a;

    iget v1, v1, Lcom/aol/mobile/sdk/renderer/TextTrack$a;->c:I

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/aol/mobile/sdk/renderer/TextTrack;->a:Lcom/aol/mobile/sdk/renderer/TextTrack$a;

    iget v1, v1, Lcom/aol/mobile/sdk/renderer/TextTrack$a;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    iget-object v3, p0, Lcom/aol/mobile/sdk/renderer/a;->e:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    iget-object v4, p1, Lcom/aol/mobile/sdk/renderer/TextTrack;->a:Lcom/aol/mobile/sdk/renderer/TextTrack$a;

    iget v4, v4, Lcom/aol/mobile/sdk/renderer/TextTrack$a;->b:I

    new-array v2, v2, [I

    iget-object v5, p1, Lcom/aol/mobile/sdk/renderer/TextTrack;->a:Lcom/aol/mobile/sdk/renderer/TextTrack$a;

    iget v5, v5, Lcom/aol/mobile/sdk/renderer/TextTrack$a;->c:I

    const/4 v6, 0x0

    aput v5, v2, v6

    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;I[I)V

    iget-object v2, p0, Lcom/aol/mobile/sdk/renderer/a;->f:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v3, p1, Lcom/aol/mobile/sdk/renderer/TextTrack;->a:Lcom/aol/mobile/sdk/renderer/TextTrack$a;

    iget v3, v3, Lcom/aol/mobile/sdk/renderer/TextTrack$a;->a:I

    invoke-virtual {v2, v3, v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setRendererDisabled(IZ)V

    iget-object v2, p0, Lcom/aol/mobile/sdk/renderer/a;->f:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object p1, p1, Lcom/aol/mobile/sdk/renderer/TextTrack;->a:Lcom/aol/mobile/sdk/renderer/TextTrack$a;

    iget p1, p1, Lcom/aol/mobile/sdk/renderer/TextTrack$a;->a:I

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->f:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v1, p1, Lcom/aol/mobile/sdk/renderer/TextTrack;->a:Lcom/aol/mobile/sdk/renderer/TextTrack$a;

    iget v1, v1, Lcom/aol/mobile/sdk/renderer/TextTrack$a;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->clearSelectionOverrides(I)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->f:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object p1, p1, Lcom/aol/mobile/sdk/renderer/TextTrack;->a:Lcom/aol/mobile/sdk/renderer/TextTrack$a;

    iget p1, p1, Lcom/aol/mobile/sdk/renderer/TextTrack$a;->a:I

    invoke-virtual {v0, p1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setRendererDisabled(IZ)V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/aol/mobile/sdk/renderer/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/aol/mobile/sdk/renderer/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;)V
    .locals 2

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/renderer/a;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/renderer/a;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/renderer/a;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/renderer/a;->getHeight()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onViewportResized(II)V

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 2

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->f:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->f:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setRendererDisabled(IZ)V

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->j:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-boolean v0, p0, Lcom/aol/mobile/sdk/renderer/a;->m:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->o:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-boolean v0, p0, Lcom/aol/mobile/sdk/renderer/a;->t:Z

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method static synthetic a(Lcom/aol/mobile/sdk/renderer/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/aol/mobile/sdk/renderer/a;->t:Z

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "Unable to connect to"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Response code"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/aol/mobile/sdk/renderer/a;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object p0
.end method

.method private b()V
    .locals 3

    iget-boolean v0, p0, Lcom/aol/mobile/sdk/renderer/a;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aol/mobile/sdk/renderer/a;->t:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->l:Lcom/aol/mobile/sdk/renderer/a$a;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/renderer/a$a;->b()V

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onVideoPlaybackFlagUpdated(Z)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->s:Ljava/lang/Long;

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->B:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->l:Lcom/aol/mobile/sdk/renderer/a$a;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/renderer/a$a;->b()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->n:Landroid/view/View;

    instance-of v1, v1, Lcom/aol/mobile/sdk/renderer/j;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v2, p0, Lcom/aol/mobile/sdk/renderer/a;->n:Landroid/view/View;

    check-cast v2, Lcom/aol/mobile/sdk/renderer/j;

    invoke-virtual {v2, v1}, Lcom/aol/mobile/sdk/renderer/j;->setTransform(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->j:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/SubtitleView;->onCues(Ljava/util/List;)V

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v2, p0, Lcom/aol/mobile/sdk/renderer/a;->j:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    :cond_1
    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->B:Ljava/lang/String;

    iput-object p3, p0, Lcom/aol/mobile/sdk/renderer/a;->C:Ljava/lang/String;

    iput-object p2, p0, Lcom/aol/mobile/sdk/renderer/a;->D:Ljava/lang/String;

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/aol/mobile/sdk/renderer/a;->D:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/aol/mobile/sdk/renderer/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/renderer/a;->a(Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method static synthetic c(Lcom/aol/mobile/sdk/renderer/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/renderer/a;->B:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 3

    iget-boolean v0, p0, Lcom/aol/mobile/sdk/renderer/a;->t:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->j:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultStyle()V

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->j:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultTextSize()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aol/mobile/sdk/renderer/a;->t:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isCurrentWindowDynamic()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isCurrentWindowSeekable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekToDefaultPosition()V

    :cond_0
    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->l:Lcom/aol/mobile/sdk/renderer/a$a;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/renderer/a$a;->a()V

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onVideoPlaybackFlagUpdated(Z)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/aol/mobile/sdk/renderer/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/renderer/a;->D:Ljava/lang/String;

    return-object p0
.end method

.method private d()V
    .locals 7

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    iget-object v4, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isCurrentWindowDynamic()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move-wide v0, v2

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->s:Ljava/lang/Long;

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->s:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onDurationReceived(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/aol/mobile/sdk/renderer/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/renderer/a;->C:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/aol/mobile/sdk/renderer/a;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/renderer/a;->s:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic g(Lcom/aol/mobile/sdk/renderer/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/aol/mobile/sdk/renderer/a;->d()V

    return-void
.end method

.method static synthetic h(Lcom/aol/mobile/sdk/renderer/a;)I
    .locals 0

    iget p0, p0, Lcom/aol/mobile/sdk/renderer/a;->u:I

    return p0
.end method

.method static synthetic i(Lcom/aol/mobile/sdk/renderer/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/renderer/a;->b:Landroid/os/Handler;

    return-object p0
.end method

.method private setMute(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/aol/mobile/sdk/renderer/a;->m:Z

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->n:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    :cond_0
    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->n:Landroid/view/View;

    instance-of v2, v1, Lcom/aol/mobile/sdk/renderer/k;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/aol/mobile/sdk/renderer/k;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/renderer/k;->a()V

    :cond_1
    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->n:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->l:Lcom/aol/mobile/sdk/renderer/a$a;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/renderer/a$a;->b()V

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    :cond_3
    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->D:Ljava/lang/String;

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->C:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/aol/mobile/sdk/renderer/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/renderer/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/renderer/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->C:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->B:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v1}, Lcom/aol/mobile/sdk/renderer/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    sget-object p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;->CONNECTION:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;

    goto :goto_3

    :cond_5
    sget-object p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;->CONTENT:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;

    :goto_3
    invoke-interface {v0, p1}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onErrorOccurred(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;)V

    :cond_6
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 2

    iget p1, p0, Lcom/aol/mobile/sdk/renderer/a;->u:I

    if-eq p1, p2, :cond_4

    iput p2, p0, Lcom/aol/mobile/sdk/renderer/a;->u:I

    sget-boolean p1, Lcom/aol/mobile/sdk/renderer/a;->a:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p2, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isCurrentWindowDynamic()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    iget-object p2, p0, Lcom/aol/mobile/sdk/renderer/a;->l:Lcom/aol/mobile/sdk/renderer/a$a;

    invoke-virtual {p2}, Lcom/aol/mobile/sdk/renderer/a$a;->b()V

    iget-object p2, p0, Lcom/aol/mobile/sdk/renderer/a;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->s:Ljava/lang/Long;

    if-nez v0, :cond_2

    sget-object p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;->CONTENT:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;

    invoke-interface {p2, p1}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onErrorOccurred(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onVideoPositionUpdated(J)V

    :cond_3
    iget-object p2, p0, Lcom/aol/mobile/sdk/renderer/a;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onVideoPlaybackFlagUpdated(Z)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    invoke-interface {p1}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onVideoEnded()V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->l:Lcom/aol/mobile/sdk/renderer/a$a;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/renderer/a$a;->a()V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-boolean p2, p0, Lcom/aol/mobile/sdk/renderer/a;->t:Z

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    if-eqz p1, :cond_4

    iget-boolean p2, p0, Lcom/aol/mobile/sdk/renderer/a;->t:Z

    invoke-interface {p1, p2}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onVideoPlaybackFlagUpdated(Z)V

    goto :goto_1

    :pswitch_2
    iget-object p2, p0, Lcom/aol/mobile/sdk/renderer/a;->l:Lcom/aol/mobile/sdk/renderer/a$a;

    invoke-virtual {p2}, Lcom/aol/mobile/sdk/renderer/a$a;->b()V

    iget-object p2, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    iget-object p2, p0, Lcom/aol/mobile/sdk/renderer/a;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onVideoPlaybackFlagUpdated(Z)V

    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onSeekProcessed()V
    .locals 0

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/aol/mobile/sdk/renderer/a;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    if-nez v1, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object v1, v0, Lcom/aol/mobile/sdk/renderer/a;->f:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    :goto_0
    iget-object v9, v0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererCount()I

    move-result v9

    const/4 v10, 0x1

    if-ge v6, v9, :cond_f

    move-object/from16 v9, p2

    invoke-virtual {v9, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v11

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v12

    iget-object v13, v0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v13, v6}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_1

    move v7, v6

    :cond_1
    move v15, v8

    const/4 v8, 0x0

    :goto_1
    iget v5, v12, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v8, v5, :cond_e

    invoke-virtual {v12, v8}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    move/from16 v16, v15

    const/4 v15, 0x0

    :goto_2
    iget v4, v5, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v15, v4, :cond_d

    invoke-virtual {v1, v6, v8, v15}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackFormatSupport(III)I

    move-result v4

    const/4 v14, 0x4

    if-eq v4, v14, :cond_2

    :goto_3
    move-object/from16 v17, v1

    goto :goto_5

    :cond_2
    invoke-virtual {v5, v15}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    if-eqz v11, :cond_3

    invoke-interface {v11}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v14

    if-ne v14, v8, :cond_3

    invoke-interface {v11}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v14

    if-ne v15, v14, :cond_3

    const/4 v14, 0x1

    goto :goto_4

    :cond_3
    const/4 v14, 0x0

    :goto_4
    if-eq v13, v10, :cond_8

    const/4 v10, 0x3

    if-eq v13, v10, :cond_4

    goto :goto_3

    :cond_4
    if-nez v16, :cond_5

    if-eqz v14, :cond_5

    const/16 v16, 0x1

    :cond_5
    const-string v10, "application/cea-608"

    move-object/from16 v17, v1

    iget-object v1, v4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v14, :cond_7

    :cond_6
    new-instance v1, Lcom/aol/mobile/sdk/renderer/TextTrack$a;

    invoke-direct {v1, v6, v8, v15}, Lcom/aol/mobile/sdk/renderer/TextTrack$a;-><init>(III)V

    new-instance v10, Lcom/aol/mobile/sdk/renderer/TextTrack;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-direct {v10, v1, v4, v14}, Lcom/aol/mobile/sdk/renderer/TextTrack;-><init>(Lcom/aol/mobile/sdk/renderer/TextTrack$a;Ljava/lang/String;Z)V

    invoke-virtual {v3, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_5
    move-object/from16 v18, v5

    move/from16 v19, v7

    goto :goto_a

    :cond_8
    move-object/from16 v17, v1

    iget-object v1, v4, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-nez v1, :cond_9

    iget-object v1, v4, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    goto :goto_6

    :cond_9
    iget-object v1, v4, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    :goto_6
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/renderer/AudioTrack;

    if-nez v1, :cond_a

    new-instance v1, Lcom/aol/mobile/sdk/renderer/AudioTrack;

    new-instance v10, Lcom/aol/mobile/sdk/renderer/AudioTrack$a;

    invoke-direct {v10, v6, v8, v15}, Lcom/aol/mobile/sdk/renderer/AudioTrack$a;-><init>(III)V

    move-object/from16 v18, v5

    iget-object v5, v4, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    move/from16 v19, v7

    iget-object v7, v4, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-direct {v1, v10, v5, v7, v14}, Lcom/aol/mobile/sdk/renderer/AudioTrack;-><init>(Lcom/aol/mobile/sdk/renderer/AudioTrack$a;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9

    :cond_a
    move-object/from16 v18, v5

    move/from16 v19, v7

    iget-boolean v5, v1, Lcom/aol/mobile/sdk/renderer/AudioTrack;->isSelected:Z

    if-nez v5, :cond_c

    if-eqz v14, :cond_b

    goto :goto_7

    :cond_b
    const/4 v5, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    const/4 v5, 0x1

    :goto_8
    invoke-virtual {v1, v5}, Lcom/aol/mobile/sdk/renderer/AudioTrack;->withSelected(Z)Lcom/aol/mobile/sdk/renderer/AudioTrack;

    move-result-object v1

    :goto_9
    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v17

    move-object/from16 v5, v18

    move/from16 v7, v19

    const/4 v10, 0x1

    const/4 v14, 0x3

    goto/16 :goto_2

    :cond_d
    move-object/from16 v17, v1

    move/from16 v19, v7

    add-int/lit8 v8, v8, 0x1

    move/from16 v15, v16

    const/4 v10, 0x1

    const/4 v14, 0x3

    goto/16 :goto_1

    :cond_e
    move-object/from16 v17, v1

    move/from16 v19, v7

    add-int/lit8 v6, v6, 0x1

    move v8, v15

    goto/16 :goto_0

    :cond_f
    new-instance v1, Lcom/aol/mobile/sdk/renderer/TextTrack$a;

    const/4 v4, -0x1

    invoke-direct {v1, v7, v4, v4}, Lcom/aol/mobile/sdk/renderer/TextTrack$a;-><init>(III)V

    new-instance v4, Lcom/aol/mobile/sdk/renderer/a$2;

    invoke-direct {v4, v0}, Lcom/aol/mobile/sdk/renderer/a$2;-><init>(Lcom/aol/mobile/sdk/renderer/a;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v4, Lcom/aol/mobile/sdk/renderer/TextTrack;

    const-string v5, "None"

    const/4 v6, 0x1

    xor-int/2addr v6, v8

    invoke-direct {v4, v1, v5, v6}, Lcom/aol/mobile/sdk/renderer/TextTrack;-><init>(Lcom/aol/mobile/sdk/renderer/TextTrack$a;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/aol/mobile/sdk/renderer/a$3;

    invoke-direct {v2, v0}, Lcom/aol/mobile/sdk/renderer/a$3;-><init>(Lcom/aol/mobile/sdk/renderer/a;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, v0, Lcom/aol/mobile/sdk/renderer/a;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    invoke-interface {v2, v1, v3}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onTrackInfoAvailable(Ljava/util/List;Ljava/util/List;)V

    :cond_10
    :goto_b
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0

    iput p1, p0, Lcom/aol/mobile/sdk/renderer/a;->v:I

    iput p2, p0, Lcom/aol/mobile/sdk/renderer/a;->w:I

    invoke-direct {p0}, Lcom/aol/mobile/sdk/renderer/a;->a()V

    return-void
.end method

.method public onVideoSurfaceAvailable(Landroid/view/Surface;)V
    .locals 1

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->o:Landroid/view/Surface;

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public onVideoSurfaceReleased(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->o:Landroid/view/Surface;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->o:Landroid/view/Surface;

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->k:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public onVideoSurfaceResized(II)V
    .locals 0

    iput p1, p0, Lcom/aol/mobile/sdk/renderer/a;->x:I

    iput p2, p0, Lcom/aol/mobile/sdk/renderer/a;->y:I

    invoke-direct {p0}, Lcom/aol/mobile/sdk/renderer/a;->a()V

    return-void
.end method

.method public render(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;)V
    .locals 5

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->j:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->areSubtitlesEnabled:Z

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->j:Lcom/google/android/exoplayer2/ui/SubtitleView;

    iget-boolean v2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->areSubtitlesEnabled:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setVisibility(I)V

    :cond_2
    iget-object v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/renderer/a;->a(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;)V

    :cond_3
    iget-boolean v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isScalable:Z

    iput-boolean v0, p0, Lcom/aol/mobile/sdk/renderer/a;->z:Z

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isMaintainAspectRatio:Z

    iput-boolean v0, p0, Lcom/aol/mobile/sdk/renderer/a;->A:Z

    iget-object v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->videoUrl:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->videoUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->videoUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->subtitleLang:Ljava/lang/String;

    iget-object v2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->subtitleUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/aol/mobile/sdk/renderer/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->videoUrl:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->B:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/aol/mobile/sdk/renderer/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    iget-object v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->seekPosition:Ljava/lang/Long;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/aol/mobile/sdk/renderer/a;->a(J)V

    :cond_6
    iget-boolean v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->shouldPlay:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/aol/mobile/sdk/renderer/a;->c()V

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/aol/mobile/sdk/renderer/a;->b()V

    :goto_3
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->n:Landroid/view/View;

    instance-of v1, v0, Lcom/aol/mobile/sdk/renderer/k;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/aol/mobile/sdk/renderer/k;

    iget-wide v1, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->longitude:D

    iget-wide v3, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->latitude:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aol/mobile/sdk/renderer/k;->a(DD)V

    :cond_8
    iget-boolean v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isMuted:Z

    iget-boolean v1, p0, Lcom/aol/mobile/sdk/renderer/a;->m:Z

    if-eq v0, v1, :cond_9

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isMuted:Z

    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/renderer/a;->setMute(Z)V

    :cond_9
    iget-object v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->selectedAudioTrack:Lcom/aol/mobile/sdk/renderer/AudioTrack;

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->q:Lcom/aol/mobile/sdk/renderer/AudioTrack;

    if-eq v0, v1, :cond_a

    iget-object v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->selectedAudioTrack:Lcom/aol/mobile/sdk/renderer/AudioTrack;

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->q:Lcom/aol/mobile/sdk/renderer/AudioTrack;

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a;->q:Lcom/aol/mobile/sdk/renderer/AudioTrack;

    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/renderer/a;->a(Lcom/aol/mobile/sdk/renderer/AudioTrack;)V

    :cond_a
    iget-object v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->selectedTextTrack:Lcom/aol/mobile/sdk/renderer/TextTrack;

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a;->r:Lcom/aol/mobile/sdk/renderer/TextTrack;

    if-eq v0, v1, :cond_b

    iget-object p1, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->selectedTextTrack:Lcom/aol/mobile/sdk/renderer/TextTrack;

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->r:Lcom/aol/mobile/sdk/renderer/TextTrack;

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->r:Lcom/aol/mobile/sdk/renderer/TextTrack;

    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/renderer/a;->a(Lcom/aol/mobile/sdk/renderer/TextTrack;)V

    :cond_b
    return-void
.end method

.method protected setRenderer(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/renderer/a;->removeAllViews()V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->n:Landroid/view/View;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/aol/mobile/sdk/renderer/a;->addView(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/a;->j:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {p0, p1, v0, v0}, Lcom/aol/mobile/sdk/renderer/a;->addView(Landroid/view/View;II)V

    return-void
.end method
