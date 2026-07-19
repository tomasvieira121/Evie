.class Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
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
.method constructor <init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$2;->this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 98
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 99
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$2;->this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    invoke-static {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->access$200(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)V

    return-void
.end method
