.class public Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "BreakingNewsTileViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field mDescription:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImage:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPadding:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_prompt_breakingnews_row:I

    sput v0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/evie/models/breakingnews/data/BreakingNews;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public hideImage()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;->mPadding:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onTileClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->onTileClick()V

    return-void
.end method

.method public showImage(Ljava/lang/String;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 44
    iget-object p1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;->mPadding:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
