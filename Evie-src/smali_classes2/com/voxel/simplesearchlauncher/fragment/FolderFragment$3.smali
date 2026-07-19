.class Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;
.super Ljava/lang/Object;
.source "FolderFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 17

    move-object/from16 v0, p0

    .line 302
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$400(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 304
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$000(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Lcom/voxel/launcher3/Folder;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$000(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Lcom/voxel/launcher3/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$000(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Lcom/voxel/launcher3/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$400(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    .line 307
    :cond_0
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$500(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)V

    .line 309
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$200(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;

    .line 310
    iget-object v3, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$600(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;F)V

    goto :goto_0

    .line 313
    :cond_1
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {}, Lcom/voxel/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$302(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 314
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$300(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Landroid/animation/AnimatorSet;

    move-result-object v1

    iget-object v2, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$700(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v1, 0x2

    .line 316
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 317
    invoke-static {}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$800()Landroid/view/animation/LinearInterpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 318
    iget-object v2, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$900(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x1c2

    .line 319
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 321
    iget-object v2, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$300(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 323
    iget-object v3, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$1000(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/16 v7, 0x1c2

    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$300(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Landroid/animation/AnimatorSet;

    move-result-object v9

    invoke-static/range {v3 .. v9}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$1100(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;Ljava/util/List;FFJLandroid/animation/AnimatorSet;)V

    .line 324
    iget-object v10, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {v10}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$1200(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const-wide/16 v14, 0x1c2

    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$300(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Landroid/animation/AnimatorSet;

    move-result-object v16

    invoke-static/range {v10 .. v16}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$1100(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;Ljava/util/List;FFJLandroid/animation/AnimatorSet;)V

    .line 326
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$300(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 328
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$1300(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$FolderFragmentListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$1300(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$FolderFragmentListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$FolderFragmentListener;->onAnimationStarted()V

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
