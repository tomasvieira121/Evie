.class Lcom/evie/sidescreen/footer/FooterViewHolder_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "FooterViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/footer/FooterViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/footer/FooterViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/footer/FooterViewHolder_ViewBinding;

.field final synthetic val$target:Lcom/evie/sidescreen/footer/FooterViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/footer/FooterViewHolder_ViewBinding;Lcom/evie/sidescreen/footer/FooterViewHolder;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/evie/sidescreen/footer/FooterViewHolder_ViewBinding$1;->this$0:Lcom/evie/sidescreen/footer/FooterViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/evie/sidescreen/footer/FooterViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/footer/FooterViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/evie/sidescreen/footer/FooterViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/footer/FooterViewHolder;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/footer/FooterViewHolder;->onFooterClick(Landroid/view/View;)V

    return-void
.end method
