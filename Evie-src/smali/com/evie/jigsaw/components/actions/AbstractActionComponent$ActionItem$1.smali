.class Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem$1;
.super Ljava/lang/Object;
.source "AbstractActionComponent.java"

# interfaces
.implements Lcom/evie/common/services/links/LinkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->shortcut(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private started:Z

.field final synthetic this$0:Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$shortcutIcon:Lcom/evie/jigsaw/services/images/models/EvieImage;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Landroid/content/Context;Lcom/evie/jigsaw/services/images/models/EvieImage;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem$1;->this$0:Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    iput-object p2, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem$1;->val$shortcutIcon:Lcom/evie/jigsaw/services/images/models/EvieImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 341
    iput-boolean p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem$1;->started:Z

    return-void
.end method


# virtual methods
.method public onResolved(Landroid/content/Intent;)Z
    .locals 9

    .line 345
    iget-boolean v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem$1;->started:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem$1;->this$0:Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    iget-object v1, v0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->shortcutService:Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

    iget-object v2, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem$1;->this$0:Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    .line 350
    invoke-static {v0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->access$000(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem$1;->val$shortcutIcon:Lcom/evie/jigsaw/services/images/models/EvieImage;

    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem$1;->this$0:Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    .line 353
    invoke-static {v0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->access$100(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)Lcom/evie/jigsaw/services/images/models/EvieImage;

    move-result-object v6

    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem$1;->this$0:Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    .line 354
    invoke-static {v0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->access$200(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->getAnalytics()Lcom/evie/common/services/analytics/models/AnalyticsData;

    move-result-object v7

    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem$1;->this$0:Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    .line 355
    invoke-static {v0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->access$300(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)Ljava/lang/String;

    move-result-object v8

    move-object v4, p1

    .line 348
    invoke-virtual/range {v1 .. v8}, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->makeShortcut(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/evie/jigsaw/services/images/models/Image;Lcom/evie/jigsaw/services/images/models/Image;Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 358
    iput-boolean p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem$1;->started:Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
