.class public Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment_ViewBinding;
.super Ljava/lang/Object;
.source "FullScreenControllerFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;Landroid/view/View;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment_ViewBinding;->target:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;

    .line 21
    sget v0, Lcom/evie/sidescreen/R$id;->youtube_fullscreen_container:I

    const-string v1, "field \'mContainer\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mContainer:Landroid/view/View;

    .line 22
    sget v0, Lcom/evie/sidescreen/R$id;->fullscreen_controller:I

    const-string v1, "field \'mControls\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mControls:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment_ViewBinding;->target:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment_ViewBinding;->target:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;

    .line 32
    iput-object v1, v0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mContainer:Landroid/view/View;

    .line 33
    iput-object v1, v0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->mControls:Landroid/view/View;

    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
