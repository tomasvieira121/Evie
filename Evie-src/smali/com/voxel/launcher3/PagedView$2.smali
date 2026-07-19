.class Lcom/voxel/launcher3/PagedView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/PagedView;->animateDragViewToOriginalPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/PagedView;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/PagedView;)V
    .locals 0

    .line 2360
    iput-object p1, p0, Lcom/voxel/launcher3/PagedView$2;->this$0:Lcom/voxel/launcher3/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 2363
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView$2;->this$0:Lcom/voxel/launcher3/PagedView;

    invoke-virtual {p1}, Lcom/voxel/launcher3/PagedView;->onPostReorderingAnimationCompleted()V

    return-void
.end method
