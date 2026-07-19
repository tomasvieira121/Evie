.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$DeviceProfile$CvB_cznEVbDz_JtRDYDQg4IhfeU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/DeviceProfile;

.field private final synthetic f$1:Landroid/graphics/PointF;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/DeviceProfile;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$DeviceProfile$CvB_cznEVbDz_JtRDYDQg4IhfeU;->f$0:Lcom/voxel/launcher3/DeviceProfile;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$DeviceProfile$CvB_cznEVbDz_JtRDYDQg4IhfeU;->f$1:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$DeviceProfile$CvB_cznEVbDz_JtRDYDQg4IhfeU;->f$0:Lcom/voxel/launcher3/DeviceProfile;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$DeviceProfile$CvB_cznEVbDz_JtRDYDQg4IhfeU;->f$1:Landroid/graphics/PointF;

    check-cast p1, Lcom/voxel/launcher3/DeviceProfileQuery;

    check-cast p2, Lcom/voxel/launcher3/DeviceProfileQuery;

    invoke-static {v0, v1, p1, p2}, Lcom/voxel/launcher3/DeviceProfile;->lambda$findClosestDeviceProfiles$0(Lcom/voxel/launcher3/DeviceProfile;Landroid/graphics/PointF;Lcom/voxel/launcher3/DeviceProfileQuery;Lcom/voxel/launcher3/DeviceProfileQuery;)I

    move-result p1

    return p1
.end method
