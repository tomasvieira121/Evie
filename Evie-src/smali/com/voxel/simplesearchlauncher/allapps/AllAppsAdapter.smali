.class public abstract Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;
.super Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;
.source "AllAppsAdapter.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewInterface;


# instance fields
.field protected final mInflater:Landroid/view/LayoutInflater;

.field private mMapIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mOnClickListener:Landroid/view/View$OnClickListener;

.field protected final mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mSearchItemDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSectionsHelper:Lcom/voxel/simplesearchlauncher/allapps/AlphabeticalAppsSectionsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/allapps/AlphabeticalAppsSectionsHelper;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;->mSearchItemDataList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;->mMapIndex:Ljava/util/HashMap;

    .line 37
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;->mSectionsHelper:Lcom/voxel/simplesearchlauncher/allapps/AlphabeticalAppsSectionsHelper;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 40
    iput-object p4, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;->mSearchItemDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;->mSearchItemDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;->mSearchItemDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;

    .line 65
    instance-of v0, p1, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 67
    :cond_0
    instance-of v0, p1, Lcom/voxel/simplesearchlauncher/adapter/ListSeparator;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 69
    :cond_1
    instance-of p1, p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$NewSectionSeparator;

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getMapIndex()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;->mMapIndex:Ljava/util/HashMap;

    return-object v0
.end method

.method getSectionTitle(I)Ljava/lang/String;
    .locals 1

    .line 78
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;->mSearchItemDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;

    .line 85
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;->mSectionsHelper:Lcom/voxel/simplesearchlauncher/allapps/AlphabeticalAppsSectionsHelper;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/allapps/AlphabeticalAppsSectionsHelper;->getSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-string p1, ""

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMapIndex(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;->mMapIndex:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 98
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;->mMapIndex:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setResultListItems(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;",
            ">;)Z"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;->mSearchItemDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 46
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;->mSearchItemDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 47
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsAdapter;->mSearchItemDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return v0
.end method
