.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$BackgroundFolderAnimationHelper$rPaBGT_iku2OWndHlGRaNPRgNqU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$BackgroundFolderAnimationHelper$rPaBGT_iku2OWndHlGRaNPRgNqU;->f$0:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$BackgroundFolderAnimationHelper$rPaBGT_iku2OWndHlGRaNPRgNqU;->f$0:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;

    invoke-static {v0, p1}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->lambda$addListeners$0(Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;Landroid/animation/ValueAnimator;)V

    return-void
.end method
