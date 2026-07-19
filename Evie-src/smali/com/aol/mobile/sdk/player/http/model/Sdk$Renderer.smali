.class public Lcom/aol/mobile/sdk/player/http/model/Sdk$Renderer;
.super Ljava/lang/Object;
.source "Sdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/http/model/Sdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Renderer"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/http/model/Sdk$Renderer;->id:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/http/model/Sdk$Renderer;->version:Ljava/lang/String;

    return-void
.end method
