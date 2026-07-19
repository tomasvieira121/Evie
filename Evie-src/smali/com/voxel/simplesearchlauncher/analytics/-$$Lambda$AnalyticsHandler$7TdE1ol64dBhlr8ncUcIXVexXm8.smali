.class public final synthetic Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$7TdE1ol64dBhlr8ncUcIXVexXm8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$7TdE1ol64dBhlr8ncUcIXVexXm8;->f$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$7TdE1ol64dBhlr8ncUcIXVexXm8;->f$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->lambda$loadDeviceInfo$1(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
