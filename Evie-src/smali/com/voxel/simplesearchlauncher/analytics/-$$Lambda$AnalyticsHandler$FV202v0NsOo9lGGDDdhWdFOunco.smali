.class public final synthetic Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$FV202v0NsOo9lGGDDdhWdFOunco;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

.field private final synthetic f$1:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

.field private final synthetic f$2:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$FV202v0NsOo9lGGDDdhWdFOunco;->f$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$FV202v0NsOo9lGGDDdhWdFOunco;->f$1:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$FV202v0NsOo9lGGDDdhWdFOunco;->f$2:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$FV202v0NsOo9lGGDDdhWdFOunco;->f$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$FV202v0NsOo9lGGDDdhWdFOunco;->f$1:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$FV202v0NsOo9lGGDDdhWdFOunco;->f$2:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->lambda$saveLogToDatabase$4(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;Lorg/json/JSONObject;)V

    return-void
.end method
