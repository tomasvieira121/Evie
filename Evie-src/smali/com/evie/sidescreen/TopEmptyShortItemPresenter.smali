.class public Lcom/evie/sidescreen/TopEmptyShortItemPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "TopEmptyShortItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/TopEmptyShortViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCustomHeight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/evie/sidescreen/TopEmptyShortItemPresenter;->mCustomHeight:I

    return-void
.end method


# virtual methods
.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/TopEmptyShortViewHolder;
    .locals 1

    .line 18
    new-instance v0, Lcom/evie/sidescreen/TopEmptyShortViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/TopEmptyShortViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/TopEmptyShortItemPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/TopEmptyShortViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected getType()I
    .locals 1

    .line 13
    sget v0, Lcom/evie/sidescreen/TopEmptyShortViewHolder;->ID:I

    return v0
.end method

.method public hasCustomHeight()Z
    .locals 1

    .line 34
    iget v0, p0, Lcom/evie/sidescreen/TopEmptyShortItemPresenter;->mCustomHeight:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/TopEmptyShortViewHolder;)V
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/evie/sidescreen/TopEmptyShortItemPresenter;->hasCustomHeight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget v0, p0, Lcom/evie/sidescreen/TopEmptyShortItemPresenter;->mCustomHeight:I

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/TopEmptyShortViewHolder;->setHeight(I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 7
    check-cast p1, Lcom/evie/sidescreen/TopEmptyShortViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/TopEmptyShortItemPresenter;->onBindViewHolder(Lcom/evie/sidescreen/TopEmptyShortViewHolder;)V

    return-void
.end method
