.class public final synthetic Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$LoadingNotificationsHelper$YyvycySfvcswAGimxoaf3QO9GdE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$LoadingNotificationsHelper$YyvycySfvcswAGimxoaf3QO9GdE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$LoadingNotificationsHelper$YyvycySfvcswAGimxoaf3QO9GdE;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$LoadingNotificationsHelper$YyvycySfvcswAGimxoaf3QO9GdE;-><init>()V

    sput-object v0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$LoadingNotificationsHelper$YyvycySfvcswAGimxoaf3QO9GdE;->INSTANCE:Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$LoadingNotificationsHelper$YyvycySfvcswAGimxoaf3QO9GdE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper;->lambda$notifyStartupCompleted$0()V

    return-void
.end method
