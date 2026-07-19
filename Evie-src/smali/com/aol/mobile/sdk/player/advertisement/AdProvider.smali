.class public final Lcom/aol/mobile/sdk/player/advertisement/AdProvider;
.super Ljava/lang/Object;
.source "AdProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;,
        Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;
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


# static fields
.field static final GROUP_IS_PROCESSED:I = -0x2

.field static final KEEP_GOING:I = -0x1


# instance fields
.field private canceled:Z

.field private isInSoftMode:Z

.field private final mAdCallback:Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback<",
            "TAd;TSource;>;"
        }
    .end annotation
.end field

.field private final mAdServices:Lcom/aol/mobile/sdk/player/advertisement/AdServices;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aol/mobile/sdk/player/advertisement/AdServices<",
            "TAd;TSource;>;"
        }
    .end annotation
.end field

.field private final mTasksGroups:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "TAd;TSource;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/advertisement/AdServices;Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/advertisement/AdServices<",
            "TAd;TSource;>;",
            "Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback<",
            "TAd;TSource;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->mTasksGroups:Ljava/util/LinkedList;

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->isInSoftMode:Z

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->canceled:Z

    .line 31
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->mAdCallback:Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;

    .line 32
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->mAdServices:Lcom/aol/mobile/sdk/player/advertisement/AdServices;

    .line 33
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->mAdServices:Lcom/aol/mobile/sdk/player/advertisement/AdServices;

    new-instance p2, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$1;

    invoke-direct {p2, p0}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$1;-><init>(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;)V

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/advertisement/AdServices;->addCallback(Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;)Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->mAdCallback:Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;)Ljava/util/LinkedList;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->mTasksGroups:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;)Lcom/aol/mobile/sdk/player/advertisement/AdServices;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->mAdServices:Lcom/aol/mobile/sdk/player/advertisement/AdServices;

    return-object p0
.end method

.method static synthetic access$300(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->launchGroupTasks()V

    return-void
.end method

.method static synthetic access$400(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->canceled:Z

    return p0
.end method

.method static synthetic access$500(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->processGroup()V

    return-void
.end method

.method static synthetic access$602(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->isInSoftMode:Z

    return p1
.end method

.method static synthetic access$700(Lcom/aol/mobile/sdk/player/advertisement/AdProvider;Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->publishAd(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V

    return-void
.end method

.method static getAdIndex(Ljava/util/List;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;",
            ">;Z)I"
        }
    .end annotation

    .line 76
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

    .line 77
    sget-object v3, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;->SUCCESS:Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

    if-ne v2, v3, :cond_1

    .line 78
    invoke-interface {p0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 81
    :cond_1
    sget-object v3, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;->PROGRESS:Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    :cond_2
    if-nez v1, :cond_3

    const/4 p0, -0x2

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private getTaskStateFrom(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "TAd;TSource;>;)",
            "Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;"
        }
    .end annotation

    .line 154
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;->PROGRESS:Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->hasAd()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;->SUCCESS:Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;->FAILURE:Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

    :goto_0
    return-object p1
.end method

.method private getTaskStatesFrom(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "TAd;TSource;>;>;)",
            "Ljava/util/ArrayList<",
            "Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;

    .line 146
    invoke-direct {p0, v1}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->getTaskStateFrom(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)Lcom/aol/mobile/sdk/player/advertisement/AdProvider$TaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private launchGroupTasks()V
    .locals 3

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->mTasksGroups:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->mTasksGroups:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 108
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->mTasksGroups:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;

    .line 112
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->mAdServices:Lcom/aol/mobile/sdk/player/advertisement/AdServices;

    invoke-virtual {v2, v1}, Lcom/aol/mobile/sdk/player/advertisement/AdServices;->launch(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->publishAd(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V

    return-void
.end method

.method private processGroup()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->mTasksGroups:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 122
    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->getTaskStatesFrom(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 124
    iget-boolean v2, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->isInSoftMode:Z

    invoke-static {v1, v2}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->getAdIndex(Ljava/util/List;Z)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 136
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;

    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->publishAd(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V

    goto :goto_0

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->mTasksGroups:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 129
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->launchGroupTasks()V

    :goto_0
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private publishAd(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "TAd;TSource;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->mAdCallback:Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->getAd()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;->onAdArrived(Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->mAdCallback:Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;->onAdArrived(Ljava/lang/Object;)V

    .line 163
    :goto_0
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->cancel()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->canceled:Z

    .line 101
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->mAdServices:Lcom/aol/mobile/sdk/player/advertisement/AdServices;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/advertisement/AdServices;->cancel()V

    return-void
.end method

.method public start()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->mAdServices:Lcom/aol/mobile/sdk/player/advertisement/AdServices;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/advertisement/AdServices;->prepareTasks()V

    return-void
.end method
