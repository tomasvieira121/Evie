.class public final synthetic Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$S_k19SkFUfbBUwoeROZZxQWJ_9A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

.field private final synthetic f$1:Landroid/graphics/Rect;

.field private final synthetic f$2:Landroid/graphics/Rect;

.field private final synthetic f$3:Landroid/graphics/Rect;

.field private final synthetic f$4:Landroid/widget/AbsoluteLayout$LayoutParams;

.field private final synthetic f$5:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;

.field private final synthetic f$6:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;

.field private final synthetic f$7:Landroid/widget/AbsoluteLayout$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/widget/AbsoluteLayout$LayoutParams;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;Landroid/widget/AbsoluteLayout$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$S_k19SkFUfbBUwoeROZZxQWJ_9A;->f$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    iput-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$S_k19SkFUfbBUwoeROZZxQWJ_9A;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$S_k19SkFUfbBUwoeROZZxQWJ_9A;->f$2:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$S_k19SkFUfbBUwoeROZZxQWJ_9A;->f$3:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$S_k19SkFUfbBUwoeROZZxQWJ_9A;->f$4:Landroid/widget/AbsoluteLayout$LayoutParams;

    iput-object p6, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$S_k19SkFUfbBUwoeROZZxQWJ_9A;->f$5:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;

    iput-object p7, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$S_k19SkFUfbBUwoeROZZxQWJ_9A;->f$6:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;

    iput-object p8, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$S_k19SkFUfbBUwoeROZZxQWJ_9A;->f$7:Landroid/widget/AbsoluteLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$S_k19SkFUfbBUwoeROZZxQWJ_9A;->f$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$S_k19SkFUfbBUwoeROZZxQWJ_9A;->f$1:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$S_k19SkFUfbBUwoeROZZxQWJ_9A;->f$2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$S_k19SkFUfbBUwoeROZZxQWJ_9A;->f$3:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$S_k19SkFUfbBUwoeROZZxQWJ_9A;->f$4:Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v5, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$S_k19SkFUfbBUwoeROZZxQWJ_9A;->f$5:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;

    iget-object v6, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$S_k19SkFUfbBUwoeROZZxQWJ_9A;->f$6:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;

    iget-object v7, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$S_k19SkFUfbBUwoeROZZxQWJ_9A;->f$7:Landroid/widget/AbsoluteLayout$LayoutParams;

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->lambda$animateToRect$4(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/widget/AbsoluteLayout$LayoutParams;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;Landroid/widget/AbsoluteLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method
