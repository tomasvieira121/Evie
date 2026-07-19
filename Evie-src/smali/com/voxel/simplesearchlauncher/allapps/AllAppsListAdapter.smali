.class public Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;
.super Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;
.source "AllAppsListAdapter.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewInterface;


# instance fields
.field private final mDefaultLauncherViewHeight:I

.field private mLightMode:Z

.field private final mLocalAppHeight:I

.field private final mSeparatorHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/allapps/AlphabeticalAppsSectionsHelper;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/allapps/AlphabeticalAppsSectionsHelper;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07020d

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->mDefaultLauncherViewHeight:I

    const p2, 0x7f0701fa

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->mSeparatorHeight:I

    const p2, 0x7f0701f4

    .line 37
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->mLocalAppHeight:I

    return-void
.end method


# virtual methods
.method getRowCount()I
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getRowHeight(I)I
    .locals 1

    .line 124
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->getItemViewType(I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 136
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :pswitch_0
    iget p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->mLocalAppHeight:I

    return p1

    .line 130
    :pswitch_1
    iget p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->mSeparatorHeight:I

    return p1

    .line 126
    :pswitch_2
    iget p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->mDefaultLauncherViewHeight:I

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
    .locals 0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 79
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->getItemViewType(I)I

    move-result v0

    const v1, 0x7f0a0039

    packed-switch v0, :pswitch_data_0

    .line 107
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :pswitch_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->getItem(I)Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 94
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 97
    check-cast p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;

    .line 98
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->getItem(I)Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    .line 100
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;->mIcon:Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    invoke-virtual {v0, p2}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->setLocalAppData(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)V

    .line 101
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;->mIcon:Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->loadBadgeCount()V

    .line 103
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 81
    :pswitch_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->getItem(I)Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 82
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    .line 73
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :pswitch_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0025

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 60
    new-instance p2, Lcom/voxel/simplesearchlauncher/view/EmptyViewHolder;

    invoke-direct {p2, p1}, Lcom/voxel/simplesearchlauncher/view/EmptyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 63
    :pswitch_1
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0024

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 64
    new-instance p2, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;

    invoke-direct {p2, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;-><init>(Landroid/view/View;)V

    .line 65
    iget-object p1, p2, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;->mIcon:Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->setLabelVisibility(Z)V

    .line 67
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->mLightMode:Z

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p2, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;->mText:Landroid/widget/TextView;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-object p2

    .line 55
    :pswitch_2
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0026

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    new-instance p2, Lcom/voxel/simplesearchlauncher/view/EmptyViewHolder;

    invoke-direct {p2, p1}, Lcom/voxel/simplesearchlauncher/view/EmptyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 51
    :pswitch_3
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d009b

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 52
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

.method public setLightMode(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->mLightMode:Z

    return-void
.end method
