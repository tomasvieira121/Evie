.class Lcom/voxel/launcher3/dragndrop/DragLayer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/dragndrop/DragLayer;->animateView(Lcom/voxel/launcher3/dragndrop/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/dragndrop/DragLayer;

.field final synthetic val$animationEndStyle:I

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/dragndrop/DragLayer;Ljava/lang/Runnable;I)V
    .locals 0

    .line 783
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer$1;->this$0:Lcom/voxel/launcher3/dragndrop/DragLayer;

    iput-object p2, p0, Lcom/voxel/launcher3/dragndrop/DragLayer$1;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput p3, p0, Lcom/voxel/launcher3/dragndrop/DragLayer$1;->val$animationEndStyle:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 785
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer$1;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 786
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 788
    :cond_0
    iget p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer$1;->val$animationEndStyle:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 793
    :pswitch_0
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer$1;->this$0:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-static {p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->access$000(Lcom/voxel/launcher3/dragndrop/DragLayer;)V

    goto :goto_0

    .line 790
    :pswitch_1
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer$1;->this$0:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->clearAnimatedView()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
