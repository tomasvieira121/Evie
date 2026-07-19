.class Lcom/evie/jigsaw/components/content/MediaComponent$3;
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

    .line 86
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/MediaComponent$3;->this$0:Lcom/evie/jigsaw/components/content/MediaComponent;

    invoke-direct {p0}, Lcom/evie/jigsaw/listeners/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected click(Landroid/view/View;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/evie/jigsaw/components/content/MediaComponent$3;->this$0:Lcom/evie/jigsaw/components/content/MediaComponent;

    iget-object v0, v0, Lcom/evie/jigsaw/components/content/MediaComponent;->attributionService:Lcom/evie/jigsaw/services/attribution/ImageAttributionService;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/evie/jigsaw/components/content/MediaComponent$3;->this$0:Lcom/evie/jigsaw/components/content/MediaComponent;

    invoke-static {v1}, Lcom/evie/jigsaw/components/content/MediaComponent;->access$300(Lcom/evie/jigsaw/components/content/MediaComponent;)Lcom/evie/jigsaw/services/images/models/EvieImage;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/evie/jigsaw/services/attribution/ImageAttributionService;->showAttribution(Landroid/content/Context;Lcom/evie/jigsaw/services/images/models/EvieImage;)V

    return-void
.end method
