.class public Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "PlainTilesHeaderViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field mTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget v0, Lcom/evie/sidescreen/R$layout;->tiles_header_video_tab:I

    sput v0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
