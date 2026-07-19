.class Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SearchBarViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding;

.field final synthetic val$target:Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding;Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding$2;->this$0:Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding$2;->val$target:Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding$2;->val$target:Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->onSearchBarClick(Landroid/view/View;)V

    return-void
.end method
