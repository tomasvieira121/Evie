.class Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;
.super Landroid/app/Dialog;
.source "ImageAttributionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/services/attribution/ImageAttributionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttributionDialog"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImage:Lcom/evie/jigsaw/services/images/models/EvieImage;

.field private final transient mOpenAttributionListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/evie/jigsaw/services/attribution/ImageAttributionService;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/services/attribution/ImageAttributionService;Landroid/content/Context;Lcom/evie/jigsaw/services/images/models/EvieImage;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;->this$0:Lcom/evie/jigsaw/services/attribution/ImageAttributionService;

    .line 68
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance p1, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog$1;

    invoke-direct {p1, p0}, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog$1;-><init>(Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;)V

    iput-object p1, p0, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;->mOpenAttributionListener:Landroid/view/View$OnClickListener;

    .line 69
    iput-object p2, p0, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;->mContext:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;->mImage:Lcom/evie/jigsaw/services/images/models/EvieImage;

    return-void
.end method

.method static synthetic access$000(Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;)Lcom/evie/jigsaw/services/images/models/EvieImage;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;->mImage:Lcom/evie/jigsaw/services/images/models/EvieImage;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 p1, 0x1

    .line 75
    invoke-virtual {p0, p1}, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;->requestWindowFeature(I)Z

    .line 76
    invoke-virtual {p0}, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/evie/jigsaw/R$layout;->v2_subcomponent_attribution_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 77
    sget v0, Lcom/evie/jigsaw/R$id;->attribution_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 78
    sget v1, Lcom/evie/jigsaw/R$id;->attribution_source_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/evie/jigsaw/views/RichTextView;

    .line 79
    iget-object v2, p0, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;->mImage:Lcom/evie/jigsaw/services/images/models/EvieImage;

    invoke-virtual {v2}, Lcom/evie/jigsaw/services/images/models/EvieImage;->getAttribution()Lcom/evie/jigsaw/services/attribution/models/Attribution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evie/jigsaw/services/attribution/models/Attribution;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/evie/jigsaw/views/RichTextView;->setRichText(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;->this$0:Lcom/evie/jigsaw/services/attribution/ImageAttributionService;

    invoke-static {v1}, Lcom/evie/jigsaw/services/attribution/ImageAttributionService;->access$200(Lcom/evie/jigsaw/services/attribution/ImageAttributionService;)Lcom/evie/jigsaw/services/images/ImageResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;->mImage:Lcom/evie/jigsaw/services/images/models/EvieImage;

    iget-object v3, p0, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/evie/jigsaw/services/attribution/ImageAttributionService;->access$100(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/evie/jigsaw/services/images/ImageResolver;->resolve(Lcom/evie/jigsaw/services/images/models/Image;I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;->setContentView(Landroid/view/View;)V

    .line 83
    invoke-virtual {p0}, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 84
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, -0x1

    .line 85
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 87
    sget v0, Lcom/evie/jigsaw/R$id;->attribution_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog$2;

    invoke-direct {v1, p0}, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog$2;-><init>(Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget v0, Lcom/evie/jigsaw/R$id;->attribution_source:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 97
    iget-object v0, p0, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;->mOpenAttributionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
