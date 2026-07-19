.class public Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "TopicSuggestedHeaderItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDeselectRunnable:Ljava/lang/Runnable;

.field private mIsFirstSection:Z

.field private final mTitleResId:I


# direct methods
.method public constructor <init>(IZLjava/lang/Runnable;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    .line 14
    iput p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemPresenter;->mTitleResId:I

    .line 15
    iput-boolean p2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemPresenter;->mIsFirstSection:Z

    .line 16
    iput-object p3, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemPresenter;->mDeselectRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;
    .locals 1

    .line 27
    new-instance v0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 22
    sget v0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;->ID:I

    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 7
    check-cast p1, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemPresenter;->onBindViewHolder(Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;)V
    .locals 1

    .line 32
    iget v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemPresenter;->mTitleResId:I

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;->setLabel(I)V

    .line 33
    iget-boolean v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemPresenter;->mIsFirstSection:Z

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;->setTopMargin(Z)V

    return-void
.end method

.method public onDeselect()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemPresenter;->mDeselectRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public setIsFirstSection(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemPresenter;->mIsFirstSection:Z

    return-void
.end method
