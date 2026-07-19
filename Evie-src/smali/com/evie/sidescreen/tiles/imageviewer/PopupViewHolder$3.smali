.class Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$3;
.super Ljava/lang/Object;
.source "PopupViewHolder.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->animateToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;Landroid/animation/Animator$AnimatorListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

.field final synthetic val$contentLp:Landroid/widget/AbsoluteLayout$LayoutParams;

.field final synthetic val$finalRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Landroid/widget/AbsoluteLayout$LayoutParams;Landroid/graphics/Rect;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$3;->this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    iput-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$3;->val$contentLp:Landroid/widget/AbsoluteLayout$LayoutParams;

    iput-object p3, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$3;->val$finalRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 237
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$3;->val$contentLp:Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$3;->val$finalRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 238
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$3;->val$contentLp:Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$3;->val$finalRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 239
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$3;->val$contentLp:Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$3;->val$finalRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p1, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 240
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$3;->val$contentLp:Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$3;->val$finalRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 242
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$3;->this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    iget-object p1, p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mContentView:Landroid/view/View;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$3;->val$contentLp:Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
