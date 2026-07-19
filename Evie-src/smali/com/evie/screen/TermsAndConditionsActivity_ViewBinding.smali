.class public Lcom/evie/screen/TermsAndConditionsActivity_ViewBinding;
.super Ljava/lang/Object;
.source "TermsAndConditionsActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/screen/TermsAndConditionsActivity;


# direct methods
.method public constructor <init>(Lcom/evie/screen/TermsAndConditionsActivity;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/evie/screen/TermsAndConditionsActivity_ViewBinding;->target:Lcom/evie/screen/TermsAndConditionsActivity;

    const-string v0, "field \'mTextView\'"

    .line 28
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a02aa

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/screen/TermsAndConditionsActivity;->mTextView:Landroid/widget/TextView;

    const-string v0, "field \'mProgress\'"

    .line 29
    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a0208

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/evie/screen/TermsAndConditionsActivity;->mProgress:Landroid/widget/ProgressBar;

    const-string v0, "field \'mDialogLayout\'"

    .line 30
    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0a00cf

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p1, Lcom/evie/screen/TermsAndConditionsActivity;->mDialogLayout:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/evie/screen/TermsAndConditionsActivity_ViewBinding;->target:Lcom/evie/screen/TermsAndConditionsActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/evie/screen/TermsAndConditionsActivity_ViewBinding;->target:Lcom/evie/screen/TermsAndConditionsActivity;

    .line 40
    iput-object v1, v0, Lcom/evie/screen/TermsAndConditionsActivity;->mTextView:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/evie/screen/TermsAndConditionsActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 42
    iput-object v1, v0, Lcom/evie/screen/TermsAndConditionsActivity;->mDialogLayout:Landroid/widget/FrameLayout;

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
