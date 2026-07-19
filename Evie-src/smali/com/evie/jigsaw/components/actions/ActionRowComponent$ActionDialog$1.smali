.class Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$1;
.super Ljava/lang/Object;
.source "ActionRowComponent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$1;->this$1:Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 290
    iget-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$1;->this$1:Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;

    invoke-static {p1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->access$100(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;)V

    return-void
.end method
