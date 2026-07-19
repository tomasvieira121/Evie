.class public final Lcom/aol/mobile/sdk/player/model/PlaylistItem;
.super Ljava/lang/Object;
.source "PlaylistItem.java"


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PublicApi;
.end annotation


# instance fields
.field public final videoModel:Lcom/aol/mobile/sdk/player/model/VideoModel;

.field public final voidVideoModel:Lcom/aol/mobile/sdk/player/model/VoidVideoModel;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/model/VideoModel;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/model/PlaylistItem;->videoModel:Lcom/aol/mobile/sdk/player/model/VideoModel;

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/model/PlaylistItem;->voidVideoModel:Lcom/aol/mobile/sdk/player/model/VoidVideoModel;

    return-void
.end method

.method public constructor <init>(Lcom/aol/mobile/sdk/player/model/VoidVideoModel;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/PlaylistItem;->videoModel:Lcom/aol/mobile/sdk/player/model/VideoModel;

    .line 28
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/model/PlaylistItem;->voidVideoModel:Lcom/aol/mobile/sdk/player/model/VoidVideoModel;

    return-void
.end method
