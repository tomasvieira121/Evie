.class public Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "AnnouncementViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field protected mAction:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mDescription:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mDismiss:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mImage:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mRailHori:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mRailVert:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mSection:Landroidx/constraintlayout/widget/ConstraintLayout;
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

    .line 17
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_prompt_announcement:I

    sput v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public hideActionButton()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mAction:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hideDismissButton()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mDismiss:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hideImage()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return-void
.end method

.method public hideRailHori()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mRailHori:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideRailVert()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mRailVert:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onActionClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->onActionClick(Landroid/view/View;)V

    return-void
.end method

.method public onDismissClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->onDismissClick(Landroid/view/View;)V

    return-void
.end method

.method public showActionButton(Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p1, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mAction:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showDescription(Ljava/lang/String;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showDismissButton(Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mDismiss:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p1, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mDismiss:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showImage(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showRailHori()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mRailHori:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showRailVert()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mRailVert:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showTitle(Ljava/lang/String;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
