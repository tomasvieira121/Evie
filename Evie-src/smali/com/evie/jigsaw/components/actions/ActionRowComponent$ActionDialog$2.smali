.class Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ActionRowComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->getDialogItemsAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$2;->this$1:Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$2;->this$1:Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;

    iget-object v0, v0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    invoke-virtual {v0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 354
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 340
    instance-of v0, p1, Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent$Holder;

    if-eqz v0, :cond_0

    return-void

    .line 345
    :cond_0
    check-cast p1, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;

    .line 346
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$2;->this$1:Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;

    iget-object v0, v0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    invoke-virtual {v0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->getItems()Ljava/util/List;

    move-result-object v0

    div-int/lit8 p2, p2, 0x2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    .line 347
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$2;->this$1:Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;

    invoke-static {v0, p2, p1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->access$200(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$2;->this$1:Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;

    invoke-virtual {v0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 333
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid action dialog view type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 328
    :pswitch_0
    new-instance p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;

    sget v2, Lcom/evie/jigsaw/R$layout;->v2_subcomponent_action_single:I

    .line 329
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 324
    :pswitch_1
    new-instance p2, Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent$Holder;

    sget v2, Lcom/evie/jigsaw/R$layout;->v2_component_horizontal_delimiter:I

    .line 325
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
