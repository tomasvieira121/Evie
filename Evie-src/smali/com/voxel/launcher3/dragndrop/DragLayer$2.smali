.class Lcom/voxel/launcher3/dragndrop/DragLayer$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/dragndrop/DragLayer;->fadeOutDragView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/dragndrop/DragLayer;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/dragndrop/DragLayer;)V
    .locals 0

    .line 829
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer$2;->this$0:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 831
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer$2;->this$0:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-static {p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->access$100(Lcom/voxel/launcher3/dragndrop/DragLayer;)Lcom/voxel/launcher3/dragndrop/DragView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 832
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer$2;->this$0:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-static {p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->access$200(Lcom/voxel/launcher3/dragndrop/DragLayer;)Lcom/voxel/launcher3/dragndrop/DragController;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer$2;->this$0:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-static {v0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->access$100(Lcom/voxel/launcher3/dragndrop/DragLayer;)Lcom/voxel/launcher3/dragndrop/DragView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/dragndrop/DragController;->onDeferredEndDrag(Lcom/voxel/launcher3/dragndrop/DragView;)V

    .line 834
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer$2;->this$0:Lcom/voxel/launcher3/dragndrop/DragLayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->access$102(Lcom/voxel/launcher3/dragndrop/DragLayer;Lcom/voxel/launcher3/dragndrop/DragView;)Lcom/voxel/launcher3/dragndrop/DragView;

    .line 835
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer$2;->this$0:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->invalidate()V

    return-void
.end method
