.class public Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;
.super Landroidx/fragment/app/Fragment;
.source "PersonalizeFragment.java"


# instance fields
.field private mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private mPersonalizePresenter:Lcom/evie/sidescreen/personalize/PersonalizePresenter;

.field mPersonalizePresenterFactory:Lcom/evie/sidescreen/personalize/PersonalizePresenterFactory;

.field private mPersonalizeViewHolder:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 25
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    .line 34
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 40
    sget p3, Lcom/evie/sidescreen/R$layout;->ss_personalize_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 55
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;->mPersonalizePresenter:Lcom/evie/sidescreen/personalize/PersonalizePresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->dispose()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;->mPersonalizePresenter:Lcom/evie/sidescreen/personalize/PersonalizePresenter;

    .line 57
    iput-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;->mPersonalizeViewHolder:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 45
    iget-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;->mPersonalizePresenterFactory:Lcom/evie/sidescreen/personalize/PersonalizePresenterFactory;

    new-instance v0, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    const-string v1, "personalize"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/evie/sidescreen/analytics/data/ScreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/evie/sidescreen/personalize/PersonalizePresenterFactory;->create(Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/personalize/PersonalizePresenter;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;->mPersonalizePresenter:Lcom/evie/sidescreen/personalize/PersonalizePresenter;

    .line 46
    new-instance p2, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;

    invoke-direct {p2, p1}, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;->mPersonalizeViewHolder:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;

    .line 48
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;->mPersonalizeViewHolder:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;

    iget-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;->mPersonalizePresenter:Lcom/evie/sidescreen/personalize/PersonalizePresenter;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->bindPresenter(Lcom/evie/sidescreen/mvp/ItemPresenter;)V

    .line 49
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;->mPersonalizePresenter:Lcom/evie/sidescreen/personalize/PersonalizePresenter;

    iget-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;->mPersonalizeViewHolder:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->bindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V

    return-void
.end method
