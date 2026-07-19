.class public final Lcom/aol/mobile/sdk/player/VideoProviderResponse$VoidVideo;
.super Ljava/lang/Object;
.source "VideoProviderResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/VideoProviderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoidVideo"
.end annotation


# instance fields
.field public final reason:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$VoidVideo;->type:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$VoidVideo;->reason:Ljava/lang/String;

    return-void
.end method
