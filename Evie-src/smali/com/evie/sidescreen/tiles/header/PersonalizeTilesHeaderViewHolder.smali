.class public Lcom/evie/sidescreen/tiles/header/PersonalizeTilesHeaderViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "PersonalizeTilesHeaderViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_TITLE:I

.field public static final ID:I


# instance fields
.field mLink:Landroid/view/View;
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

    .line 18
    sget v0, Lcom/evie/sidescreen/R$layout;->tiles_header:I

    sput v0, Lcom/evie/sidescreen/tiles/header/PersonalizeTilesHeaderViewHolder;->ID:I

    .line 20
    sget v0, Lcom/evie/sidescreen/R$string;->ss_trending_section_title:I

    sput v0, Lcom/evie/sidescreen/tiles/header/PersonalizeTilesHeaderViewHolder;->DEFAULT_TITLE:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClickPersonalizeLink()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTilesHeaderViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->onClickPersonalizeLink()V

    return-void
.end method

.method public setDefaultTitle()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTilesHeaderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/evie/sidescreen/tiles/header/PersonalizeTilesHeaderViewHolder;->DEFAULT_TITLE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/tiles/header/PersonalizeTilesHeaderViewHolder;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTilesHeaderViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
