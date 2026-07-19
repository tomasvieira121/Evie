.class Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "MvpRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PresenterVisibilityManager"
.end annotation


# instance fields
.field private final mCurrentVisibilityBounds:Landroid/graphics/Rect;

.field private mIsResumed:Z

.field private mIsShowing:Z

.field private final mVisiblePresenters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->this$0:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    .line 203
    iput-boolean p1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mIsShowing:Z

    const/4 p1, 0x1

    .line 207
    iput-boolean p1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mIsResumed:Z

    .line 209
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mVisiblePresenters:Ljava/util/Set;

    .line 212
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mCurrentVisibilityBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mVisiblePresenters:Ljava/util/Set;

    monitor-enter v0

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mVisiblePresenters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/sidescreen/mvp/ItemPresenter;

    const/4 v3, 0x0

    .line 227
    invoke-virtual {v2, v3}, Lcom/evie/sidescreen/mvp/ItemPresenter;->onVisibilityChanged(Z)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mVisiblePresenters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 231
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    return-void
.end method

.method public listen()V
    .locals 1

    const/4 v0, 0x1

    .line 221
    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->setShowing(Z)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 216
    invoke-virtual {p0}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->update()V

    return-void
.end method

.method protected setResumed(Z)V
    .locals 0

    .line 240
    iput-boolean p1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mIsResumed:Z

    .line 241
    invoke-virtual {p0}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->update()V

    return-void
.end method

.method protected setShowing(Z)V
    .locals 0

    .line 235
    iput-boolean p1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mIsShowing:Z

    .line 236
    invoke-virtual {p0}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->update()V

    return-void
.end method

.method public update()V
    .locals 11

    .line 246
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mVisiblePresenters:Ljava/util/Set;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->this$0:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    invoke-static {v1}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->access$000(Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mVisiblePresenters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/sidescreen/mvp/ItemPresenter;

    .line 252
    invoke-virtual {v3, v2}, Lcom/evie/sidescreen/mvp/ItemPresenter;->onVisibilityChanged(Z)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mVisiblePresenters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 255
    monitor-exit v0

    return-void

    .line 257
    :cond_1
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v3

    .line 258
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    .line 260
    iget-boolean v4, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mIsResumed:Z

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mIsShowing:Z

    if-eqz v4, :cond_c

    const/4 v4, -0x1

    if-eq v3, v4, :cond_c

    if-eq v1, v4, :cond_c

    iget-object v4, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->this$0:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    .line 263
    invoke-static {v4}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->access$100(Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_2

    goto/16 :goto_6

    .line 275
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 276
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v1, :cond_3

    .line 277
    iget-object v6, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->this$0:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    invoke-static {v6}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->access$100(Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    .line 282
    new-array v5, v5, [I

    sub-int/2addr v3, v7

    aput v3, v5, v2

    add-int/2addr v1, v7

    aput v1, v5, v7

    array-length v1, v5

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_7

    aget v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 285
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ltz v8, :cond_6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->this$0:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    invoke-static {v9}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->access$100(Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v7

    if-le v8, v9, :cond_4

    goto :goto_3

    .line 289
    :cond_4
    iget-object v8, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->this$0:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    invoke-static {v8}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->access$000(Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v8

    if-nez v8, :cond_5

    goto :goto_3

    .line 297
    :cond_5
    iget-object v9, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v10, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mCurrentVisibilityBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 298
    iget-object v9, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->this$0:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    invoke-static {v9}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->access$100(Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/evie/sidescreen/mvp/ItemPresenter;

    .line 301
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->this$0:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    invoke-static {v9}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->access$000(Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/evie/sidescreen/mvp/ItemPresenter;->getVisibilityThreshold(Landroid/content/Context;)F

    move-result v9

    mul-float v8, v8, v9

    iget-object v9, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mCurrentVisibilityBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mCurrentVisibilityBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_6

    .line 303
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 307
    :cond_7
    iget-object v1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mVisiblePresenters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/sidescreen/mvp/ItemPresenter;

    .line 308
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 309
    invoke-virtual {v3, v2}, Lcom/evie/sidescreen/mvp/ItemPresenter;->onVisibilityChanged(Z)V

    goto :goto_4

    .line 313
    :cond_9
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/sidescreen/mvp/ItemPresenter;

    .line 314
    iget-object v3, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mVisiblePresenters:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 315
    invoke-virtual {v2, v7}, Lcom/evie/sidescreen/mvp/ItemPresenter;->onVisibilityChanged(Z)V

    goto :goto_5

    .line 319
    :cond_b
    iget-object v1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mVisiblePresenters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 320
    iget-object v1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mVisiblePresenters:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 321
    monitor-exit v0

    return-void

    .line 266
    :cond_c
    :goto_6
    iget-object v1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mVisiblePresenters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/sidescreen/mvp/ItemPresenter;

    .line 267
    invoke-virtual {v3, v2}, Lcom/evie/sidescreen/mvp/ItemPresenter;->onVisibilityChanged(Z)V

    goto :goto_7

    .line 270
    :cond_d
    iget-object v1, p0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;->mVisiblePresenters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 271
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 321
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    return-void
.end method
