.class public interface abstract Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;
.super Ljava/lang/Object;
.source "AdProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/advertisement/AdProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Ad:",
        "Ljava/lang/Object;",
        "Source:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onAdArrived(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAd;)V"
        }
    .end annotation
.end method

.method public abstract onHardTimeoutReached()V
.end method

.method public abstract onSoftTimeoutReached()V
.end method

.method public abstract onTaskFinished(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "TAd;TSource;>;)V"
        }
    .end annotation
.end method

.method public abstract onTaskLaunched(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "TAd;TSource;>;)V"
        }
    .end annotation
.end method

.method public abstract onVrmParamsReady(Ljava/lang/String;Ljava/lang/String;)V
.end method
