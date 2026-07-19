.class public Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "TopicSuggestedHeaderItemViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;

.field private view7f0b00a2:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;Landroid/view/View;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;

    .line 26
    sget v0, Lcom/evie/sidescreen/R$id;->text:I

    const-string v1, "field \'mTextView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;->mTextView:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/evie/sidescreen/R$id;->deselect_button:I

    const-string v1, "method \'deselectButton\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder_ViewBinding;->view7f0b00a2:Landroid/view/View;

    .line 29
    new-instance v0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder_ViewBinding$1;-><init>(Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder_ViewBinding;Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;

    .line 44
    iput-object v1, v0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;->mTextView:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder_ViewBinding;->view7f0b00a2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iput-object v1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder_ViewBinding;->view7f0b00a2:Landroid/view/View;

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
