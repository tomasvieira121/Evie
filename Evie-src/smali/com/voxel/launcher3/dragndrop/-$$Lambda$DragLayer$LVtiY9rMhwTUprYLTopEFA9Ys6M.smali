.class public final synthetic Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$LVtiY9rMhwTUprYLTopEFA9Ys6M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/dragndrop/DragLayer;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/dragndrop/DragLayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$LVtiY9rMhwTUprYLTopEFA9Ys6M;->f$0:Lcom/voxel/launcher3/dragndrop/DragLayer;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$LVtiY9rMhwTUprYLTopEFA9Ys6M;->f$0:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-static {v0, p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->lambda$fadeOutDragView$2(Lcom/voxel/launcher3/dragndrop/DragLayer;Landroid/animation/ValueAnimator;)V

    return-void
.end method
