.class public final Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;
.super Ljava/lang/Object;
.source "PlaylistProperties.java"


# instance fields
.field public count:I

.field public currentIndex:I

.field public hasNextVideo:Z

.field public hasPreviousVideo:Z

.field public isFirstVideo:Z

.field public isLastVideo:Z

.field public model:Lcom/aol/mobile/sdk/player/model/PlayerModel;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/aol/mobile/sdk/player/model/PlayerModel;

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aol/mobile/sdk/player/model/PlayerModel;-><init>(Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->model:Lcom/aol/mobile/sdk/player/model/PlayerModel;

    return-void
.end method
