.class public Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity_ViewBinding;
.super Ljava/lang/Object;
.source "PersonalizeSearchActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;Landroid/view/View;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity_ViewBinding;->target:Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;

    .line 27
    sget v0, Lcom/evie/sidescreen/R$id;->search_results_container:I

    const-string v1, "field \'mResultsContainer\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mResultsContainer:Landroid/widget/FrameLayout;

    .line 28
    sget v0, Lcom/evie/sidescreen/R$id;->search_no_results:I

    const-string v1, "field \'mNoResults\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mNoResults:Landroid/view/View;

    .line 29
    sget v0, Lcom/evie/sidescreen/R$id;->search_src_text:I

    const-string v1, "field \'mSearchEditText\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p1, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mSearchEditText:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity_ViewBinding;->target:Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity_ViewBinding;->target:Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;

    .line 39
    iput-object v1, v0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mResultsContainer:Landroid/widget/FrameLayout;

    .line 40
    iput-object v1, v0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mNoResults:Landroid/view/View;

    .line 41
    iput-object v1, v0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mSearchEditText:Landroid/widget/EditText;

    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
