.class public Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "TileBackgroundItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;
    }
.end annotation


# instance fields
.field private mBackground:Landroid/graphics/drawable/GradientDrawable;

.field private final mBounds:Landroid/graphics/Rect;

.field private final mCornerRadius:[F

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private final mPrevBounds:Landroid/graphics/Rect;

.field private final mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mBounds:Landroid/graphics/Rect;

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mPrevBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mPaddingLeft:I

    .line 29
    iput v0, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mPaddingRight:I

    const/16 v0, 0x8

    .line 31
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mCornerRadius:[F

    .line 41
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 43
    sget v2, Lcom/evie/sidescreen/R$attr;->tilesBackground:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 44
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 45
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v1, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 46
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/evie/sidescreen/R$dimen;->ss_image_rounded_corner_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mRadius:I

    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 64
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mPaddingLeft:I

    add-int/2addr v0, v1

    .line 66
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mPaddingRight:I

    sub-int/2addr v1, v2

    .line 67
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    .line 68
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 67
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 70
    :cond_0
    iget v0, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mPaddingLeft:I

    .line 71
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mPaddingRight:I

    sub-int/2addr v1, v2

    .line 74
    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 78
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 79
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    if-gt v2, v3, :cond_b

    .line 81
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 82
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 83
    invoke-direct {p0, v4, p2}, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->getTileBackgroundContractor(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v2, -0x1

    .line 89
    invoke-virtual {p2, v6}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 94
    :cond_3
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 96
    invoke-interface {v5}, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;->shouldFillInBackground()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    .line 100
    :cond_4
    iget-object v7, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v4, v7}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 101
    iget-object v7, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 104
    iget-object v7, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mPrevBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {p0, v4}, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    .line 105
    iget-object v8, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {p0, v4}, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int/2addr v8, v9

    .line 107
    invoke-interface {v5}, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;->shouldRoundTopCorners()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_5

    iget v9, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mRadius:I

    int-to-float v9, v9

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    .line 108
    :goto_2
    invoke-interface {v5}, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;->shouldRoundBottomCorners()Z

    move-result v11

    if-eqz v11, :cond_6

    iget v10, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mRadius:I

    int-to-float v10, v10

    :cond_6
    const/4 v11, 0x0

    :goto_3
    const/4 v12, 0x4

    if-ge v11, v12, :cond_7

    .line 110
    iget-object v12, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mCornerRadius:[F

    aput v9, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    const/16 v9, 0x8

    if-ge v12, v9, :cond_8

    .line 113
    iget-object v9, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mCornerRadius:[F

    aput v10, v9, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 115
    :cond_8
    iget-object v9, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v10, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mCornerRadius:[F

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 116
    iget-object v9, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v9, v0, v7, v1, v8}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 117
    invoke-interface {v5}, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;->backgroundReliesOnPrevAlpha()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 118
    iget-object v4, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v5

    invoke-static {v5}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->floatToIntAlpha(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    goto :goto_5

    .line 119
    :cond_9
    invoke-interface {v5}, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;->backgroundReliesOnAlpha()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 120
    iget-object v5, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-static {v4}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->floatToIntAlpha(F)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    goto :goto_5

    .line 122
    :cond_a
    iget-object v4, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 124
    :goto_5
    iget-object v4, p0, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 127
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    return-object p1
.end method

.method private getTileBackgroundContractor(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;
    .locals 2

    .line 137
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    .line 138
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    .line 139
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 140
    invoke-virtual {v0}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_0

    return-object v1

    .line 144
    :cond_0
    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->getItem(I)Lcom/evie/sidescreen/mvp/ItemPresenter;

    move-result-object p1

    .line 145
    instance-of p2, p1, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;

    if-nez p2, :cond_1

    return-object v1

    .line 149
    :cond_1
    check-cast p1, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;

    return-object p1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 53
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
