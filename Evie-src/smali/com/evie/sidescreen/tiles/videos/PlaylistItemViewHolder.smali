.class public Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;
.super Lcom/evie/sidescreen/tiles/TileViewHolder;
.source "PlaylistItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/TileViewHolder<",
        "Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field protected mContent:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mImage:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mSubtitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    sget v0, Lcom/evie/sidescreen/R$layout;->tile_playlist_item:I

    sput v0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/TileViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public hideSubtitle()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->mSubtitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public showImage(Ljava/lang/String;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showSubtitle(Ljava/lang/String;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->mSubtitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showTitle(Ljava/lang/String;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
