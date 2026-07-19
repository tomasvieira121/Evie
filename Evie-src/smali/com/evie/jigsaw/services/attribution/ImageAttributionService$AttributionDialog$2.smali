.class Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog$2;
.super Ljava/lang/Object;
.source "ImageAttributionService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;->onCreate(Landroid/os/Bundle;)V
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

    .line 88
    iput-object p1, p0, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog$2;->this$1:Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog$2;->this$1:Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;

    invoke-virtual {p1}, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;->dismiss()V

    return-void
.end method
