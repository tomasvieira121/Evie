.class public Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "TopicHeaderItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/personalize/TopicHeaderItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsFirstSection:Z

.field private final mTitleResId:I

.field private final mTitleString:Ljava/lang/String;


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;->mTitleString:Ljava/lang/String;

    .line 16
    iput p1, p0, Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;->mTitleResId:I

    .line 17
    iput-boolean p2, p0, Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;->mIsFirstSection:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;->mTitleString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;->mTitleResId:I

    .line 23
    iput-boolean p2, p0, Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;->mIsFirstSection:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/personalize/TopicHeaderItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/personalize/TopicHeaderItemViewHolder;
    .locals 1

    .line 34
    new-instance v0, Lcom/evie/sidescreen/personalize/TopicHeaderItemViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/personalize/TopicHeaderItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 29
    sget v0, Lcom/evie/sidescreen/personalize/TopicHeaderItemViewHolder;->ID:I

    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/evie/sidescreen/personalize/TopicHeaderItemViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;->onBindViewHolder(Lcom/evie/sidescreen/personalize/TopicHeaderItemViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/personalize/TopicHeaderItemViewHolder;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;->mTitleString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;->mTitleString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/personalize/TopicHeaderItemViewHolder;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_0
    iget v0, p0, Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;->mTitleResId:I

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/personalize/TopicHeaderItemViewHolder;->setLabel(I)V

    .line 44
    :goto_0
    iget-boolean v0, p0, Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;->mIsFirstSection:Z

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/personalize/TopicHeaderItemViewHolder;->setTopMargin(Z)V

    return-void
.end method

.method public setIsFirstSection(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;->mIsFirstSection:Z

    return-void
.end method
