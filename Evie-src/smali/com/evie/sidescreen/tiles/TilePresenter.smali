.class public abstract Lcom/evie/sidescreen/tiles/TilePresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "TilePresenter.java"

# interfaces
.implements Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;
.implements Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/evie/sidescreen/mvp/MvpViewHolder;",
        ">",
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "TVH;>;",
        "Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;",
        "Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;"
    }
.end annotation


# instance fields
.field private firstVisiblePosition:F

.field private firstVisibleTime:J

.field private isTapped:Z

.field protected final mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

.field protected final mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

.field protected final mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;


# direct methods
.method public constructor <init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->isTapped:Z

    const-wide/16 v0, -0x1

    .line 45
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->firstVisibleTime:J

    const/high16 v0, -0x40800000    # -1.0f

    .line 46
    iput v0, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->firstVisiblePosition:F

    .line 35
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    iput-object p2, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    iput-object p3, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    return-void
.end method

.method private beginImpressionEvent()V
    .locals 2

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->firstVisibleTime:J

    .line 115
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    iget-object v0, v0, Lcom/evie/sidescreen/mvp/MvpViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    iget-object v0, v0, Lcom/evie/sidescreen/mvp/MvpViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/evie/sidescreen/tiles/TilePresenter;->getYPositionFraction(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->firstVisiblePosition:F

    :cond_0
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

    .line 123
    iget-wide v0, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->firstVisibleTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/TilePresenter;->shouldReportImpressionEvent()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 132
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->firstVisibleTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    return-void

    .line 137
    :cond_2
    iget v2, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->firstVisiblePosition:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_3

    const-string v3, "screen_position_start"

    .line 138
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_3
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    iget-object v2, v2, Lcom/evie/sidescreen/mvp/MvpViewHolder;->itemView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 142
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    iget-object v2, v2, Lcom/evie/sidescreen/mvp/MvpViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/evie/sidescreen/tiles/TilePresenter;->getYPositionFraction(Landroid/view/View;)F

    move-result v2

    const-string v3, "screen_position_end"

    .line 143
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "is_screen_landscape"

    .line 144
    iget-object v3, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    iget-object v3, v3, Lcom/evie/sidescreen/mvp/MvpViewHolder;->itemView:Landroid/view/View;

    .line 145
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/evie/sidescreen/tiles/TilePresenter;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 144
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v2, "is_tapped"

    .line 149
    iget-boolean v3, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->isTapped:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "duration"

    .line 150
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "attribute_content_tile"

    .line 151
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "attribute_screen_info"

    .line 152
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->isTapped:Z

    .line 154
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_article_impression"

    invoke-virtual {v0, v1, p1}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    const-wide/16 v0, -0x1

    .line 157
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->firstVisibleTime:J

    const/high16 p1, -0x40800000    # -1.0f

    .line 158
    iput p1, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->firstVisiblePosition:F

    return-void
.end method

.method protected static getScreenWidthPixels(Landroid/content/Context;)I
    .locals 2

    .line 49
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 50
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 51
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 52
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method private getStatusBarHeight(Landroid/content/Context;)I
    .locals 3

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 185
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 186
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected static getTimeElapsedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 64
    :cond_0
    :try_start_0
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {p1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 74
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 75
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v0, v3

    .line 76
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v3

    .line 77
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v5

    .line 78
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const/4 p1, 0x1

    cmp-long v9, v3, v7

    if-lez v9, :cond_1

    .line 81
    sget v0, Lcom/evie/sidescreen/R$string;->ss_days_ago:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    cmp-long v3, v5, v7

    if-lez v3, :cond_2

    .line 84
    sget v0, Lcom/evie/sidescreen/R$string;->ss_hours_ago:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 87
    :cond_2
    sget v3, Lcom/evie/sidescreen/R$string;->ss_minutes_ago:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-virtual {p0, v3, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v1
.end method

.method private getUsableDisplayHeight(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 175
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 176
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 178
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 179
    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 180
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p1
.end method

.method private getYPositionFraction(Landroid/view/View;)F
    .locals 2

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x2

    .line 164
    new-array v0, v0, [I

    .line 165
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    iget-object v1, v1, Lcom/evie/sidescreen/mvp/MvpViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x1

    .line 167
    aget v0, v0, v1

    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/TilePresenter;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 168
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/TilePresenter;->getUsableDisplayHeight(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    int-to-float v0, v0

    sub-float v0, p1, v0

    div-float/2addr v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float v0, v0, p1

    .line 171
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    return v0
.end method

.method private isScreenLandscape(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "window"

    .line 190
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 191
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 193
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 194
    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 195
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public backgroundReliesOnAlpha()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public backgroundReliesOnPrevAlpha()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getAnalyticsAttributes()Ljava/util/Map;
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

.method public isSameItem(Ljava/lang/Object;)Z
    .locals 1

    .line 205
    invoke-super {p0, p1}, Lcom/evie/sidescreen/mvp/ItemPresenter;->isSameItem(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 209
    :cond_0
    check-cast p1, Lcom/evie/sidescreen/tiles/TilePresenter;

    .line 210
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    iget-object p1, p1, Lcom/evie/sidescreen/tiles/TilePresenter;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onTapped()V
    .locals 1

    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/TilePresenter;->isTapped:Z

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/evie/sidescreen/mvp/ItemPresenter;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/TilePresenter;->beginImpressionEvent()V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/TilePresenter;->getAnalyticsAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/TilePresenter;->endImpressionEvent(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public shouldFillInBackground()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldReportImpressionEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldRoundBottomCorners()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldRoundTopCorners()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldShowBottomTileDivider()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldShowTopTileDivider()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
