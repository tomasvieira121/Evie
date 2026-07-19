.class Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;
.super Ljava/lang/Object;
.source "FolderFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;-><init>()V
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

    .line 108
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 127
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$302(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 129
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$000(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Lcom/voxel/launcher3/Folder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$000(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Lcom/voxel/launcher3/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/Folder;->getContent()Lcom/voxel/launcher3/FolderPagedView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/FolderPagedView;->setVisibility(I)V

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$200(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;

    .line 134
    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mBubbleTextView:Lcom/voxel/launcher3/BubbleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/BubbleTextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 112
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$000(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Lcom/voxel/launcher3/Folder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$000(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Lcom/voxel/launcher3/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/Folder;->getContent()Lcom/voxel/launcher3/FolderPagedView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/FolderPagedView;->setVisibility(I)V

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$100(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Lcom/voxel/launcher3/FolderIcon;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 117
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$100(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Lcom/voxel/launcher3/FolderIcon;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/FolderIcon;->setIconsVisible(Z)V

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$200(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;

    .line 121
    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mBubbleTextView:Lcom/voxel/launcher3/BubbleTextView;

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/BubbleTextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    return-void
.end method
