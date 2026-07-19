.class Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "TilesErrorViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder_ViewBinding;

.field final synthetic val$target:Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder_ViewBinding$1;->this$0:Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;->onClick(Landroid/view/View;)V

    return-void
.end method
