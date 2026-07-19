.class public final Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;
.super Ljava/lang/Object;
.source "ExtractorMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private continueLoadingCheckIntervalBytes:I

.field private customCacheKey:Ljava/lang/String;

.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private isCreateCalled:Z

.field private minLoadableRetryCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    const/4 p1, -0x1

    .line 125
    iput p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->minLoadableRetryCount:I

    const/high16 p1, 0x100000

    .line 126
    iput p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    return-void
.end method


# virtual methods
.method public createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
    .locals 11

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 217
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    iget v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->minLoadableRetryCount:I

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->customCacheKey:Ljava/lang/String;

    iget v9, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Ljava/lang/String;ILcom/google/android/exoplayer2/source/ExtractorMediaSource$1;)V

    return-object v0
.end method
