.class public final Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;
.super Ljava/lang/Object;
.source "VideoProviderResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/VideoProviderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaylistItem"
.end annotation


# instance fields
.field public final video:Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;

.field public final voidVideo:Lcom/aol/mobile/sdk/player/VideoProviderResponse$VoidVideo;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;->video:Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;->voidVideo:Lcom/aol/mobile/sdk/player/VideoProviderResponse$VoidVideo;

    return-void
.end method

.method public constructor <init>(Lcom/aol/mobile/sdk/player/VideoProviderResponse$VoidVideo;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;->video:Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;

    .line 93
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;->voidVideo:Lcom/aol/mobile/sdk/player/VideoProviderResponse$VoidVideo;

    return-void
.end method
