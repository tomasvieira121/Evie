.class public Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "DataWarningCardViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;

.field private view7f0b00a1:Landroid/view/View;

.field private view7f0b00a9:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;Landroid/view/View;)V
    .locals 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;

    .line 29
    sget v0, Lcom/evie/sidescreen/R$id;->content:I

    const-string v1, "field \'mContent\'"

    const-class v2, Landroid/view/ViewGroup;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->mContent:Landroid/view/ViewGroup;

    .line 30
    sget v0, Lcom/evie/sidescreen/R$id;->description:I

    const-string v1, "field \'mDescription\' and method \'onMoreTap\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    sget v1, Lcom/evie/sidescreen/R$id;->description:I

    const-string v2, "field \'mDescription\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->mDescription:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding;->view7f0b00a1:Landroid/view/View;

    .line 33
    new-instance v1, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding$1;-><init>(Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding;Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    sget v0, Lcom/evie/sidescreen/R$id;->dismiss:I

    const-string v1, "method \'onDismiss\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 40
    iput-object p2, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding;->view7f0b00a9:Landroid/view/View;

    .line 41
    new-instance v0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding$2;-><init>(Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding;Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;

    .line 56
    iput-object v1, v0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->mContent:Landroid/view/ViewGroup;

    .line 57
    iput-object v1, v0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->mDescription:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding;->view7f0b00a1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iput-object v1, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding;->view7f0b00a1:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding;->view7f0b00a9:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iput-object v1, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding;->view7f0b00a9:Landroid/view/View;

    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
