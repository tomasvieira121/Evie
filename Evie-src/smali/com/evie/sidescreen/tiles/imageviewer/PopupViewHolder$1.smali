.class Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "PopupViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;-><init>(Landroid/view/View;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Landroid/content/Context;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$1;->this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 91
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$1;->this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    invoke-static {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->access$000(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)V

    .line 92
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$1;->this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    invoke-static {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->access$100(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->updateVisibility()V

    return-void
.end method
