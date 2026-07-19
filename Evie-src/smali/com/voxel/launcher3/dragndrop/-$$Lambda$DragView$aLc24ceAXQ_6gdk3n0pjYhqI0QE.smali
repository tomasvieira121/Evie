.class public final synthetic Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$aLc24ceAXQ_6gdk3n0pjYhqI0QE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/dragndrop/DragView;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/dragndrop/DragView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$aLc24ceAXQ_6gdk3n0pjYhqI0QE;->f$0:Lcom/voxel/launcher3/dragndrop/DragView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$aLc24ceAXQ_6gdk3n0pjYhqI0QE;->f$0:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-static {v0, p1}, Lcom/voxel/launcher3/dragndrop/DragView;->lambda$animateFilterTo$2(Lcom/voxel/launcher3/dragndrop/DragView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
