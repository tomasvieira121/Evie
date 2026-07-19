.class public Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MvpRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;,
        Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$Disposer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/evie/sidescreen/mvp/MvpViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final BLANK_ITEM_ID:I


# instance fields
.field protected final mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field private mItemPresenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mViewTypeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisibilityManager:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget v0, Lcom/evie/sidescreen/mvp/R$layout;->ss_blank_item:I

    sput v0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->BLANK_ITEM_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mViewTypeMap:Landroid/util/SparseArray;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mItemPresenters:Ljava/util/List;

    .line 30
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 31
    invoke-virtual {p0}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->createVisibilityManager()Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mVisibilityManager:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mItemPresenters:Ljava/util/List;

    return-object p0
.end method

.method private calculateViewTypeMap()V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mViewTypeMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 145
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mItemPresenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/mvp/ItemPresenter;

    .line 146
    iget-object v2, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mViewTypeMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/evie/sidescreen/mvp/ItemPresenter;->getType()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected createVisibilityManager()Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;
    .locals 1

    .line 39
    new-instance v0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;-><init>(Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;)V

    return-object v0
.end method

.method disposeHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 1

    .line 97
    iget-object v0, p1, Lcom/evie/sidescreen/mvp/MvpViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p1, Lcom/evie/sidescreen/mvp/MvpViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/mvp/ItemPresenter;->unbindViewHolder()V

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;->unbindPresenter()V

    return-void
.end method

.method public disposeHolders()V
    .locals 3

    const/4 v0, 0x0

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/mvp/MvpViewHolder;

    .line 162
    invoke-virtual {p0, v1}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->disposeHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getItem(I)Lcom/evie/sidescreen/mvp/ItemPresenter;
    .locals 1

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mItemPresenters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/mvp/ItemPresenter;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 154
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mItemPresenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mItemPresenters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/mvp/ItemPresenter;

    invoke-virtual {p1}, Lcom/evie/sidescreen/mvp/ItemPresenter;->getType()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 54
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 55
    sget p1, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->BLANK_ITEM_ID:I

    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 106
    iput-object p1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    iget-object p1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mVisibilityManager:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;

    invoke-virtual {p1}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->listen()V

    .line 108
    iget-object p1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mVisibilityManager:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/evie/sidescreen/mvp/MvpViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;I)V
    .locals 1

    .line 70
    instance-of p2, p1, Lcom/evie/sidescreen/mvp/BlankViewHolder;

    if-eqz p2, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object p2, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mItemPresenters:Ljava/util/List;

    invoke-virtual {p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/sidescreen/mvp/ItemPresenter;

    .line 76
    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/mvp/MvpViewHolder;->bindPresenter(Lcom/evie/sidescreen/mvp/ItemPresenter;)V

    .line 77
    invoke-virtual {p2, p1}, Lcom/evie/sidescreen/mvp/ItemPresenter;->bindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/evie/sidescreen/mvp/MvpViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 3

    .line 61
    sget v0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->BLANK_ITEM_ID:I

    if-eq p2, v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mViewTypeMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/sidescreen/mvp/ItemPresenter;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/evie/sidescreen/mvp/ItemPresenter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/evie/sidescreen/mvp/MvpViewHolder;

    move-result-object p1

    return-object p1

    .line 64
    :cond_0
    new-instance p2, Lcom/evie/sidescreen/mvp/BlankViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/evie/sidescreen/mvp/R$layout;->ss_blank_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/evie/sidescreen/mvp/BlankViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mVisibilityManager:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;

    invoke-virtual {p1}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->clear()V

    .line 114
    iget-object p1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 115
    iget-object p1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 24
    check-cast p1, Lcom/evie/sidescreen/mvp/MvpViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->onFailedToRecycleView(Lcom/evie/sidescreen/mvp/MvpViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onFailedToRecycleView(Lcom/evie/sidescreen/mvp/MvpViewHolder;)Z
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->disposeHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V

    .line 88
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/evie/sidescreen/mvp/MvpViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->onViewAttachedToWindow(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 1

    .line 44
    iget-object v0, p1, Lcom/evie/sidescreen/mvp/MvpViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    if-eqz v0, :cond_0

    .line 45
    iget-object p1, p1, Lcom/evie/sidescreen/mvp/MvpViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    invoke-virtual {p1}, Lcom/evie/sidescreen/mvp/ItemPresenter;->onVisibilityWillChange()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/evie/sidescreen/mvp/MvpViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->onViewRecycled(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->disposeHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V

    return-void
.end method

.method public setItemPresenters(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;Z)V"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mVisibilityManager:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;

    invoke-virtual {v0}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->clear()V

    .line 121
    new-instance v0, Lcom/evie/sidescreen/mvp/MvpAdapterItemDiffCallbacks;

    iget-object v1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mItemPresenters:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lcom/evie/sidescreen/mvp/MvpAdapterItemDiffCallbacks;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 122
    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    .line 125
    new-instance v1, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$Disposer;

    iget-object v2, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mItemPresenters:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$Disposer;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 127
    iget-object v1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mItemPresenters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mItemPresenters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->calculateViewTypeMap()V

    if-eqz p2, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_0
    return-void
.end method

.method public updateVisibility()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->mVisibilityManager:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;

    invoke-virtual {v0}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->update()V

    return-void
.end method
