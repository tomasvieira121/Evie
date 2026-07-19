.class public Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "TileRowDividerItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;
    }
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mPaddingLeft:I

.field private mPaddingRight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->mPaddingLeft:I

    .line 26
    iput v0, p0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->mPaddingRight:I

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/evie/sidescreen/R$drawable;->tile_row_divider:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->mPaddingLeft:I

    .line 26
    iput v0, p0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->mPaddingRight:I

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p2, :cond_0

    sget p2, Lcom/evie/sidescreen/R$drawable;->tile_row_divider_dark:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/evie/sidescreen/R$drawable;->tile_row_divider:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 74
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->mPaddingLeft:I

    add-int/2addr v0, v1

    .line 76
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->mPaddingRight:I

    sub-int/2addr v1, v2

    .line 77
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    .line 78
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 77
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 80
    :cond_0
    iget v0, p0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->mPaddingLeft:I

    .line 81
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->mPaddingRight:I

    sub-int/2addr v1, v2

    .line 84
    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    .line 86
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 88
    invoke-direct {p0, v4, p2}, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->shouldShowDividerForView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 92
    :cond_1
    iget-object v5, p0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 93
    iget-object v5, p0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    .line 94
    iget-object v6, p0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v6, v5, v6

    .line 95
    iget-object v7, p0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v0, v6, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    iget-object v5, p0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-static {v4}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->floatToIntAlpha(F)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 97
    iget-object v4, p0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 99
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private shouldShowDividerForView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 3

    .line 117
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    .line 118
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    .line 119
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 120
    invoke-virtual {v0}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->getItemCount()I

    move-result p2

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    const/4 v2, 0x0

    if-ne p1, p2, :cond_0

    return v2

    .line 124
    :cond_0
    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->getItem(I)Lcom/evie/sidescreen/mvp/ItemPresenter;

    move-result-object p2

    add-int/2addr p1, v1

    .line 125
    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->getItem(I)Lcom/evie/sidescreen/mvp/ItemPresenter;

    move-result-object p1

    .line 127
    instance-of v0, p2, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;

    if-nez v0, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    check-cast p2, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;

    .line 133
    check-cast p1, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;

    .line 135
    invoke-interface {p2}, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;->shouldShowBottomTileDivider()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;->shouldShowTopTileDivider()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v2
.end method


# virtual methods
.method public getDividerHeight()I
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 63
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->mPaddingLeft:I

    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->mPaddingRight:I

    return-void
.end method
