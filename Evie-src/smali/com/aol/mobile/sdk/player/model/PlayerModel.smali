.class public final Lcom/aol/mobile/sdk/player/model/PlayerModel;
.super Ljava/lang/Object;
.source "PlayerModel.java"


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PublicApi;
.end annotation


# instance fields
.field public final embedClickThroughUrl:Z

.field public final isAutoplayOn:Z

.field public final showClickThroughClose:Z

.field public final videoModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/model/PlaylistItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/model/PlaylistItem;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/aol/mobile/sdk/player/model/PlayerModel;-><init>(Ljava/util/List;ZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/model/PlaylistItem;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/model/PlayerModel;->videoModels:Ljava/util/List;

    .line 37
    iput-boolean p2, p0, Lcom/aol/mobile/sdk/player/model/PlayerModel;->isAutoplayOn:Z

    .line 38
    iput-boolean p3, p0, Lcom/aol/mobile/sdk/player/model/PlayerModel;->embedClickThroughUrl:Z

    .line 39
    iput-boolean p4, p0, Lcom/aol/mobile/sdk/player/model/PlayerModel;->showClickThroughClose:Z

    return-void
.end method


# virtual methods
.method public withAutoplay(Z)Lcom/aol/mobile/sdk/player/model/PlayerModel;
    .locals 2

    .line 53
    new-instance v0, Lcom/aol/mobile/sdk/player/model/PlayerModel;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/model/PlayerModel;->videoModels:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lcom/aol/mobile/sdk/player/model/PlayerModel;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method

.method public withPlaylistItems(Ljava/util/List;)Lcom/aol/mobile/sdk/player/model/PlayerModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/model/PlaylistItem;",
            ">;)",
            "Lcom/aol/mobile/sdk/player/model/PlayerModel;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/aol/mobile/sdk/player/model/PlayerModel;

    iget-boolean v1, p0, Lcom/aol/mobile/sdk/player/model/PlayerModel;->isAutoplayOn:Z

    invoke-direct {v0, p1, v1}, Lcom/aol/mobile/sdk/player/model/PlayerModel;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method
