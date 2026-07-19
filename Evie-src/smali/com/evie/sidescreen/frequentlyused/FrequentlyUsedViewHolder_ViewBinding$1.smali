.class Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "FrequentlyUsedViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder_ViewBinding;

.field final synthetic val$target:Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder_ViewBinding;Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder_ViewBinding$1;->this$0:Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 31
    iget-object p1, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->onLinkTap()V

    return-void
.end method
