.class public abstract Lcom/aol/mobile/sdk/player/advertisement/AdServices;
.super Ljava/lang/Object;
.source "AdServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;
    }
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


# instance fields
.field protected callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback<",
            "TAd;TSource;>;>;"
        }
    .end annotation
.end field

.field protected timeout:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServices;->callbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addCallback(Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback<",
            "TAd;TSource;>;)V"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServices;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract cancel()V
.end method

.method public getTimeout()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServices;->timeout:J

    return-wide v0
.end method

.method public abstract launch(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "TAd;TSource;>;)V"
        }
    .end annotation
.end method

.method public abstract prepareTasks()V
.end method

.method public abstract startTimer()V
.end method
