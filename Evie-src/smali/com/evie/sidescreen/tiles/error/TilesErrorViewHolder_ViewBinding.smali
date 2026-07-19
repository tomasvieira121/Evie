.class public Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "TilesErrorViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;

.field private view7f0b00b5:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;Landroid/view/View;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;

    .line 24
    sget v0, Lcom/evie/sidescreen/R$id;->error_spinner:I

    const-string v1, "method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 25
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder_ViewBinding;->view7f0b00b5:Landroid/view/View;

    .line 26
    new-instance v0, Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder_ViewBinding$1;-><init>(Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;

    .line 41
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder_ViewBinding;->view7f0b00b5:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iput-object v0, p0, Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder_ViewBinding;->view7f0b00b5:Landroid/view/View;

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
