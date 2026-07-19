.class public Lcom/evie/sidescreen/topicdetail/TopicDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "TopicDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity_ViewBinding;->target:Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;

    .line 26
    sget v0, Lcom/evie/sidescreen/R$id;->popup_view:I

    const-string v1, "field \'mPopupView\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p1, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->mPopupView:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity_ViewBinding;->target:Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity_ViewBinding;->target:Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;

    .line 36
    iput-object v1, v0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->mPopupView:Landroid/widget/FrameLayout;

    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
