.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$AppWidgetResizeFrame$9WTXpKSx6vOzCB2QzAav9NkwOhk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/AppWidgetResizeFrame;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/AppWidgetResizeFrame;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$AppWidgetResizeFrame$9WTXpKSx6vOzCB2QzAav9NkwOhk;->f$0:Lcom/voxel/launcher3/AppWidgetResizeFrame;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$AppWidgetResizeFrame$9WTXpKSx6vOzCB2QzAav9NkwOhk;->f$0:Lcom/voxel/launcher3/AppWidgetResizeFrame;

    invoke-static {v0, p1}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->lambda$snapToWidget$1(Lcom/voxel/launcher3/AppWidgetResizeFrame;Landroid/animation/ValueAnimator;)V

    return-void
.end method
