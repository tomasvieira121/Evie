.class public Lcom/evie/common/settings/AbTestActivity_ViewBinding;
.super Ljava/lang/Object;
.source "AbTestActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/common/settings/AbTestActivity;


# direct methods
.method public constructor <init>(Lcom/evie/common/settings/AbTestActivity;Landroid/view/View;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/evie/common/settings/AbTestActivity_ViewBinding;->target:Lcom/evie/common/settings/AbTestActivity;

    .line 27
    sget v0, Lcom/evie/common/R$id;->ab_experiment_label:I

    const-string v1, "field \'mExperimentLabel\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/common/settings/AbTestActivity;->mExperimentLabel:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/evie/common/R$id;->ab_experiment_text:I

    const-string v1, "field \'mExperimentText\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/evie/common/settings/AbTestActivity;->mExperimentText:Landroid/widget/EditText;

    .line 29
    sget v0, Lcom/evie/common/R$id;->ab_group_label:I

    const-string v1, "field \'mGroupLabel\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/common/settings/AbTestActivity;->mGroupLabel:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/evie/common/R$id;->ab_group_text:I

    const-string v1, "field \'mGroupText\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p1, Lcom/evie/common/settings/AbTestActivity;->mGroupText:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/evie/common/settings/AbTestActivity_ViewBinding;->target:Lcom/evie/common/settings/AbTestActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/evie/common/settings/AbTestActivity_ViewBinding;->target:Lcom/evie/common/settings/AbTestActivity;

    .line 40
    iput-object v1, v0, Lcom/evie/common/settings/AbTestActivity;->mExperimentLabel:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/evie/common/settings/AbTestActivity;->mExperimentText:Landroid/widget/EditText;

    .line 42
    iput-object v1, v0, Lcom/evie/common/settings/AbTestActivity;->mGroupLabel:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/evie/common/settings/AbTestActivity;->mGroupText:Landroid/widget/EditText;

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
