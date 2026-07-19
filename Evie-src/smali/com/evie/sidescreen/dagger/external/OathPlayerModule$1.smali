.class Lcom/evie/sidescreen/dagger/external/OathPlayerModule$1;
.super Ljava/lang/Object;
.source "OathPlayerModule.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/dagger/external/OathPlayerModule;->providesPlayerRequestor(Landroid/content/Context;)Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/dagger/external/OathPlayerModule;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/dagger/external/OathPlayerModule;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/external/OathPlayerModule$1;->this$0:Lcom/evie/sidescreen/dagger/external/OathPlayerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "OneSDK failed to initialize"

    const/4 v1, 0x0

    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/external/OathPlayerModule$1;->this$0:Lcom/evie/sidescreen/dagger/external/OathPlayerModule;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/external/OathPlayerModule;->access$100(Lcom/evie/sidescreen/dagger/external/OathPlayerModule;)Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;->failRequests(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Lcom/aol/mobile/sdk/player/OneSDK;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/external/OathPlayerModule$1;->this$0:Lcom/evie/sidescreen/dagger/external/OathPlayerModule;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/OneSDK;->createBuilder()Lcom/aol/mobile/sdk/player/PlayerBuilder;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/evie/sidescreen/dagger/external/OathPlayerModule;->access$002(Lcom/evie/sidescreen/dagger/external/OathPlayerModule;Lcom/aol/mobile/sdk/player/PlayerBuilder;)Lcom/aol/mobile/sdk/player/PlayerBuilder;

    .line 33
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/external/OathPlayerModule$1;->this$0:Lcom/evie/sidescreen/dagger/external/OathPlayerModule;

    invoke-static {p1}, Lcom/evie/sidescreen/dagger/external/OathPlayerModule;->access$100(Lcom/evie/sidescreen/dagger/external/OathPlayerModule;)Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/external/OathPlayerModule$1;->this$0:Lcom/evie/sidescreen/dagger/external/OathPlayerModule;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/external/OathPlayerModule;->access$000(Lcom/evie/sidescreen/dagger/external/OathPlayerModule;)Lcom/aol/mobile/sdk/player/PlayerBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;->fulfillRequests(Lcom/aol/mobile/sdk/player/PlayerBuilder;)V

    return-void
.end method
