.class Lcom/evie/jigsaw/services/shortcuts/ShortcutService$1;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->makeShortcut(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/evie/jigsaw/services/images/models/Image;Lcom/evie/jigsaw/services/images/models/Image;Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

.field final synthetic val$analytics:Lcom/evie/common/services/analytics/models/AnalyticsData;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/services/shortcuts/ShortcutService;Lcom/evie/common/services/analytics/models/AnalyticsData;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$1;->this$0:Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

    iput-object p2, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$1;->val$analytics:Lcom/evie/common/services/analytics/models/AnalyticsData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$1;->this$0:Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

    invoke-static {p1}, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->access$000(Lcom/evie/jigsaw/services/shortcuts/ShortcutService;)Lcom/evie/common/services/analytics/AnalyticsService;

    move-result-object p1

    iget-object p2, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$1;->val$analytics:Lcom/evie/common/services/analytics/models/AnalyticsData;

    invoke-interface {p1, p2}, Lcom/evie/common/services/analytics/AnalyticsService;->recordShortcutRequestCanceledEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;)V

    return-void
.end method
