.class Lcom/voxel/launcher3/DeviceProfileQuery;
.super Ljava/lang/Object;
.source "DeviceProfile.java"


# instance fields
.field dimens:Landroid/graphics/PointF;

.field heightDps:F

.field profile:Lcom/voxel/launcher3/DeviceProfile;

.field value:F

.field widthDps:F


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/DeviceProfile;F)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget v0, p1, Lcom/voxel/launcher3/DeviceProfile;->minWidthDps:F

    iput v0, p0, Lcom/voxel/launcher3/DeviceProfileQuery;->widthDps:F

    .line 61
    iget v0, p1, Lcom/voxel/launcher3/DeviceProfile;->minHeightDps:F

    iput v0, p0, Lcom/voxel/launcher3/DeviceProfileQuery;->heightDps:F

    .line 62
    iput p2, p0, Lcom/voxel/launcher3/DeviceProfileQuery;->value:F

    .line 63
    new-instance p2, Landroid/graphics/PointF;

    iget v0, p0, Lcom/voxel/launcher3/DeviceProfileQuery;->widthDps:F

    iget v1, p0, Lcom/voxel/launcher3/DeviceProfileQuery;->heightDps:F

    invoke-direct {p2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/voxel/launcher3/DeviceProfileQuery;->dimens:Landroid/graphics/PointF;

    .line 64
    iput-object p1, p0, Lcom/voxel/launcher3/DeviceProfileQuery;->profile:Lcom/voxel/launcher3/DeviceProfile;

    return-void
.end method
