.class public Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;
.super Lcom/aol/mobile/sdk/player/advertisement/AdServices;
.source "VrmAdServices.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aol/mobile/sdk/player/advertisement/AdServices<",
        "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;",
        "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;",
        ">;"
    }
.end annotation


# instance fields
.field private final tasks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "[B>;>;"
        }
    .end annotation
.end field

.field private final timer:Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;

.field private final url:Ljava/lang/String;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Handler;)V
    .locals 7

    .line 33
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/advertisement/AdServices;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->tasks:Ljava/util/HashSet;

    .line 34
    iput-wide p5, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->timeout:J

    .line 35
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->url:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->userAgent:Ljava/lang/String;

    .line 37
    new-instance p1, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;-><init>(JJLandroid/os/Handler;)V

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->timer:Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;

    .line 38
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->timer:Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;

    new-instance p2, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$1;

    invoke-direct {p2, p0}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$1;-><init>(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;)V

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;->setCallback(Lcom/aol/mobile/sdk/player/advertisement/utils/Timer$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->callbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->callbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->callbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->callbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->callbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;Lcom/aol/mobile/sdk/player/advertisement/utils/Task;Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;J)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->onComplete(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;J)V

    return-void
.end method

.method static synthetic access$600(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;Lcom/aol/mobile/sdk/player/advertisement/utils/Task;Ljava/lang/Exception;J)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->onError(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;Ljava/lang/Exception;J)V

    return-void
.end method

.method private addFetchTask(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$3;

    invoke-direct {v0, p0, p1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$3;-><init>(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V

    .line 119
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->userAgent:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher;->getAdTask(Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$Listener;)Landroid/os/AsyncTask;

    move-result-object p1

    .line 121
    iget-object p2, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->tasks:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private onComplete(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;",
            ">;",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;",
            "J)V"
        }
    .end annotation

    .line 136
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->incHops()V

    .line 138
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->getAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->setAd(Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 142
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;

    invoke-virtual {p2, v0}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->setVrmSource(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v0, p2}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->merge(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;)Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->setAd(Ljava/lang/Object;)V

    .line 148
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->getTime()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, v0, v1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->setTime(J)V

    if-eqz p2, :cond_2

    .line 150
    iget-object p3, p2, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->vastAdTagURI:Ljava/lang/String;

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->getHops()I

    move-result p3

    const/4 p4, 0x3

    if-ge p3, p4, :cond_2

    .line 151
    iget-object p2, p2, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->vastAdTagURI:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->addFetchTask(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;Ljava/lang/String;)V

    goto :goto_2

    .line 153
    :cond_2
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->complete()V

    .line 154
    iget-object p2, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->callbacks:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;

    .line 155
    invoke-interface {p3, p1}, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;->onTaskFinished(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private onError(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;Ljava/lang/Exception;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;",
            ">;",
            "Ljava/lang/Exception;",
            "J)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->setAd(Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->setError(Ljava/lang/Exception;)V

    .line 127
    invoke-virtual {p1, p3, p4}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->setTime(J)V

    .line 129
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->complete()V

    .line 130
    iget-object p2, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->callbacks:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;

    .line 131
    invoke-interface {p3, p1}, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;->onTaskFinished(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->tasks:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->tasks:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 169
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->timer:Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;->reset()V

    return-void
.end method

.method public launch(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;",
            ">;)V"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;

    .line 90
    invoke-interface {v1, p1}, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;->onTaskLaunched(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->getXml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->addFetchTask(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 98
    :try_start_0
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->getSource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;

    invoke-virtual {v2}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->getXml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aol/mobile/sdk/player/advertisement/VastParser;->parse(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;

    move-result-object v2

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->onComplete(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->onError(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;Ljava/lang/Exception;J)V

    :goto_1
    return-void
.end method

.method public prepareTasks()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->tasks:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->userAgent:Ljava/lang/String;

    new-instance v3, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$2;

    invoke-direct {v3, p0}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices$2;-><init>(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;)V

    invoke-static {v1, v2, v3}, Lcom/aol/mobile/sdk/player/http/network/DataFetcher;->fetch(Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Listener;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startTimer()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;->timer:Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/advertisement/utils/Timer;->start()V

    return-void
.end method
