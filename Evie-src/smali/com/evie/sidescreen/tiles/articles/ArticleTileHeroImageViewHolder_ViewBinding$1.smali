.class Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ArticleTileHeroImageViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder_ViewBinding;

.field final synthetic val$target:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder_ViewBinding$1;->this$0:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;->onContentClick(Landroid/view/View;)V

    return-void
.end method
