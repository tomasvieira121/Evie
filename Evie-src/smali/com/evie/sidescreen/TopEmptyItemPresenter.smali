.class public Lcom/evie/sidescreen/TopEmptyItemPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "TopEmptyItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/TopEmptyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCustomHeight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/evie/sidescreen/TopEmptyItemPresenter;->mCustomHeight:I

    return-void
.end method


# virtual methods
.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/TopEmptyViewHolder;
    .locals 1

    .line 22
    new-instance v0, Lcom/evie/sidescreen/TopEmptyViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/TopEmptyViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/TopEmptyItemPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/TopEmptyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getHeight()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/evie/sidescreen/TopEmptyItemPresenter;->mCustomHeight:I

    return v0
.end method

.method protected getType()I
    .locals 1

    .line 17
    sget v0, Lcom/evie/sidescreen/TopEmptyViewHolder;->ID:I

    return v0
.end method

.method public hasCustomHeight()Z
    .locals 1

    .line 44
    iget v0, p0, Lcom/evie/sidescreen/TopEmptyItemPresenter;->mCustomHeight:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/TopEmptyViewHolder;)V
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/evie/sidescreen/TopEmptyItemPresenter;->hasCustomHeight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget v0, p0, Lcom/evie/sidescreen/TopEmptyItemPresenter;->mCustomHeight:I

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/TopEmptyViewHolder;->setHeight(I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/evie/sidescreen/TopEmptyViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/TopEmptyItemPresenter;->onBindViewHolder(Lcom/evie/sidescreen/TopEmptyViewHolder;)V

    return-void
.end method

.method public setHeight(I)V
    .locals 1

    .line 33
    iput p1, p0, Lcom/evie/sidescreen/TopEmptyItemPresenter;->mCustomHeight:I

    .line 34
    iget-object p1, p0, Lcom/evie/sidescreen/TopEmptyItemPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/evie/sidescreen/TopEmptyItemPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/TopEmptyViewHolder;

    iget v0, p0, Lcom/evie/sidescreen/TopEmptyItemPresenter;->mCustomHeight:I

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/TopEmptyViewHolder;->setHeight(I)V

    :cond_0
    return-void
.end method
