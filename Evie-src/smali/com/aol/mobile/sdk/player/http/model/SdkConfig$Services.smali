.class public final Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services;
.super Ljava/lang/Object;
.source "SdkConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/http/model/SdkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Services"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services$Video;
    }
.end annotation


# instance fields
.field public final video:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services$Video;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services$Video;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services;->video:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services$Video;

    return-void
.end method
