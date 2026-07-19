.class public interface abstract Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser$Listener;
.super Ljava/lang/Object;
.source "VrmParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract error(Ljava/lang/Exception;)V
.end method

.method public abstract success(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
