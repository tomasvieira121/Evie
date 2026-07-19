.class Lcom/evie/jigsaw/components/actions/ActionRowComponent$4;
.super Ljava/lang/Object;
.source "ActionRowComponent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/jigsaw/components/actions/ActionRowComponent;->makeOpenActionDialogListener(Landroid/content/Context;)Landroid/view/View$OnClickListener;
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

    .line 224
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$4;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    iput-object p2, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 228
    new-instance p1, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;

    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$4;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    iget-object v1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$4;->val$context:Landroid/content/Context;

    invoke-direct {p1, v0, v1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;-><init>(Lcom/evie/jigsaw/components/actions/ActionRowComponent;Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->show()V

    return-void
.end method
