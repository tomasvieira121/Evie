.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Workspace$EIxSf5ey20b6k2mkPs8ypwpPPug;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Workspace;

.field private final synthetic f$1:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Workspace;Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$EIxSf5ey20b6k2mkPs8ypwpPPug;->f$0:Lcom/voxel/launcher3/Workspace;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$EIxSf5ey20b6k2mkPs8ypwpPPug;->f$1:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$EIxSf5ey20b6k2mkPs8ypwpPPug;->f$0:Lcom/voxel/launcher3/Workspace;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$EIxSf5ey20b6k2mkPs8ypwpPPug;->f$1:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    invoke-static {v0, v1, p1}, Lcom/voxel/launcher3/Workspace;->lambda$animateBackgroundGradient$2(Lcom/voxel/launcher3/Workspace;Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;Landroid/animation/ValueAnimator;)V

    return-void
.end method
