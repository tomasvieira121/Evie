.class public Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "ImageCaptionViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;Landroid/view/View;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;

    .line 22
    sget v0, Lcom/evie/sidescreen/R$id;->text:I

    const-string v1, "field \'mTextView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mTextView:Landroid/widget/TextView;

    .line 23
    sget v0, Lcom/evie/sidescreen/R$id;->header_logo:I

    const-string v1, "field \'mHeaderLogo\'"

    const-class v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderLogo:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 24
    sget v0, Lcom/evie/sidescreen/R$id;->header_publisher:I

    const-string v1, "field \'mHeaderPublisher\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderPublisher:Landroid/widget/TextView;

    .line 25
    sget v0, Lcom/evie/sidescreen/R$id;->header_time_elapsed_divider:I

    const-string v1, "field \'mHeaderTimeElapsedDivider\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderTimeElapsedDivider:Landroid/widget/TextView;

    .line 26
    sget v0, Lcom/evie/sidescreen/R$id;->header_time_elapsed:I

    const-string v1, "field \'mHeaderTimeElapsed\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderTimeElapsed:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/evie/sidescreen/R$id;->header_link:I

    const-string v1, "field \'mHeaderLink\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderLink:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;

    .line 37
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mTextView:Landroid/widget/TextView;

    .line 38
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderLogo:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderPublisher:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderTimeElapsedDivider:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderTimeElapsed:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderLink:Landroid/widget/TextView;

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
