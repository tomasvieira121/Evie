.class Lcom/evie/jigsaw/components/actions/ActionRowComponent$2;
.super Ljava/lang/Object;
.source "ActionRowComponent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/jigsaw/components/actions/ActionRowComponent;->bindSingle(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

.field final synthetic val$item:Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/components/actions/ActionRowComponent;Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$2;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    iput-object p2, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$2;->val$item:Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$2;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    iget-object v1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$2;->val$item:Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    invoke-static {v0, v1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->access$000(Lcom/evie/jigsaw/components/actions/ActionRowComponent;Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)V

    .line 139
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$2;->val$item:Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->execute(Landroid/content/Context;)V

    return-void
.end method
