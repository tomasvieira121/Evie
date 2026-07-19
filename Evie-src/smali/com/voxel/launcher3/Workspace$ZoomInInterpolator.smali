.class Lcom/voxel/launcher3/Workspace$ZoomInInterpolator;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZoomInInterpolator"
.end annotation


# instance fields
.field private final decelerate:Landroid/view/animation/DecelerateInterpolator;

.field private final inverseZInterpolator:Lcom/voxel/launcher3/Workspace$InverseZInterpolator;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 2057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2058
    new-instance v0, Lcom/voxel/launcher3/Workspace$InverseZInterpolator;

    const v1, 0x3eb33333    # 0.35f

    invoke-direct {v0, v1}, Lcom/voxel/launcher3/Workspace$InverseZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/voxel/launcher3/Workspace$ZoomInInterpolator;->inverseZInterpolator:Lcom/voxel/launcher3/Workspace$InverseZInterpolator;

    .line 2059
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/voxel/launcher3/Workspace$ZoomInInterpolator;->decelerate:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .line 2062
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$ZoomInInterpolator;->decelerate:Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Lcom/voxel/launcher3/Workspace$ZoomInInterpolator;->inverseZInterpolator:Lcom/voxel/launcher3/Workspace$InverseZInterpolator;

    invoke-virtual {v1, p1}, Lcom/voxel/launcher3/Workspace$InverseZInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    return p1
.end method
