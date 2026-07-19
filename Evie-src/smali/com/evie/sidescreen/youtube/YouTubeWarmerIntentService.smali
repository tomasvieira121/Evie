.class public Lcom/evie/sidescreen/youtube/YouTubeWarmerIntentService;
.super Landroid/app/IntentService;
.source "YouTubeWarmerIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "YTWarmer"

    .line 15
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/evie/sidescreen/youtube/YouTubeWarmerIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->warmup(Landroid/content/Context;)V

    return-void
.end method
