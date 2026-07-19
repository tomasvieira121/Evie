.class public final Lcom/aol/mobile/sdk/player/model/properties/VoidVideoProperties;
.super Ljava/lang/Object;
.source "VoidVideoProperties.java"


# instance fields
.field public reason:Ljava/lang/String;

.field public uniqueVideoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/VoidVideoProperties;->reason:Ljava/lang/String;

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/VoidVideoProperties;->uniqueVideoId:Ljava/lang/String;

    return-void
.end method
