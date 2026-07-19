.class public Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "AbstractHeroViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 28
    sget v0, Lcom/evie/sidescreen/R$dimen;->ss_margin_side:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;->sideMargin:I

    return-void
.end method

.method public constructor <init>(Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 0

    return-void
.end method
