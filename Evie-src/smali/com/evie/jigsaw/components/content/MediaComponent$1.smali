.class Lcom/evie/jigsaw/components/content/MediaComponent$1;
.super Lcom/evie/jigsaw/listeners/DebouncingOnClickListener;
.source "MediaComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/content/MediaComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/jigsaw/components/content/MediaComponent;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/components/content/MediaComponent;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/MediaComponent$1;->this$0:Lcom/evie/jigsaw/components/content/MediaComponent;

    invoke-direct {p0}, Lcom/evie/jigsaw/listeners/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected click(Landroid/view/View;)V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/evie/jigsaw/components/content/MediaComponent$1;->this$0:Lcom/evie/jigsaw/components/content/MediaComponent;

    iget-object v0, v0, Lcom/evie/jigsaw/components/content/MediaComponent;->linkResolver:Lcom/evie/common/services/links/LinkResolver;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/evie/common/services/links/LinkRequest;

    iget-object v3, p0, Lcom/evie/jigsaw/components/content/MediaComponent$1;->this$0:Lcom/evie/jigsaw/components/content/MediaComponent;

    invoke-static {v3}, Lcom/evie/jigsaw/components/content/MediaComponent;->access$100(Lcom/evie/jigsaw/components/content/MediaComponent;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/evie/common/services/links/LinkRequest;-><init>(Ljava/util/List;)V

    iget-object v3, p0, Lcom/evie/jigsaw/components/content/MediaComponent$1;->this$0:Lcom/evie/jigsaw/components/content/MediaComponent;

    .line 63
    invoke-virtual {v3}, Lcom/evie/jigsaw/components/content/MediaComponent;->getAnalytics()Lcom/evie/common/services/analytics/models/AnalyticsData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/evie/common/services/links/LinkRequest;->analyticsData(Lcom/evie/common/services/analytics/models/AnalyticsData;)Lcom/evie/common/services/links/LinkRequest;

    move-result-object v2

    new-instance v3, Lcom/evie/jigsaw/components/content/MediaComponent$1$1;

    invoke-direct {v3, p0, p1}, Lcom/evie/jigsaw/components/content/MediaComponent$1$1;-><init>(Lcom/evie/jigsaw/components/content/MediaComponent$1;Landroid/view/View;)V

    .line 64
    invoke-virtual {v2, v3}, Lcom/evie/common/services/links/LinkRequest;->callback(Lcom/evie/common/services/links/LinkCallback;)Lcom/evie/common/services/links/LinkRequest;

    move-result-object p1

    .line 62
    invoke-virtual {v0, v1, p1}, Lcom/evie/common/services/links/LinkResolver;->resolve(Landroid/content/Context;Lcom/evie/common/services/links/LinkRequest;)Z

    return-void
.end method
