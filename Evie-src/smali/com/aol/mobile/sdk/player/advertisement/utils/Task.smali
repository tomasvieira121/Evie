.class public Lcom/aol/mobile/sdk/player/advertisement/utils/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;
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
.field private ad:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAd;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/Exception;

.field private hops:I

.field private final source:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSource;"
        }
    .end annotation
.end field

.field private state:Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;

.field private time:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSource;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;->WORKING:Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->state:Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;

    .line 24
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->source:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .line 42
    sget-object v0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;->DONE:Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->state:Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;

    return-void
.end method

.method public getAd()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAd;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->ad:Ljava/lang/Object;

    return-object v0
.end method

.method public getError()Ljava/lang/Exception;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->error:Ljava/lang/Exception;

    return-object v0
.end method

.method public getHops()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->hops:I

    return v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSource;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->time:J

    return-wide v0
.end method

.method public hasAd()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->ad:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public incHops()V
    .locals 1

    .line 71
    iget v0, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->hops:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->hops:I

    return-void
.end method

.method public isWorking()Z
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->state:Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;

    sget-object v1, Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;->WORKING:Lcom/aol/mobile/sdk/player/advertisement/utils/Task$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAd(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAd;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->ad:Ljava/lang/Object;

    return-void
.end method

.method public setError(Ljava/lang/Exception;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->error:Ljava/lang/Exception;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 58
    iput-wide p1, p0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->time:J

    return-void
.end method
