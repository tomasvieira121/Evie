.class Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ArticleTileHeroOathViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder_ViewBinding;

.field final synthetic val$target:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder_ViewBinding$1;->this$0:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->onClick(Landroid/view/View;)V

    return-void
.end method
