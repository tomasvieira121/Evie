.class public final synthetic Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$SwipeHelper$vEUSD_xf52GPZfki4rNf9XI62D8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$SwipeHelper$vEUSD_xf52GPZfki4rNf9XI62D8;->f$0:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$SwipeHelper$vEUSD_xf52GPZfki4rNf9XI62D8;->f$1:Landroid/view/View;

    iput-boolean p3, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$SwipeHelper$vEUSD_xf52GPZfki4rNf9XI62D8;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$SwipeHelper$vEUSD_xf52GPZfki4rNf9XI62D8;->f$0:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$SwipeHelper$vEUSD_xf52GPZfki4rNf9XI62D8;->f$1:Landroid/view/View;

    iget-boolean v2, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$SwipeHelper$vEUSD_xf52GPZfki4rNf9XI62D8;->f$2:Z

    invoke-static {v0, v1, v2, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->lambda$dismissChild$1(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;Landroid/view/View;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
