.class public final Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services$Video;
.super Ljava/lang/Object;
.source "SdkConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Video"
.end annotation


# instance fields
.field public final context:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services$Video;->context:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services$Video;->url:Ljava/lang/String;

    return-void
.end method
