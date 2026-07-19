.class public Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;
.super Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;
.source "AllAppsGridAdapter.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewInterface;


# instance fields
.field private mCellParams:Lcom/voxel/launcher3/CellParams;

.field private final mDefaultLauncherViewHeight:I

.field private final mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private final mIconItemPadding:I

.field private mLocalAppHeight:I

.field private mRowIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeparatorHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/allapps/AlphabeticalAppsSectionsHelper;Landroidx/recyclerview/widget/GridLayoutManager;Lcom/voxel/launcher3/CellParams;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/allapps/AlphabeticalAppsSectionsHelper;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 34
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mRowIndexes:Ljava/util/List;

    .line 43
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07020d

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mDefaultLauncherViewHeight:I

    const p2, 0x7f0701fa

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mSeparatorHeight:I

    const p2, 0x7f070060

    .line 48
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mIconItemPadding:I

    const/4 p1, 0x0

    .line 50
    invoke-direct {p0, p4, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->setCellParams(Lcom/voxel/launcher3/CellParams;Z)V

    return-void
.end method

.method private setCellParams(Lcom/voxel/launcher3/CellParams;Z)V
    .locals 1

    .line 183
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mCellParams:Lcom/voxel/launcher3/CellParams;

    .line 184
    invoke-virtual {p1}, Lcom/voxel/launcher3/CellParams;->getCellContentHeightPx()I

    move-result p1

    iget v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mIconItemPadding:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    iput p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mLocalAppHeight:I

    if-eqz p2, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method getRowCount()I
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mRowIndexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getRowHeight(I)I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mRowIndexes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 164
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->getItemViewType(I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 174
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :pswitch_0
    iget p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mLocalAppHeight:I

    return p1

    .line 170
    :pswitch_1
    iget p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mSeparatorHeight:I

    return p1

    .line 166
    :pswitch_2
    iget p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mDefaultLauncherViewHeight:I

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getRowIndex(I)I
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mRowIndexes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getSpanSize(I)I
    .locals 3

    .line 136
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->getItemViewType(I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x1

    return p1

    .line 144
    :pswitch_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 96
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->getItemViewType(I)I

    move-result v0

    const v1, 0x7f0a0039

    packed-switch v0, :pswitch_data_0

    .line 131
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :pswitch_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->getItem(I)Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 108
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 111
    check-cast p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;

    .line 113
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;->mIcon:Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 114
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mCellParams:Lcom/voxel/launcher3/CellParams;

    invoke-virtual {v1}, Lcom/voxel/launcher3/CellParams;->getIconSizePx()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 115
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mCellParams:Lcom/voxel/launcher3/CellParams;

    invoke-virtual {v1}, Lcom/voxel/launcher3/CellParams;->getIconSizePx()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 116
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mCellParams:Lcom/voxel/launcher3/CellParams;

    invoke-virtual {v1}, Lcom/voxel/launcher3/CellParams;->getIconDrawablePaddingPx()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 117
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;->mIcon:Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mCellParams:Lcom/voxel/launcher3/CellParams;

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    .line 118
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;->mIcon:Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    invoke-virtual {v1, v0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;->mIcon:Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->setLabelVisibility(Z)V

    .line 120
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;->mText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mCellParams:Lcom/voxel/launcher3/CellParams;

    invoke-virtual {v2}, Lcom/voxel/launcher3/CellParams;->getIconTextSizePx()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 121
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;->mText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget-boolean v2, v2, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->getItem(I)Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    .line 125
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;->mIcon:Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    invoke-virtual {v0, p2}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->setLocalAppData(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)V

    .line 126
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;->mIcon:Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->loadBadgeCount()V

    .line 127
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 98
    :pswitch_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->getItem(I)Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 99
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    .line 90
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :pswitch_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0022

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 82
    new-instance p2, Lcom/voxel/simplesearchlauncher/view/EmptyViewHolder;

    invoke-direct {p2, p1}, Lcom/voxel/simplesearchlauncher/view/EmptyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 85
    :pswitch_1
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0021

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 86
    new-instance p2, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;

    invoke-direct {p2, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 77
    :pswitch_2
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0023

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 78
    new-instance p2, Lcom/voxel/simplesearchlauncher/view/EmptyViewHolder;

    invoke-direct {p2, p1}, Lcom/voxel/simplesearchlauncher/view/EmptyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 73
    :pswitch_3
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d009b

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 74
    new-instance p2, Lcom/voxel/simplesearchlauncher/view/EmptyViewHolder;

    invoke-direct {p2, p1}, Lcom/voxel/simplesearchlauncher/view/EmptyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public recalculateRowIndexes()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mRowIndexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mRowIndexes:Ljava/util/List;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCellParams(Lcom/voxel/launcher3/CellParams;)V
    .locals 1

    const/4 v0, 0x1

    .line 179
    invoke-direct {p0, p1, v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->setCellParams(Lcom/voxel/launcher3/CellParams;Z)V

    return-void
.end method

.method public setResultListItems(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;",
            ">;)Z"
        }
    .end annotation

    .line 54
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;->setResultListItems(Ljava/util/List;)Z

    move-result p1

    .line 55
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->recalculateRowIndexes()V

    return p1
.end method
