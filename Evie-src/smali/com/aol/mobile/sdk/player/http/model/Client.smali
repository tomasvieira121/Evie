.class public final Lcom/aol/mobile/sdk/player/http/model/Client;
.super Ljava/lang/Object;
.source "Client.java"


# instance fields
.field public final advertisementId:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/http/model/Client;->id:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/http/model/Client;->advertisementId:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/http/model/Client;->name:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/aol/mobile/sdk/player/http/model/Client;->version:Ljava/lang/String;

    return-void
.end method
