.class public Lcom/evie/sidescreen/CustomPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "CustomPresenter.java"

# interfaces
.implements Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/CustomPresenter;",
        ">;>;",
        "Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;"
    }
.end annotation


# instance fields
.field private mLayoutResId:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mShouldShowBottomTileDivider:Z

.field private mShouldShowTopTileDivider:Z


# direct methods
.method public constructor <init>(IZZ)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    .line 27
    iput p1, p0, Lcom/evie/sidescreen/CustomPresenter;->mLayoutResId:I

    .line 28
    iput-boolean p2, p0, Lcom/evie/sidescreen/CustomPresenter;->mShouldShowTopTileDivider:Z

    .line 29
    iput-boolean p3, p0, Lcom/evie/sidescreen/CustomPresenter;->mShouldShowBottomTileDivider:Z

    return-void
.end method


# virtual methods
.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
            "Lcom/evie/sidescreen/CustomPresenter;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/evie/sidescreen/mvp/MvpViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getLayoutResId()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/evie/sidescreen/CustomPresenter;->mLayoutResId:I

    return v0
.end method

.method protected getType()I
    .locals 1

    .line 23
    const-class v0, Lcom/evie/sidescreen/CustomPresenter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
            "Lcom/evie/sidescreen/CustomPresenter;",
            ">;)V"
        }
    .end annotation

    .line 40
    iget-object p1, p1, Lcom/evie/sidescreen/mvp/MvpViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/evie/sidescreen/CustomPresenter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public shouldShowBottomTileDivider()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/evie/sidescreen/CustomPresenter;->mShouldShowBottomTileDivider:Z

    return v0
.end method

.method public shouldShowTopTileDivider()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/evie/sidescreen/CustomPresenter;->mShouldShowTopTileDivider:Z

    return v0
.end method
