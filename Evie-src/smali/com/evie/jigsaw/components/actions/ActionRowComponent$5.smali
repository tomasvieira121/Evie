.class Lcom/evie/jigsaw/components/actions/ActionRowComponent$5;
.super Ljava/lang/Object;
.source "ActionRowComponent.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/jigsaw/components/actions/ActionRowComponent;->makeOpenActionDialogAdapterListener(Landroid/content/Context;)Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/components/actions/ActionRowComponent;Landroid/content/Context;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$5;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    iput-object p2, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 238
    new-instance p1, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;

    iget-object p2, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$5;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    iget-object p3, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$5;->val$context:Landroid/content/Context;

    invoke-direct {p1, p2, p3}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;-><init>(Lcom/evie/jigsaw/components/actions/ActionRowComponent;Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->show()V

    return-void
.end method
