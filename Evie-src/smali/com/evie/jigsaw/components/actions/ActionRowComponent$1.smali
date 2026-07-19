.class Lcom/evie/jigsaw/components/actions/ActionRowComponent$1;
.super Landroid/widget/BaseAdapter;
.source "ActionRowComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/actions/ActionRowComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/components/actions/ActionRowComponent;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$1;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$1;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    invoke-virtual {v0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$1;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    invoke-virtual {v0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 77
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p2, :cond_0

    .line 80
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/evie/jigsaw/R$layout;->v2_subcomponent_action_multiple_icon:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 83
    :cond_0
    iget-object p3, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$1;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    move-object v0, p2

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p3}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    invoke-virtual {p1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->getIcon()Lcom/evie/jigsaw/services/images/models/EvieImage;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->bind(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/evie/jigsaw/services/images/models/Image;)Z

    return-object p2
.end method
