.class public Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;
.super Ljava/lang/Object;
.source "AnalyticsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventProp"
.end annotation


# instance fields
.field private action:Ljava/lang/Object;

.field private label:Ljava/lang/Object;

.field props:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->props:Lorg/json/JSONObject;

    return-void
.end method

.method private addProp(Ljava/lang/String;Ljava/lang/Object;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;
    .locals 1

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->props:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 287
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 290
    :goto_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->action:Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 291
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->action:Ljava/lang/Object;

    goto :goto_1

    .line 292
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->label:Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 293
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->label:Ljava/lang/Object;

    :cond_1
    :goto_1
    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;D)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;
    .locals 0

    .line 255
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->addProp(Ljava/lang/String;Ljava/lang/Object;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;I)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;
    .locals 0

    .line 251
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->addProp(Ljava/lang/String;Ljava/lang/Object;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;
    .locals 0

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->addProp(Ljava/lang/String;Ljava/lang/Object;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;Z)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;
    .locals 0

    .line 259
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->addProp(Ljava/lang/String;Ljava/lang/Object;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object p1

    return-object p1
.end method

.method public getProps()Lorg/json/JSONObject;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->props:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->props:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
