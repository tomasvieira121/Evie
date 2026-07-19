.class public Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;
.super Ljava/lang/Object;
.source "VrmAd.java"


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PrivateApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;
    }
.end annotation


# instance fields
.field public final adId:Ljava/lang/String;

.field public final adVideoUrl:Ljava/lang/String;

.field public final maintainAspectRatio:Z

.field public final pixels:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;

.field public final scalable:Z

.field public final targetUrl:Ljava/lang/String;

.field public final vastAdTagURI:Ljava/lang/String;

.field private vrmSource:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;ZZLjava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->vrmSource:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;

    .line 47
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->pixels:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;

    const/4 p2, 0x0

    .line 48
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->adVideoUrl:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->targetUrl:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->vastAdTagURI:Ljava/lang/String;

    .line 51
    iput-boolean p3, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->scalable:Z

    .line 52
    iput-boolean p4, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->maintainAspectRatio:Z

    .line 53
    iput-object p5, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->adId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;ZZLjava/lang/String;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->vrmSource:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;

    .line 36
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->pixels:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;

    .line 37
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->adVideoUrl:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->targetUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->vastAdTagURI:Ljava/lang/String;

    .line 40
    iput-boolean p4, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->scalable:Z

    .line 41
    iput-boolean p5, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->maintainAspectRatio:Z

    .line 42
    iput-object p6, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->adId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getVrmSource()Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->vrmSource:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;

    return-object v0
.end method

.method public merge(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;)Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;
    .locals 8

    if-nez p1, :cond_0

    return-object p0

    .line 69
    :cond_0
    new-instance v3, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->pixels:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;

    iget-object v1, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->pixels:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;

    const/4 v2, 0x0

    invoke-direct {v3, v0, v1, v2}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;-><init>(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$1;)V

    .line 72
    iget-object v1, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->adVideoUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 73
    new-instance v7, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;

    iget-object v2, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->targetUrl:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->scalable:Z

    iget-boolean v5, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->maintainAspectRatio:Z

    iget-object v6, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->adId:Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;ZZLjava/lang/String;)V

    move-object v6, v7

    goto :goto_0

    .line 75
    :cond_1
    new-instance v6, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;

    iget-object v1, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->vastAdTagURI:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->scalable:Z

    iget-boolean v5, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->maintainAspectRatio:Z

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->adId:Ljava/lang/String;

    move-object v0, v6

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;-><init>(Ljava/lang/String;Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;ZZLjava/lang/String;)V

    .line 78
    :goto_0
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->vrmSource:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;

    invoke-virtual {v6, p1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->setVrmSource(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;)V

    return-object v6
.end method

.method public setVrmSource(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->vrmSource:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;

    return-void
.end method
