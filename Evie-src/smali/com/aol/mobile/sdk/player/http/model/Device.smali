.class public final Lcom/aol/mobile/sdk/player/http/model/Device;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field public final model:Ljava/lang/String;

.field public final os:Ljava/lang/String;

.field public final platform:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/http/model/Device;->platform:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/http/model/Device;->model:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/http/model/Device;->os:Ljava/lang/String;

    return-void
.end method
