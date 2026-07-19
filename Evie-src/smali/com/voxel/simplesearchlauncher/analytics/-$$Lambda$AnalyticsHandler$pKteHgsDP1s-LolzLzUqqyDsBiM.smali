.class public final synthetic Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$pKteHgsDP1s-LolzLzUqqyDsBiM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$pKteHgsDP1s-LolzLzUqqyDsBiM;->f$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$pKteHgsDP1s-LolzLzUqqyDsBiM;->f$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->lambda$loadDeviceInfo$2(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Ljava/lang/String;)V

    return-void
.end method
