.class Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4$1;
.super Ljava/util/TimerTask;
.source "ActionRowComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4$1;->this$2:Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4$1;->this$2:Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;

    iget-object v0, v0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;->this$1:Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;

    sget-object v1, Lcom/evie/common/services/analytics/models/CloseMethod;->VIEW_TOUCH:Lcom/evie/common/services/analytics/models/CloseMethod;

    invoke-static {v0, v1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->access$700(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;Lcom/evie/common/services/analytics/models/CloseMethod;)V

    return-void
.end method
