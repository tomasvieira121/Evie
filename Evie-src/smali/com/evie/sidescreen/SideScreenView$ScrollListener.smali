.class Lcom/evie/sidescreen/SideScreenView$ScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SideScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/SideScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/SideScreenView;


# direct methods
.method private constructor <init>(Lcom/evie/sidescreen/SideScreenView;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenView$ScrollListener;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/sidescreen/SideScreenView;Lcom/evie/sidescreen/SideScreenView$1;)V
    .locals 0

    .line 525
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/SideScreenView$ScrollListener;-><init>(Lcom/evie/sidescreen/SideScreenView;)V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView$ScrollListener;->this$0:Lcom/evie/sidescreen/SideScreenView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/evie/sidescreen/SideScreenView;->access$902(Lcom/evie/sidescreen/SideScreenView;I)I

    .line 531
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView$ScrollListener;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-static {v0, v1}, Lcom/evie/sidescreen/SideScreenView;->access$1002(Lcom/evie/sidescreen/SideScreenView;I)I

    .line 532
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView$ScrollListener;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-static {v0, v1}, Lcom/evie/sidescreen/SideScreenView;->access$1102(Lcom/evie/sidescreen/SideScreenView;I)I

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView$ScrollListener;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-static {v0}, Lcom/evie/sidescreen/SideScreenView;->access$100(Lcom/evie/sidescreen/SideScreenView;)Lcom/evie/sidescreen/SideScreenPresenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/evie/sidescreen/SideScreenPresenter;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView$ScrollListener;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-static {v0}, Lcom/evie/sidescreen/SideScreenView;->access$900(Lcom/evie/sidescreen/SideScreenView;)I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Lcom/evie/sidescreen/SideScreenView;->access$902(Lcom/evie/sidescreen/SideScreenView;I)I

    const/4 v0, 0x0

    .line 541
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView$ScrollListener;->this$0:Lcom/evie/sidescreen/SideScreenView;

    iget v0, v0, Lcom/evie/sidescreen/SideScreenView;->mTopEmptySpaceDistance:I

    neg-int v0, v0

    .line 550
    :goto_0
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenView$ScrollListener;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-static {v1, v0}, Lcom/evie/sidescreen/SideScreenView;->access$1200(Lcom/evie/sidescreen/SideScreenView;I)V

    .line 551
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenView$ScrollListener;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-static {v1, p1, p2, p3}, Lcom/evie/sidescreen/SideScreenView;->access$1300(Lcom/evie/sidescreen/SideScreenView;Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 552
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenView$ScrollListener;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-static {v1}, Lcom/evie/sidescreen/SideScreenView;->access$200(Lcom/evie/sidescreen/SideScreenView;)V

    .line 553
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenView$ScrollListener;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-static {v1}, Lcom/evie/sidescreen/SideScreenView;->access$100(Lcom/evie/sidescreen/SideScreenView;)Lcom/evie/sidescreen/SideScreenPresenter;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/evie/sidescreen/SideScreenPresenter;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;III)V

    return-void
.end method
