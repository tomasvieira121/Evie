.class public Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
.super Ljava/lang/Object;
.source "TiledImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/views/TiledImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ImageRendererWrapper"
.end annotation


# instance fields
.field public centerX:I

.field public centerY:I

.field image:Lcom/android/photos/views/TiledImageRenderer;

.field isReadyCallback:Ljava/lang/Runnable;

.field public rotation:I

.field public scale:F

.field public source:Lcom/android/photos/views/TiledImageRenderer$TileSource;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
