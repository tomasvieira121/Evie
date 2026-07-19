.class public Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "TopicSuggestedHeaderItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field mTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_topic_suggested_header_list_item:I

    sput v0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public deselectButton()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemPresenter;->onDeselect()V

    return-void
.end method

.method public setLabel(I)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTopMargin(Z)V
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/high16 p1, 0x41200000    # 10.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x41a00000    # 20.0f

    .line 35
    :goto_0
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 36
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 37
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    float-to-int p1, p1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 38
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    :cond_1
    return-void
.end method
