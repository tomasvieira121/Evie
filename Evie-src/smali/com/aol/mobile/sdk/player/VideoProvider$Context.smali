.class Lcom/aol/mobile/sdk/player/VideoProvider$Context;
.super Ljava/lang/Object;
.source "VideoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/VideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Context"
.end annotation


# instance fields
.field final callback:Lcom/aol/mobile/sdk/player/VideoProvider$Callback;

.field final playlistId:Ljava/lang/String;

.field final serverUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;Ljava/lang/String;)V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/VideoProvider$Context;->callback:Lcom/aol/mobile/sdk/player/VideoProvider$Callback;

    .line 214
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/VideoProvider$Context;->serverUrl:Ljava/lang/String;

    .line 215
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/VideoProvider$Context;->playlistId:Ljava/lang/String;

    return-void
.end method
