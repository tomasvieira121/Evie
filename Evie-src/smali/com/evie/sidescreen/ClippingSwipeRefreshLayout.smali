.class public Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;
.super Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.source "ClippingSwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/ClippingSwipeRefreshLayout$ClippingFilter;
    }
.end annotation


# instance fields
.field private mClipping:I

.field private final mClippingRect:Landroid/graphics/Rect;

.field private mFilter:Lcom/evie/sidescreen/ClippingSwipeRefreshLayout$ClippingFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->mClippingRect:Landroid/graphics/Rect;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->initializeFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static getViewHierarchy(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 90
    invoke-static {p0, v0, v1}, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->getViewHierarchy(Landroid/view/View;Ljava/util/List;I)V

    return-object v0
.end method

.method private static getViewHierarchy(Landroid/view/View;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 95
    invoke-static {p0, p2}, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->getViewMessage(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 98
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 99
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 100
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->getViewHierarchy(Landroid/view/View;Ljava/util/List;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getViewMessage(Landroid/view/View;I)Ljava/lang/String;
    .locals 3

    .line 106
    new-instance v0, Ljava/lang/String;

    new-array p1, p1, [C

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const-string p1, "\u0000"

    const-string v1, "    "

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 112
    :try_start_0
    sget v0, Lcom/evie/sidescreen/R$id;->layoutResId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 114
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 119
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "no_id"

    goto :goto_1

    :cond_2
    const-string v0, "no_resources"

    .line 120
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 122
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] name_not_found\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initializeFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 47
    sget-object v0, Lcom/evie/sidescreen/R$styleable;->ClippingSwipeRefreshLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    sget p2, Lcom/evie/sidescreen/R$styleable;->ClippingSwipeRefreshLayout_clipping:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->mClipping:I

    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->mFilter:Lcom/evie/sidescreen/ClippingSwipeRefreshLayout$ClippingFilter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout$ClippingFilter;->reject(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->mClippingRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->mClipping:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 61
    iget-object v1, p0, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->mClippingRect:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 63
    iget-object v1, p0, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 65
    iget-object v1, p0, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 68
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p2
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 75
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 77
    invoke-static {p0}, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->getViewHierarchy(Landroid/view/View;)Ljava/util/List;

    move-result-object p2

    .line 79
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 81
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 84
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    return-void
.end method

.method public setClipping(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->mClipping:I

    return-void
.end method

.method public setFilter(Lcom/evie/sidescreen/ClippingSwipeRefreshLayout$ClippingFilter;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/evie/sidescreen/ClippingSwipeRefreshLayout;->mFilter:Lcom/evie/sidescreen/ClippingSwipeRefreshLayout$ClippingFilter;

    return-void
.end method
