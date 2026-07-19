.class Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem$2;
.super Ljava/lang/Object;
.source "AbstractActionComponent.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem$2;->this$0:Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem$2;->this$0:Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->shortcut(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
