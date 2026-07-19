.class public Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;
.super Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;
.source "PopupImageViewerViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder<",
        "Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field mImageView:Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_popup_image_viewer:I

    sput v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;-><init>(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 23
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;->mImageView:Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;->setContent(Landroid/view/View;)V

    .line 24
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;->mImageView:Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;->getAttacher()Lme/relex/photodraweeview/Attacher;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lme/relex/photodraweeview/Attacher;->setAllowParentInterceptOnEdge(Z)V

    .line 25
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;->mImageView:Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;->getAttacher()Lme/relex/photodraweeview/Attacher;

    move-result-object p1

    new-instance p2, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupImageViewerViewHolder$mS57aHqX0oWU44e0sSAeN1dCIJc;

    invoke-direct {p2, p0}, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupImageViewerViewHolder$mS57aHqX0oWU44e0sSAeN1dCIJc;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;)V

    invoke-virtual {p1, p2}, Lme/relex/photodraweeview/Attacher;->setOnViewTapListener(Lme/relex/photodraweeview/OnViewTapListener;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;Landroid/view/View;FF)V
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenter;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenter;->onContentTapped()V

    return-void
.end method


# virtual methods
.method public getWidthAndHeight(Landroid/view/View;)[I
    .locals 3

    .line 37
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;->mImageView:Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;->getImageInfoWidth()I

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;->mImageView:Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;->getImageInfoHeight()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;->mImageView:Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;->getImageInfoWidth()I

    move-result p1

    .line 41
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;->mImageView:Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;

    invoke-virtual {v1}, Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;->getImageInfoHeight()I

    move-result v1

    .line 43
    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p1, v0, v2

    const/4 p1, 0x1

    aput v1, v0, p1

    return-object v0

    .line 38
    :cond_1
    :goto_0
    new-array p1, v0, [I

    fill-array-data p1, :array_0

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public showContent(Ljava/lang/String;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;->mImageView:Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;->setPhotoUri(Landroid/net/Uri;Landroid/content/Context;)V

    return-void
.end method
