.class public Lcom/aol/mobile/sdk/renderer/producer/FishEyeRendererProducer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aol/mobile/sdk/renderer/VideoRenderer$Producer;


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PublicApi;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRenderer(Landroid/content/Context;)Lcom/aol/mobile/sdk/renderer/VideoRenderer;
    .locals 1

    new-instance v0, Lcom/aol/mobile/sdk/renderer/ExoFishEyeRenderer;

    invoke-direct {v0, p1}, Lcom/aol/mobile/sdk/renderer/ExoFishEyeRenderer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
