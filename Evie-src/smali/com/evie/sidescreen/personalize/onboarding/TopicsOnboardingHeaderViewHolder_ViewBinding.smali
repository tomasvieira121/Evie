.class public Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "TopicsOnboardingHeaderViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;

.field private view7f0b0192:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;Landroid/view/View;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;

    .line 25
    sget v0, Lcom/evie/sidescreen/R$id;->search_bar:I

    const-string v1, "method \'onSearchBarClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 26
    iput-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder_ViewBinding;->view7f0b0192:Landroid/view/View;

    .line 27
    new-instance v0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder_ViewBinding$1;-><init>(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder_ViewBinding;Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;

    .line 42
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder_ViewBinding;->view7f0b0192:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iput-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder_ViewBinding;->view7f0b0192:Landroid/view/View;

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
