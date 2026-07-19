.class public final synthetic Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/dragndrop/DragLayer;

.field private final synthetic f$1:Lcom/voxel/launcher3/dragndrop/DragView;

.field private final synthetic f$10:F

.field private final synthetic f$11:Landroid/graphics/Rect;

.field private final synthetic f$12:Landroid/graphics/Rect;

.field private final synthetic f$2:Landroid/view/animation/Interpolator;

.field private final synthetic f$3:Landroid/view/animation/Interpolator;

.field private final synthetic f$4:F

.field private final synthetic f$5:F

.field private final synthetic f$6:F

.field private final synthetic f$7:F

.field private final synthetic f$8:F

.field private final synthetic f$9:F


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/dragndrop/DragLayer;Lcom/voxel/launcher3/dragndrop/DragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$0:Lcom/voxel/launcher3/dragndrop/DragLayer;

    iput-object p2, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$1:Lcom/voxel/launcher3/dragndrop/DragView;

    iput-object p3, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$2:Landroid/view/animation/Interpolator;

    iput-object p4, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$3:Landroid/view/animation/Interpolator;

    iput p5, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$4:F

    iput p6, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$5:F

    iput p7, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$6:F

    iput p8, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$7:F

    iput p9, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$8:F

    iput p10, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$9:F

    iput p11, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$10:F

    iput-object p12, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$11:Landroid/graphics/Rect;

    iput-object p13, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$12:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 14

    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$0:Lcom/voxel/launcher3/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$1:Lcom/voxel/launcher3/dragndrop/DragView;

    iget-object v2, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$2:Landroid/view/animation/Interpolator;

    iget-object v3, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$3:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$4:F

    iget v5, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$5:F

    iget v6, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$6:F

    iget v7, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$7:F

    iget v8, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$8:F

    iget v9, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$9:F

    iget v10, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$10:F

    iget-object v11, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$11:Landroid/graphics/Rect;

    iget-object v12, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;->f$12:Landroid/graphics/Rect;

    move-object v13, p1

    invoke-static/range {v0 .. v13}, Lcom/voxel/launcher3/dragndrop/DragLayer;->lambda$animateView$1(Lcom/voxel/launcher3/dragndrop/DragLayer;Lcom/voxel/launcher3/dragndrop/DragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method
