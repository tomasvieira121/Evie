.class public Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "FollowButtonViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

.field private view7f0b004c:Landroid/view/View;

.field private view7f0b00de:Landroid/view/View;

.field private view7f0b00e2:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Landroid/view/View;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    .line 28
    sget v0, Lcom/evie/sidescreen/R$id;->follow:I

    const-string v1, "field \'mFollowButton\' and method \'onFollowButtonClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    iput-object v0, p1, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mFollowButton:Landroid/view/View;

    .line 30
    iput-object v0, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding;->view7f0b00de:Landroid/view/View;

    .line 31
    new-instance v1, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding$1;-><init>(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding;Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    sget v0, Lcom/evie/sidescreen/R$id;->following:I

    const-string v1, "field \'mFollowingButton\' and method \'onFollowingButtonClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 38
    iput-object v0, p1, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mFollowingButton:Landroid/view/View;

    .line 39
    iput-object v0, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding;->view7f0b00e2:Landroid/view/View;

    .line 40
    new-instance v1, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding$2;-><init>(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding;Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget v0, Lcom/evie/sidescreen/R$id;->blocked:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 47
    iput-object p2, p1, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mBlockedButton:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 49
    iput-object p2, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding;->view7f0b004c:Landroid/view/View;

    .line 50
    new-instance v0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding$3;-><init>(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding;Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 64
    iput-object v1, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    .line 66
    iput-object v1, v0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mFollowButton:Landroid/view/View;

    .line 67
    iput-object v1, v0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mFollowingButton:Landroid/view/View;

    .line 68
    iput-object v1, v0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mBlockedButton:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding;->view7f0b00de:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iput-object v1, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding;->view7f0b00de:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding;->view7f0b00e2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iput-object v1, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding;->view7f0b00e2:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding;->view7f0b004c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iput-object v1, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding;->view7f0b004c:Landroid/view/View;

    :cond_0
    return-void

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
