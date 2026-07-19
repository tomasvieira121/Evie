.class public Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity_ViewBinding;
.super Ljava/lang/Object;
.source "RelatedTopicsActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;Landroid/view/View;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity_ViewBinding;->target:Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;

    .line 27
    sget v0, Lcom/evie/sidescreen/R$id;->toolbar:I

    const-string v1, "field \'mToolbar\'"

    const-class v2, Landroidx/appcompat/widget/Toolbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 28
    sget v0, Lcom/evie/sidescreen/R$id;->toolbar_title:I

    const-string v1, "field \'mToolbarTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->mToolbarTitle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity_ViewBinding;->target:Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity_ViewBinding;->target:Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;

    .line 38
    iput-object v1, v0, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 39
    iput-object v1, v0, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->mToolbarTitle:Landroid/widget/TextView;

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
