.class public abstract Lcom/evie/sidescreen/prompts/PromptsPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "PromptsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/evie/sidescreen/mvp/MvpViewHolder;",
        ">",
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field private firstVisibleTime:J

.field protected final mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/analytics/AnalyticsModel;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    const-wide/16 v0, -0x1

    .line 20
    iput-wide v0, p0, Lcom/evie/sidescreen/prompts/PromptsPresenter;->firstVisibleTime:J

    .line 16
    iput-object p1, p0, Lcom/evie/sidescreen/prompts/PromptsPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    return-void
.end method

.method private beginImpressionEvent()V
    .locals 2

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evie/sidescreen/prompts/PromptsPresenter;->firstVisibleTime:J

    return-void
.end method

.method private endImpressionEvent(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 42
    iget-wide v0, p0, Lcom/evie/sidescreen/prompts/PromptsPresenter;->firstVisibleTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/evie/sidescreen/prompts/PromptsPresenter;->firstVisibleTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    return-void

    :cond_1
    const-string v2, "duration"

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "attribute_screen_info"

    .line 53
    new-instance v1, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    const-string v2, "side_screen"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/evie/sidescreen/analytics/data/ScreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/PromptsPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_article_impression"

    invoke-virtual {v0, v1, p1}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    const-wide/16 v0, -0x1

    .line 58
    iput-wide v0, p0, Lcom/evie/sidescreen/prompts/PromptsPresenter;->firstVisibleTime:J

    return-void
.end method


# virtual methods
.method public abstract getTrackableAttributes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/evie/sidescreen/mvp/ItemPresenter;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_0

    .line 25
    invoke-direct {p0}, Lcom/evie/sidescreen/prompts/PromptsPresenter;->beginImpressionEvent()V

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/evie/sidescreen/prompts/PromptsPresenter;->getTrackableAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/evie/sidescreen/prompts/PromptsPresenter;->endImpressionEvent(Ljava/util/Map;)V

    :goto_0
    return-void
.end method
