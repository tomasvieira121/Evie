.class public Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "ImageCaptionViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field protected mHeaderLink:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mHeaderLogo:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mHeaderPublisher:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mHeaderTimeElapsed:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mHeaderTimeElapsedDivider:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_image_caption:I

    sput v0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public hideHeaderLogo()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderLogo:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderLogo:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return-void
.end method

.method public hideLink()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderLink:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hidePublisher()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderPublisher:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hideTimeElapsed()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderTimeElapsed:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showHeaderLogo(Ljava/lang/String;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderLogo:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderLogo:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return-void
.end method

.method public showPublisher(Ljava/lang/String;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderPublisher:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderPublisher:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showTimeElapsed(Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderTimeElapsed:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderTimeElapsed:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public updateDividers()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderTimeElapsedDivider:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderTimeElapsed:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderLogo:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderPublisher:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderTimeElapsedDivider:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->mHeaderTimeElapsedDivider:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
