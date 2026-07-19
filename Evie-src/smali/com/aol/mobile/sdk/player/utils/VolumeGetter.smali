.class public final Lcom/aol/mobile/sdk/player/utils/VolumeGetter;
.super Ljava/lang/Object;
.source "VolumeGetter.java"


# instance fields
.field private audioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audio"

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/utils/VolumeGetter;->audioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public getAudioVolume()I
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/utils/VolumeGetter;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/utils/VolumeGetter;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method
