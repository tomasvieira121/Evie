.class Lcom/aol/mobile/sdk/player/PlayerBuilder$2;
.super Ljava/lang/Object;
.source "PlayerBuilder.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/VideoProvider$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/player/PlayerBuilder;->buildForPlaylist(Ljava/lang/String;Lcom/aol/mobile/sdk/player/Player$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aol/mobile/sdk/player/PlayerBuilder;

.field final synthetic val$callback:Lcom/aol/mobile/sdk/player/Player$Callback;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/PlayerBuilder;Lcom/aol/mobile/sdk/player/Player$Callback;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder$2;->this$0:Lcom/aol/mobile/sdk/player/PlayerBuilder;

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder$2;->val$callback:Lcom/aol/mobile/sdk/player/Player$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder$2;->val$callback:Lcom/aol/mobile/sdk/player/Player$Callback;

    invoke-interface {v0, p1}, Lcom/aol/mobile/sdk/player/Player$Callback;->error(Ljava/lang/Exception;)V

    return-void
.end method

.method public success(Lcom/aol/mobile/sdk/player/VideoProviderResponse;)V
    .locals 2

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder$2;->val$callback:Lcom/aol/mobile/sdk/player/Player$Callback;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder$2;->this$0:Lcom/aol/mobile/sdk/player/PlayerBuilder;

    invoke-virtual {v1, p1}, Lcom/aol/mobile/sdk/player/PlayerBuilder;->buildFrom(Lcom/aol/mobile/sdk/player/VideoProviderResponse;)Lcom/aol/mobile/sdk/player/Player;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/aol/mobile/sdk/player/Player$Callback;->success(Lcom/aol/mobile/sdk/player/Player;)V
    :try_end_0
    .catch Lcom/aol/mobile/sdk/player/EmptyPlaylistException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/aol/mobile/sdk/player/InvalidRendererException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 170
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder$2;->val$callback:Lcom/aol/mobile/sdk/player/Player$Callback;

    invoke-interface {v0, p1}, Lcom/aol/mobile/sdk/player/Player$Callback;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
