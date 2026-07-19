.class Lcom/voxel/launcher3/dragndrop/DragView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/dragndrop/DragView;-><init>(Lcom/voxel/launcher3/Launcher;Landroid/graphics/Bitmap;IIFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/dragndrop/DragView;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/dragndrop/DragView;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragView$1;->this$0:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragView$1;->this$0:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-static {p1}, Lcom/voxel/launcher3/dragndrop/DragView;->access$000(Lcom/voxel/launcher3/dragndrop/DragView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragView$1;->this$0:Lcom/voxel/launcher3/dragndrop/DragView;

    iget-object p1, p1, Lcom/voxel/launcher3/dragndrop/DragView;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {p1}, Lcom/voxel/launcher3/dragndrop/DragController;->onDragViewAnimationEnd()V

    :cond_0
    return-void
.end method
