.class Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "TopicsOnboardingHeaderViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder_ViewBinding;

.field final synthetic val$target:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder_ViewBinding;Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder_ViewBinding$1;->this$0:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 30
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;->onSearchBarClick()V

    return-void
.end method
