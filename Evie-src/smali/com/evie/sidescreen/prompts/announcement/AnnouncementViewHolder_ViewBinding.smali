.class public Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "AnnouncementViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;

.field private view7f0b002f:Landroid/view/View;

.field private view7f0b0031:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;Landroid/view/View;)V
    .locals 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;

    .line 29
    sget v0, Lcom/evie/sidescreen/R$id;->announcement_section:I

    const-string v1, "field \'mSection\'"

    const-class v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mSection:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 30
    sget v0, Lcom/evie/sidescreen/R$id;->announcement_description:I

    const-string v1, "field \'mDescription\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mDescription:Landroid/widget/TextView;

    .line 31
    sget v0, Lcom/evie/sidescreen/R$id;->announcement_image:I

    const-string v1, "field \'mImage\'"

    const-class v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p1, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    sget v0, Lcom/evie/sidescreen/R$id;->announcement_title:I

    const-string v1, "field \'mTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mTitle:Landroid/widget/TextView;

    .line 33
    sget v0, Lcom/evie/sidescreen/R$id;->announcement_dismiss:I

    const-string v1, "field \'mDismiss\' and method \'onDismissClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 34
    sget v1, Lcom/evie/sidescreen/R$id;->announcement_dismiss:I

    const-string v2, "field \'mDismiss\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mDismiss:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding;->view7f0b0031:Landroid/view/View;

    .line 36
    new-instance v1, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding$1;-><init>(Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding;Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    sget v0, Lcom/evie/sidescreen/R$id;->announcement_action:I

    const-string v1, "field \'mAction\' and method \'onActionClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 43
    sget v1, Lcom/evie/sidescreen/R$id;->announcement_action:I

    const-string v2, "field \'mAction\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mAction:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding;->view7f0b002f:Landroid/view/View;

    .line 45
    new-instance v1, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding$2;-><init>(Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding;Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    sget v0, Lcom/evie/sidescreen/R$id;->announcement_rail_vert:I

    const-string v1, "field \'mRailVert\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mRailVert:Landroid/view/View;

    .line 52
    sget v0, Lcom/evie/sidescreen/R$id;->announcement_rail_hori:I

    const-string v1, "field \'mRailHori\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mRailHori:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;

    .line 62
    iput-object v1, v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mSection:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 63
    iput-object v1, v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mDescription:Landroid/widget/TextView;

    .line 64
    iput-object v1, v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 65
    iput-object v1, v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mTitle:Landroid/widget/TextView;

    .line 66
    iput-object v1, v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mDismiss:Landroid/widget/TextView;

    .line 67
    iput-object v1, v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mAction:Landroid/widget/TextView;

    .line 68
    iput-object v1, v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mRailVert:Landroid/view/View;

    .line 69
    iput-object v1, v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->mRailHori:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding;->view7f0b0031:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iput-object v1, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding;->view7f0b0031:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding;->view7f0b002f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iput-object v1, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding;->view7f0b002f:Landroid/view/View;

    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
