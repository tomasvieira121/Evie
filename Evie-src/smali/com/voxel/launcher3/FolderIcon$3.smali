.class Lcom/voxel/launcher3/FolderIcon$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/FolderIcon;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/FolderIcon;Ljava/lang/Runnable;)V
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/voxel/launcher3/FolderIcon$3;->this$0:Lcom/voxel/launcher3/FolderIcon;

    iput-object p2, p0, Lcom/voxel/launcher3/FolderIcon$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 858
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon$3;->this$0:Lcom/voxel/launcher3/FolderIcon;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/voxel/launcher3/FolderIcon;->mAnimating:Z

    .line 859
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 860
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 853
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon$3;->this$0:Lcom/voxel/launcher3/FolderIcon;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/voxel/launcher3/FolderIcon;->mAnimating:Z

    return-void
.end method
