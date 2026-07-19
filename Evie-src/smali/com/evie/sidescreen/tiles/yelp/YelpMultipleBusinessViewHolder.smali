.class public Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "YelpMultipleBusinessViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field mActionContainer:Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

.field mDescription:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mDividerPadding:I
    .annotation runtime Lbutterknife/BindDimen;
    .end annotation
.end field

.field mHeadline:Landroid/widget/TextView;
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
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_yelp_multiple_business:I

    sput v0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 36
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    new-instance v0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    invoke-direct {v0}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    .line 39
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder$1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder$1;-><init>(Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 48
    new-instance v0, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;-><init>(Landroid/content/Context;)V

    .line 49
    iget v1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mDividerPadding:I

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->setPaddingLeft(I)V

    .line 50
    iget v1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mDividerPadding:I

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;->setPaddingRight(I)V

    .line 51
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 52
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 54
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mActionContainer:Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;

    new-instance v1, Lcom/evie/sidescreen/tiles/yelp/-$$Lambda$YelpMultipleBusinessViewHolder$ythNeRXg_Y1ctHiYhoOPORcjYlY;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/tiles/yelp/-$$Lambda$YelpMultipleBusinessViewHolder$ythNeRXg_Y1ctHiYhoOPORcjYlY;-><init>(Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->setOnActionClick(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;)Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    return-object p0
.end method

.method public static synthetic lambda$new$0(Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast p2, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;

    invoke-virtual {p2, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->onActionClicked(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setAction(Lorg/schema/evie/yelp/YelpAction;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mActionContainer:Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->setAction(Lorg/schema/evie/yelp/YelpAction;)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHeadline(Ljava/lang/String;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mHeadline:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    .line 60
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->setItemPresenters(Ljava/util/List;Z)V

    return-void
.end method
