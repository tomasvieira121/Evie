.class Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "FrequentlyUsedViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->makeIconListener(I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;I)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder$1;->this$0:Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;

    iput p2, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder$1;->val$index:I

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder$1;->this$0:Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;

    invoke-static {v0}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->access$100(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;)Lcom/evie/sidescreen/mvp/ItemPresenter;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;

    invoke-static {}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->access$000()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder$1;->val$index:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->onIconTap(Landroid/view/View;Ljava/lang/Object;I)V

    return-void
.end method
