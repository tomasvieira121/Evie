.class Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "TopicsOnboardingBottomBarViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding;

.field final synthetic val$target:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding;Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding$2;->this$0:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding$2;->val$target:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding$2;->val$target:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;->onSkipClick()V

    return-void
.end method
