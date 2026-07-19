.class public Lcom/evie/sidescreen/mvp/MvpAdapterItemDiffCallbacks;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "MvpAdapterItemDiffCallbacks.java"


# instance fields
.field private final mNewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final mOldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/mvp/MvpAdapterItemDiffCallbacks;->mOldList:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/mvp/MvpAdapterItemDiffCallbacks;->mNewList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 20
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/MvpAdapterItemDiffCallbacks;->mOldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 23
    iget-object p1, p0, Lcom/evie/sidescreen/mvp/MvpAdapterItemDiffCallbacks;->mNewList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/MvpAdapterItemDiffCallbacks;->mOldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/mvp/ItemPresenter;

    .line 48
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/MvpAdapterItemDiffCallbacks;->mNewList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/sidescreen/mvp/ItemPresenter;

    .line 50
    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/mvp/ItemPresenter;->isSameContents(Lcom/evie/sidescreen/mvp/ItemPresenter;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/MvpAdapterItemDiffCallbacks;->mOldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/mvp/ItemPresenter;

    .line 40
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/MvpAdapterItemDiffCallbacks;->mNewList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/sidescreen/mvp/ItemPresenter;

    .line 42
    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/mvp/ItemPresenter;->isSameItem(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/MvpAdapterItemDiffCallbacks;->mNewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/MvpAdapterItemDiffCallbacks;->mOldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
