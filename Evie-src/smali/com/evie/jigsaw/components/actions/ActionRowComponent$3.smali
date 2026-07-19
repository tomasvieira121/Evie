.class Lcom/evie/jigsaw/components/actions/ActionRowComponent$3;
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

    .line 167
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$3;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    iput-object p2, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$3;->val$item:Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 171
    new-instance v0, Lcom/evie/common/services/links/LinkRequest;

    iget-object v1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$3;->val$item:Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    invoke-virtual {v1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->getCustomButtonLinks()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evie/common/services/links/LinkRequest;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$3;->val$item:Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    invoke-virtual {v1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/common/services/links/LinkRequest;->app(Ljava/lang/String;)Lcom/evie/common/services/links/LinkRequest;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$3;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    iget-object v1, v1, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->linkResolver:Lcom/evie/common/services/links/LinkResolver;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/evie/common/services/links/LinkResolver;->resolve(Landroid/content/Context;Lcom/evie/common/services/links/LinkRequest;)Z

    return-void
.end method
