.class Lcom/aol/mobile/sdk/player/Player$1$1;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/player/Player$1;->onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aol/mobile/sdk/player/Player$1;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/Player$1;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/Player$1$1;->this$1:Lcom/aol/mobile/sdk/player/Player$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player$1$1;->this$1:Lcom/aol/mobile/sdk/player/Player$1;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/Player$1;->this$0:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->playNext()V

    .line 86
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player$1$1;->this$1:Lcom/aol/mobile/sdk/player/Player$1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/aol/mobile/sdk/player/Player$1;->isFired:Z

    return-void
.end method
