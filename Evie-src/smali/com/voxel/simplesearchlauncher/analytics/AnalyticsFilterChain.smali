.class public Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilterChain;
.super Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;
.source "AnalyticsFilterChain.java"


# instance fields
.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilterChain;->mFilters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addFilter(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilterChain;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allowLocation()Z
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilterChain;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 17
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilterChain;->mFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;

    .line 18
    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;->allowLocation()Z

    move-result v2

    and-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0

    .line 24
    :cond_1
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;->allowLocation()Z

    move-result v0

    return v0
.end method

.method public filter(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilterChain;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilterChain;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;

    .line 48
    invoke-virtual {v1, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;->filter(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    :cond_1
    return-object p1

    .line 55
    :cond_2
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;->filter(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public isLocationUSGeolimited()Z
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilterChain;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 33
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilterChain;->mFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;

    .line 34
    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;->isLocationUSGeolimited()Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0

    .line 40
    :cond_1
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;->isLocationUSGeolimited()Z

    move-result v0

    return v0
.end method
