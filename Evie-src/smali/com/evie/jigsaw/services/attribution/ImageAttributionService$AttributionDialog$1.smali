.class Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog$1;
.super Lcom/evie/jigsaw/listeners/DebouncingOnClickListener;
.source "ImageAttributionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog$1;->this$1:Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;

    invoke-direct {p0}, Lcom/evie/jigsaw/listeners/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected click(Landroid/view/View;)V
    .locals 2

    .line 51
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog$1;->this$1:Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;

    .line 55
    invoke-static {v1}, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;->access$000(Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;)Lcom/evie/jigsaw/services/images/models/EvieImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evie/jigsaw/services/images/models/EvieImage;->getAttribution()Lcom/evie/jigsaw/services/attribution/models/Attribution;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evie/jigsaw/services/attribution/models/Attribution;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
