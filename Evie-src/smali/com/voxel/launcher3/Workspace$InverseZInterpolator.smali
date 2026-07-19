.class Lcom/voxel/launcher3/Workspace$InverseZInterpolator;
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
    name = "InverseZInterpolator"
.end annotation


# instance fields
.field private zInterpolator:Lcom/voxel/launcher3/Workspace$ZInterpolator;


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 2033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2034
    new-instance v0, Lcom/voxel/launcher3/Workspace$ZInterpolator;

    invoke-direct {v0, p1}, Lcom/voxel/launcher3/Workspace$ZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/voxel/launcher3/Workspace$InverseZInterpolator;->zInterpolator:Lcom/voxel/launcher3/Workspace$ZInterpolator;

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .line 2038
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$InverseZInterpolator;->zInterpolator:Lcom/voxel/launcher3/Workspace$ZInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/Workspace$ZInterpolator;->getInterpolation(F)F

    move-result p1

    sub-float/2addr v1, p1

    return v1
.end method
