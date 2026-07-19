.class public Lcom/evie/search/SearchAdapter;
.super Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;
.source "SearchAdapter.java"

# interfaces
.implements Lcom/evie/common/dragndrop/DragSource;
.implements Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringItemPositioner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/voxel/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;",
        ">;",
        "Lcom/evie/common/dragndrop/DragSource;",
        "Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringItemPositioner;"
    }
.end annotation


# instance fields
.field private final mPresenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private mViewHolderFactory:Lcom/evie/search/recyclerview/viewholder/CustomViewHolderFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evie/search/SearchAdapter;->mPresenters:Ljava/util/List;

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/evie/search/SearchAdapter;->mViewHolderFactory:Lcom/evie/search/recyclerview/viewholder/CustomViewHolderFactory;

    return-void
.end method


# virtual methods
.method changePresenter(ILcom/evie/search/recyclerview/presenter/BaseItemPresenter;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/evie/search/SearchAdapter;->mPresenters:Ljava/util/List;

    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/evie/search/SearchAdapter;->mPresenters:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {p0, p1}, Lcom/evie/search/SearchAdapter;->notifyItemChanged(I)V

    .line 50
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method clearPresenters()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/evie/search/SearchAdapter;->mPresenters:Ljava/util/List;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/evie/search/SearchAdapter;->mPresenters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 70
    invoke-virtual {p0}, Lcom/evie/search/SearchAdapter;->notifyDataSetChanged()V

    .line 71
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clickFirstResult()Z
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/evie/search/SearchAdapter;->mPresenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/evie/search/SearchAdapter;->mPresenters:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/evie/search/recyclerview/presenter/HeaderPresenter;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/evie/search/SearchAdapter;->mPresenters:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    invoke-interface {v0}, Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;->onItemClick()V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/evie/search/SearchAdapter;->mPresenters:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    invoke-interface {v0}, Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;->onItemClick()V

    :goto_0
    return v2
.end method

.method public getIntrinsicIconScaleFactor()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/evie/search/SearchAdapter;->mPresenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewHeightForPosition(I)I
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/evie/search/SearchAdapter;->mPresenters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    invoke-interface {p1}, Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;->getItemViewHeight()I

    move-result p1

    return p1
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/evie/search/SearchAdapter;->mPresenters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    invoke-interface {p1}, Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;->getType()I

    move-result p1

    return p1
.end method

.method public getRank(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)I
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/evie/search/SearchAdapter;->mPresenters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    if-ge v0, p1, :cond_2

    .line 84
    iget-object v2, p0, Lcom/evie/search/SearchAdapter;->mPresenters:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    .line 85
    instance-of v3, v2, Lcom/evie/search/recyclerview/presenter/HeaderPresenter;

    if-nez v3, :cond_0

    instance-of v2, v2, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;

    if-eqz v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public hasUniformViewHeight()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method insertPresenter(ILcom/evie/search/recyclerview/presenter/BaseItemPresenter;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/evie/search/SearchAdapter;->mPresenters:Ljava/util/List;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/evie/search/SearchAdapter;->mPresenters:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/evie/search/SearchAdapter;->notifyItemInserted(I)V

    .line 43
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onBindViewHolder(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;I)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/evie/search/SearchAdapter;->mPresenters:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    invoke-interface {p2, p1}, Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;->bind(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 26
    check-cast p1, Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/evie/search/SearchAdapter;->onBindViewHolder(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;
    .locals 1

    .line 121
    sget v0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->ID:I

    if-ne p2, v0, :cond_0

    .line 122
    invoke-static {p1}, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    move-result-object p1

    return-object p1

    .line 125
    :cond_0
    sget v0, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;->ID:I

    if-ne p2, v0, :cond_1

    .line 126
    invoke-static {p1}, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;

    move-result-object p1

    return-object p1

    .line 129
    :cond_1
    sget v0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->ID:I

    if-ne p2, v0, :cond_2

    .line 130
    invoke-static {p1}, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;

    move-result-object p1

    return-object p1

    .line 133
    :cond_2
    sget v0, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->ID:I

    if-ne p2, v0, :cond_3

    .line 134
    invoke-static {p1}, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;

    move-result-object p1

    return-object p1

    .line 137
    :cond_3
    sget v0, Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;->ID:I

    if-ne p2, v0, :cond_4

    .line 138
    invoke-static {p1}, Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;

    move-result-object p1

    return-object p1

    .line 141
    :cond_4
    sget v0, Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;->ID:I

    if-ne p2, v0, :cond_5

    .line 142
    invoke-static {p1}, Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;

    move-result-object p1

    return-object p1

    .line 145
    :cond_5
    sget v0, Lcom/evie/search/recyclerview/viewholder/MessageViewHolder;->ID:I

    if-ne p2, v0, :cond_6

    .line 146
    invoke-static {p1}, Lcom/evie/search/recyclerview/viewholder/MessageViewHolder;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/evie/search/recyclerview/viewholder/MessageViewHolder;

    move-result-object p1

    return-object p1

    .line 149
    :cond_6
    iget-object v0, p0, Lcom/evie/search/SearchAdapter;->mViewHolderFactory:Lcom/evie/search/recyclerview/viewholder/CustomViewHolderFactory;

    if-eqz v0, :cond_7

    invoke-interface {v0, p2}, Lcom/evie/search/recyclerview/viewholder/CustomViewHolderFactory;->handlesViewType(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 150
    iget-object v0, p0, Lcom/evie/search/SearchAdapter;->mViewHolderFactory:Lcom/evie/search/recyclerview/viewholder/CustomViewHolderFactory;

    invoke-interface {v0, p1, p2}, Lcom/evie/search/recyclerview/viewholder/CustomViewHolderFactory;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;

    move-result-object p1

    return-object p1

    .line 153
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid viewType passed to SearchAdapter."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/evie/search/SearchAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/evie/common/dragndrop/DragObjectAbstraction;ZZ)V
    .locals 0

    if-eqz p3, :cond_0

    return-void

    :cond_0
    if-nez p4, :cond_1

    const/4 p1, 0x0

    .line 206
    invoke-interface {p2, p1}, Lcom/evie/common/dragndrop/DragObjectAbstraction;->setDeferDragViewCleanupPostAnimation(Z)V

    :cond_1
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 0

    return-void
.end method

.method public onViewRecycled(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V
    .locals 0

    .line 173
    invoke-virtual {p1}, Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;->unbindPresenter()V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/search/SearchAdapter;->onViewRecycled(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V

    return-void
.end method

.method removePresenter(I)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/evie/search/SearchAdapter;->mPresenters:Ljava/util/List;

    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/evie/search/SearchAdapter;->mPresenters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/evie/search/SearchAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Lcom/evie/search/SearchAdapter;->notifyItemRemoved(I)V

    .line 64
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setCustomViewHolderFactory(Lcom/evie/search/recyclerview/viewholder/CustomViewHolderFactory;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/evie/search/SearchAdapter;->mViewHolderFactory:Lcom/evie/search/recyclerview/viewholder/CustomViewHolderFactory;

    return-void
.end method

.method setPresenters(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;",
            ">;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/evie/search/SearchAdapter;->mPresenters:Ljava/util/List;

    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/evie/search/SearchAdapter;->mPresenters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 34
    iget-object v1, p0, Lcom/evie/search/SearchAdapter;->mPresenters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    invoke-virtual {p0}, Lcom/evie/search/SearchAdapter;->notifyDataSetChanged()V

    .line 36
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsRemoveDropTarget()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
