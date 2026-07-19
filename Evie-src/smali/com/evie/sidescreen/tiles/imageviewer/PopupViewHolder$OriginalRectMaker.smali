.class Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$OriginalRectMaker;
.super Ljava/lang/Object;
.source "PopupViewHolder.java"

# interfaces
.implements Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OriginalRectMaker"
.end annotation


# instance fields
.field final mOriginalRect:Landroid/graphics/Rect;

.field mRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;


# direct methods
.method private constructor <init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Landroid/graphics/Rect;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$OriginalRectMaker;->this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$OriginalRectMaker;->mOriginalRect:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Landroid/graphics/Rect;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$1;)V
    .locals 0

    .line 441
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$OriginalRectMaker;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public getRect()Landroid/graphics/Rect;
    .locals 5

    .line 452
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$OriginalRectMaker;->mRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    return-object v0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$OriginalRectMaker;->this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    iget-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->getWidthAndHeight(Landroid/view/View;)[I

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$OriginalRectMaker;->this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    iget-object v3, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$OriginalRectMaker;->mOriginalRect:Landroid/graphics/Rect;

    .line 461
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$OriginalRectMaker;->mOriginalRect:Landroid/graphics/Rect;

    .line 462
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 458
    invoke-static {v1, v2, v0, v3, v4}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->access$700(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;IIII)F

    move-result v0

    .line 463
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 467
    :cond_1
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$OriginalRectMaker;->this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$OriginalRectMaker;->mOriginalRect:Landroid/graphics/Rect;

    invoke-static {v1, v2, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->access$800(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$OriginalRectMaker;->mRect:Landroid/graphics/Rect;

    .line 468
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$OriginalRectMaker;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method
