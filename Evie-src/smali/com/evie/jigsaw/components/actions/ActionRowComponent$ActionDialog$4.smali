.class Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;
.super Ljava/lang/Object;
.source "ActionRowComponent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->bindDialogItem(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$holder:Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;

.field final synthetic val$item:Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Ljava/lang/String;Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;->this$1:Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;

    iput-object p2, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;->val$item:Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    iput-object p3, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;->val$action:Ljava/lang/String;

    iput-object p4, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;->val$holder:Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 414
    iget-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;->val$item:Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    invoke-virtual {p1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->isPreferred()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 415
    iget-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;->this$1:Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;

    invoke-static {p1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->access$300(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;)V

    .line 416
    iget-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;->this$1:Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;

    iget-object p1, p1, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    iget-object p1, p1, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->preferences:Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;->val$action:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;->clear(Ljava/lang/String;)V

    .line 417
    iget-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;->this$1:Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;

    invoke-static {p1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->access$400(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;)V

    goto :goto_0

    .line 420
    :cond_0
    iget-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;->this$1:Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;

    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;->val$holder:Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;

    invoke-static {p1, v0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->access$500(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;)V

    .line 421
    iget-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;->this$1:Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;

    iget-object p1, p1, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    iget-object p1, p1, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->preferences:Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;->val$action:Ljava/lang/String;

    iget-object v1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;->val$item:Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    invoke-virtual {v1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->getPreferenceValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;->this$1:Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;

    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;->val$item:Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    invoke-static {p1, v0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->access$600(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)V

    .line 425
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4$1;

    invoke-direct {v0, p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4$1;-><init>(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    return-void
.end method
