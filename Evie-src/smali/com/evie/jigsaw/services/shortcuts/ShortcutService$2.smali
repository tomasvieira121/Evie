.class Lcom/evie/jigsaw/services/shortcuts/ShortcutService$2;
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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$shortcutIcon:Landroid/graphics/Bitmap;

.field final synthetic val$shortcutNameView:Landroid/widget/EditText;

.field final synthetic val$target:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/services/shortcuts/ShortcutService;Landroid/widget/EditText;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/Intent;Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$2;->this$0:Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

    iput-object p2, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$2;->val$shortcutNameView:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$2;->val$shortcutIcon:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$2;->val$target:Landroid/content/Intent;

    iput-object p6, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$2;->val$analytics:Lcom/evie/common/services/analytics/models/AnalyticsData;

    iput-object p7, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$2;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 88
    iget-object p1, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$2;->val$shortcutNameView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-object p2, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$2;->this$0:Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

    iget-object v0, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$2;->val$shortcutIcon:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$2;->val$target:Landroid/content/Intent;

    invoke-static {p2, v0, p1, v1, v2}, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->access$100(Lcom/evie/jigsaw/services/shortcuts/ShortcutService;Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Intent;)V

    .line 90
    iget-object p2, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$2;->this$0:Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

    invoke-static {p2}, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->access$000(Lcom/evie/jigsaw/services/shortcuts/ShortcutService;)Lcom/evie/common/services/analytics/AnalyticsService;

    move-result-object p2

    iget-object v0, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$2;->val$analytics:Lcom/evie/common/services/analytics/models/AnalyticsData;

    iget-object v1, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$2;->val$name:Ljava/lang/String;

    invoke-interface {p2, v0, v1, p1}, Lcom/evie/common/services/analytics/AnalyticsService;->recordShortcutRequestAcceptedEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
