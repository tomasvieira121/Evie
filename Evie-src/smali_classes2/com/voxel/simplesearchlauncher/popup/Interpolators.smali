.class public Lcom/voxel/simplesearchlauncher/popup/Interpolators;
.super Ljava/lang/Object;
.source "Interpolators.java"


# static fields
.field public static final FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final TOUCH_RESPONSE:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x3e4ccccd    # 0.2f

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 28
    invoke-static {v1, v3, v0, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    sput-object v4, Lcom/voxel/simplesearchlauncher/popup/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 29
    invoke-static {v1, v3, v2, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    sput-object v1, Lcom/voxel/simplesearchlauncher/popup/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 30
    invoke-static {v3, v3, v0, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/popup/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const v0, 0x3e99999a    # 0.3f

    const v1, 0x3dcccccd    # 0.1f

    .line 36
    invoke-static {v0, v3, v1, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/popup/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    return-void
.end method
