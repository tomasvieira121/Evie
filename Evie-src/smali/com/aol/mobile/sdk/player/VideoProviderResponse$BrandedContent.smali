.class public final Lcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;
.super Ljava/lang/Object;
.source "VideoProviderResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/VideoProviderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BrandedContent"
.end annotation


# instance fields
.field public final advertisementText:Ljava/lang/String;

.field public final clickUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;->clickUrl:Ljava/lang/String;

    .line 399
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;->advertisementText:Ljava/lang/String;

    return-void
.end method
