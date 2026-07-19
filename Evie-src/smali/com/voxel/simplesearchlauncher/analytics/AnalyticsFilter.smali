.class public Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;
.super Ljava/lang/Object;
.source "AnalyticsFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowLocation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public filter(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    return-object p1
.end method

.method public isLocationUSGeolimited()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
