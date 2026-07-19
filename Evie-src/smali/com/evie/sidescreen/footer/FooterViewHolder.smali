.class public Lcom/evie/sidescreen/footer/FooterViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "FooterViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/footer/FooterPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_footer_item:I

    sput v0, Lcom/evie/sidescreen/footer/FooterViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onFooterClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/evie/sidescreen/footer/FooterViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/footer/FooterPresenter;

    sget v1, Lcom/evie/sidescreen/R$id;->icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/footer/FooterPresenter;->onPoweredByClick(Landroid/view/View;)V

    return-void
.end method
