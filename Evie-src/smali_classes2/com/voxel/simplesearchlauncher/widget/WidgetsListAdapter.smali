.class public Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WidgetsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mIconClickListener:Landroid/view/View$OnClickListener;

.field private mIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mIndent:I

.field private mLauncher:Lcom/voxel/launcher3/Launcher;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mWidgetPreviewLoader:Lcom/voxel/launcher3/WidgetPreviewLoader;

.field private mWidgetsModel:Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/voxel/launcher3/Launcher;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mIndent:I

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 74
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    .line 75
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 76
    iput-object p4, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    .line 78
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->setContainerHeight()V

    return-void
.end method

.method private getWidgetPreviewLoader()Lcom/voxel/launcher3/WidgetPreviewLoader;
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lcom/voxel/launcher3/WidgetPreviewLoader;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/voxel/launcher3/WidgetPreviewLoader;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/voxel/launcher3/WidgetPreviewLoader;-><init>(Landroid/content/Context;Lcom/voxel/launcher3/IconCache;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lcom/voxel/launcher3/WidgetPreviewLoader;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lcom/voxel/launcher3/WidgetPreviewLoader;

    return-object v0
.end method

.method private setContainerHeight()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 212
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v1

    .line 213
    iget-boolean v2, v1, Lcom/voxel/launcher3/DeviceProfile;->isLargeTablet:Z

    if-nez v2, :cond_0

    iget-boolean v1, v1, Lcom/voxel/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_1

    :cond_0
    const/high16 v1, 0x42600000    # 56.0f

    .line 214
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/voxel/launcher3/DynamicGrid;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mIndent:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mWidgetsModel:Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 90
    :cond_0
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->getPackageSize()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 51
    check-cast p1, Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->onBindViewHolder(Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;I)V
    .locals 7

    .line 95
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mWidgetsModel:Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;

    invoke-virtual {v0, p2}, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->getSortedWidgets(I)Ljava/util/List;

    move-result-object v0

    .line 97
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;->mRow:Landroid/view/ViewGroup;

    .line 106
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    if-lez v2, :cond_0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 110
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0d0139

    invoke-virtual {v5, v6, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;

    .line 114
    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v6}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 117
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-gez v2, :cond_1

    .line 120
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 121
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mWidgetsModel:Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;

    invoke-virtual {v2, p2}, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->getPackageItemInfo(I)Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;

    move-result-object p2

    .line 128
    iget-object v2, p1, Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;->mSectionIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v2, v5}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 129
    iget-object v2, p1, Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;->mSectionIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v5, p2, Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;->iconUri:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 131
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;->mSection:Landroid/widget/TextView;

    .line 132
    iget-object v2, p2, Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 137
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->getWidgetPreviewLoader()Lcom/voxel/launcher3/WidgetPreviewLoader;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 140
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 141
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;

    .line 142
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    if-eqz v2, :cond_3

    .line 143
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    .line 144
    new-instance v5, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-direct {v5, v6, v2, v4}, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;-><init>(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;Landroid/os/Parcelable;)V

    .line 145
    invoke-virtual {p2, v5}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->setTag(Ljava/lang/Object;)V

    .line 146
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lcom/voxel/launcher3/WidgetPreviewLoader;

    invoke-virtual {p2, v2, v5}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->applyFromAppWidgetProviderInfo(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;Lcom/voxel/launcher3/WidgetPreviewLoader;)V

    goto :goto_3

    .line 147
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_4

    .line 148
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 149
    new-instance v5, Lcom/voxel/simplesearchlauncher/widget/PendingAddShortcutInfo;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v5, v6}, Lcom/voxel/simplesearchlauncher/widget/PendingAddShortcutInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 150
    invoke-virtual {p2, v5}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->setTag(Ljava/lang/Object;)V

    .line 151
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/voxel/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lcom/voxel/launcher3/WidgetPreviewLoader;

    invoke-virtual {p2, v5, v2, v6}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->applyFromResolveInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/voxel/launcher3/WidgetPreviewLoader;)V

    .line 153
    :cond_4
    :goto_3
    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->ensurePreview()V

    .line 154
    invoke-virtual {p2, v3}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 165
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    const v1, 0x7f0d013b

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const p2, 0x7f0a02f9

    .line 167
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 171
    sget-boolean v1, Lcom/voxel/launcher3/Utilities;->ATLEAST_JB_MR1:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 172
    iget v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mIndent:I

    invoke-virtual {p2, v1, v0, v2, v0}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 174
    :cond_0
    iget v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mIndent:I

    invoke-virtual {p2, v1, v0, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 177
    :goto_0
    new-instance p2, Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;

    invoke-direct {p2, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p2
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 51
    check-cast p1, Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->onFailedToRecycleView(Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onFailedToRecycleView(Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->onViewRecycled(Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;)V
    .locals 2

    .line 182
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;->getContent()Landroid/view/ViewGroup;

    move-result-object p1

    const v0, 0x7f0a02f9

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 184
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 185
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;

    .line 186
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setWidgetsModel(Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->mWidgetsModel:Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;

    return-void
.end method
