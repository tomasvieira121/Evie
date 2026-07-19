.class public Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "AutoplayViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;

.field private view7f0b003d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;Landroid/view/View;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;

    .line 25
    sget v0, Lcom/evie/sidescreen/R$id;->autoplay:I

    const-string v1, "field \'mAutoplaySwitch\' and method \'onCheckedChanged\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 26
    sget v0, Lcom/evie/sidescreen/R$id;->autoplay:I

    const-string v1, "field \'mAutoplaySwitch\'"

    const-class v2, Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;->mAutoplaySwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 27
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder_ViewBinding;->view7f0b003d:Landroid/view/View;

    .line 28
    check-cast p2, Landroid/widget/CompoundButton;

    new-instance v0, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder_ViewBinding$1;-><init>(Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;

    .line 43
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;->mAutoplaySwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 45
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder_ViewBinding;->view7f0b003d:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 46
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder_ViewBinding;->view7f0b003d:Landroid/view/View;

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
