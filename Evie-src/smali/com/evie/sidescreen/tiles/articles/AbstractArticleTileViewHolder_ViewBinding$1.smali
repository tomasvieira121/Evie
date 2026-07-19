.class Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "AbstractArticleTileViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;

.field final synthetic val$target:Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding$1;->this$0:Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->onClick(Landroid/view/View;)V

    return-void
.end method
