.class public Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;
.super Ljava/lang/Object;
.source "AnalyticsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogInfo"
.end annotation


# instance fields
.field data:Ljava/lang/String;

.field id:I

.field numFailures:I

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;

.field type:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
