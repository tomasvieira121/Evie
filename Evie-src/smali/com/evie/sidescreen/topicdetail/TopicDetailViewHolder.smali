.class public Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "TopicDetailViewHolder.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static ID:I


# instance fields
.field private final mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

.field private final mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

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

    .line 30
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_topic_detail_fragment:I

    sput v0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;)V
    .locals 2
    .param p2    # Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    .line 45
    iput-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    .line 47
    iget-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 48
    iget-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 49
    new-instance p2, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder$1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder$1;-><init>(Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 56
    iget-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 57
    iget-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 58
    iget-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 59
    iget-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;)Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    return-object p0
.end method


# virtual methods
.method public hideLoading()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->mLoading:Landroid/view/View;

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
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->setItemPresenters(Ljava/util/List;Z)V

    return-void
.end method

.method public showError()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/evie/sidescreen/R$string;->ss_topic_detail_error_message:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->mLoading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
