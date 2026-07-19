.class public Lcom/evie/sidescreen/personalize/TopicsListViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "TopicsListViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/mvp/ItemPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field private mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

.field mLoading:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_topics_list_fragment:I

    sput v0, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 35
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    .line 32
    new-instance v0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    invoke-direct {v0}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    .line 37
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 38
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public hideLoading()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->mLoading:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setItemPresenters(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->setItemPresenters(Ljava/util/List;Z)V

    return-void
.end method

.method public showError()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/evie/sidescreen/R$string;->ss_generic_loading_error_message:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->mLoading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
