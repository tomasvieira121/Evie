.class Lcom/evie/jigsaw/components/content/DetailsComponent$2;
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

    .line 72
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$2;->this$0:Lcom/evie/jigsaw/components/content/DetailsComponent;

    invoke-direct {p0}, Lcom/evie/jigsaw/listeners/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected click(Landroid/view/View;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$2;->this$0:Lcom/evie/jigsaw/components/content/DetailsComponent;

    iget-object v0, v0, Lcom/evie/jigsaw/components/content/DetailsComponent;->attributionService:Lcom/evie/jigsaw/services/attribution/ImageAttributionService;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$2;->this$0:Lcom/evie/jigsaw/components/content/DetailsComponent;

    invoke-static {v1}, Lcom/evie/jigsaw/components/content/DetailsComponent;->access$100(Lcom/evie/jigsaw/components/content/DetailsComponent;)Lcom/evie/jigsaw/services/images/models/EvieImage;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/evie/jigsaw/services/attribution/ImageAttributionService;->showAttribution(Landroid/content/Context;Lcom/evie/jigsaw/services/images/models/EvieImage;)V

    return-void
.end method
