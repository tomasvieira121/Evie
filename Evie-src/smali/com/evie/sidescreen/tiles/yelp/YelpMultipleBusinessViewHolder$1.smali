.class Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "YelpMultipleBusinessViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;Landroid/content/Context;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder$1;->this$0:Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 44
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder$1;->this$0:Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;

    invoke-static {p1}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->access$000(Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;)Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->updateVisibility()V

    return-void
.end method
