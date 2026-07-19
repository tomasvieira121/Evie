.class public Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder_ViewBinding;
.super Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding;
.source "PopupImageViewerViewHolder_ViewBinding.java"


# instance fields
.field private target:Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;Landroid/view/View;)V
    .locals 3

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Landroid/view/View;)V

    .line 18
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;

    .line 20
    sget v0, Lcom/evie/sidescreen/R$id;->image:I

    const-string v1, "field \'mImageView\'"

    const-class v2, Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;

    iput-object p2, p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;->mImageView:Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;

    .line 29
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;->mImageView:Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;

    .line 31
    invoke-super {p0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding;->unbind()V

    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
