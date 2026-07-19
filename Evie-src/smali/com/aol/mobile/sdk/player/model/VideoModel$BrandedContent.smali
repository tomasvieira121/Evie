.class public final Lcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;
.super Ljava/lang/Object;
.source "VideoModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/model/VideoModel;
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

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;->clickUrl:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;->advertisementText:Ljava/lang/String;

    return-void
.end method
