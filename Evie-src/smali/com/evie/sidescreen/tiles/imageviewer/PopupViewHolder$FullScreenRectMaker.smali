.class Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$FullScreenRectMaker;
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
    name = "FullScreenRectMaker"
.end annotation


# instance fields
.field mRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;


# direct methods
.method private constructor <init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$FullScreenRectMaker;->this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 425
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$FullScreenRectMaker;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$1;)V
    .locals 0

    .line 424
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$FullScreenRectMaker;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)V

    return-void
.end method


# virtual methods
.method public getRect()Landroid/graphics/Rect;
    .locals 5

    .line 428
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$FullScreenRectMaker;->mRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    return-object v0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$FullScreenRectMaker;->this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    iget-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->getWidthAndHeight(Landroid/view/View;)[I

    move-result-object v0

    .line 434
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$FullScreenRectMaker;->this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    invoke-static {v2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->access$500(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$FullScreenRectMaker;->this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    invoke-static {v3}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->access$500(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 435
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$FullScreenRectMaker;->this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    aget v3, v0, v4

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-static {v2, v3, v0, v1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->access$600(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$FullScreenRectMaker;->mRect:Landroid/graphics/Rect;

    .line 436
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$FullScreenRectMaker;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method
