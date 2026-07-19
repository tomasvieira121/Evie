.class Lcom/evie/jigsaw/components/content/DetailsComponent$1;
.super Lcom/evie/jigsaw/listeners/DebouncingOnClickListener;
.source "DetailsComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/content/DetailsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/jigsaw/components/content/DetailsComponent;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/components/content/DetailsComponent;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$1;->this$0:Lcom/evie/jigsaw/components/content/DetailsComponent;

    invoke-direct {p0}, Lcom/evie/jigsaw/listeners/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected click(Landroid/view/View;)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$1;->this$0:Lcom/evie/jigsaw/components/content/DetailsComponent;

    iget-object v0, v0, Lcom/evie/jigsaw/components/content/DetailsComponent;->linkResolver:Lcom/evie/common/services/links/LinkResolver;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/evie/common/services/links/LinkRequest;

    iget-object v2, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$1;->this$0:Lcom/evie/jigsaw/components/content/DetailsComponent;

    invoke-static {v2}, Lcom/evie/jigsaw/components/content/DetailsComponent;->access$000(Lcom/evie/jigsaw/components/content/DetailsComponent;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/evie/common/services/links/LinkRequest;-><init>(Ljava/util/List;)V

    iget-object v2, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$1;->this$0:Lcom/evie/jigsaw/components/content/DetailsComponent;

    invoke-virtual {v2}, Lcom/evie/jigsaw/components/content/DetailsComponent;->getAnalytics()Lcom/evie/common/services/analytics/models/AnalyticsData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/evie/common/services/links/LinkRequest;->analyticsData(Lcom/evie/common/services/analytics/models/AnalyticsData;)Lcom/evie/common/services/links/LinkRequest;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/evie/common/services/links/LinkResolver;->resolve(Landroid/content/Context;Lcom/evie/common/services/links/LinkRequest;)Z

    return-void
.end method
