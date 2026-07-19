.class public final synthetic Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$0F20nZ1Zmj9At9vzYWwhELSh9A0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$0F20nZ1Zmj9At9vzYWwhELSh9A0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$0F20nZ1Zmj9At9vzYWwhELSh9A0;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$0F20nZ1Zmj9At9vzYWwhELSh9A0;-><init>()V

    sput-object v0, Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$0F20nZ1Zmj9At9vzYWwhELSh9A0;->INSTANCE:Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$0F20nZ1Zmj9At9vzYWwhELSh9A0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->lambda$loadDeviceInfo$3(Ljava/lang/Throwable;)V

    return-void
.end method
