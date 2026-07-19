.class Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->animate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;)V
    .locals 0

    .line 2299
    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 2302
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;

    const/4 v0, 0x0

    iput v0, p1, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    .line 2303
    iput v0, p1, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2304
    iput v0, p1, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    const/4 v0, 0x1

    .line 2305
    iput-boolean v0, p1, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->repeating:Z

    return-void
.end method
