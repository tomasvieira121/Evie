.class public Lcom/evie/sidescreen/dagger/external/OathPlayerModule;
.super Ljava/lang/Object;
.source "OathPlayerModule.java"


# instance fields
.field private mPlayerBuilder:Lcom/aol/mobile/sdk/player/PlayerBuilder;

.field private final mPlayerBuilderRequestor:Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;

    invoke-direct {v0}, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/dagger/external/OathPlayerModule;->mPlayerBuilderRequestor:Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/dagger/external/OathPlayerModule;)Lcom/aol/mobile/sdk/player/PlayerBuilder;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/external/OathPlayerModule;->mPlayerBuilder:Lcom/aol/mobile/sdk/player/PlayerBuilder;

    return-object p0
.end method

.method static synthetic access$002(Lcom/evie/sidescreen/dagger/external/OathPlayerModule;Lcom/aol/mobile/sdk/player/PlayerBuilder;)Lcom/aol/mobile/sdk/player/PlayerBuilder;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/external/OathPlayerModule;->mPlayerBuilder:Lcom/aol/mobile/sdk/player/PlayerBuilder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/evie/sidescreen/dagger/external/OathPlayerModule;)Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/external/OathPlayerModule;->mPlayerBuilderRequestor:Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;

    return-object p0
.end method


# virtual methods
.method public providesPlayerRequestor(Landroid/content/Context;)Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;
    .locals 1

    .line 28
    new-instance v0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;

    invoke-direct {v0, p1}, Lcom/aol/mobile/sdk/player/OneSDKBuilder;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/evie/sidescreen/dagger/external/OathPlayerModule$1;

    invoke-direct {p1, p0}, Lcom/evie/sidescreen/dagger/external/OathPlayerModule$1;-><init>(Lcom/evie/sidescreen/dagger/external/OathPlayerModule;)V

    .line 29
    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->create(Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;)V

    .line 42
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/external/OathPlayerModule;->mPlayerBuilderRequestor:Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;

    return-object p1
.end method
