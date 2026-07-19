.class public Lcom/evie/jigsaw/services/attribution/ImageAttributionService;
.super Ljava/lang/Object;
.source "ImageAttributionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;
    }
.end annotation


# instance fields
.field private final imageResolver:Lcom/evie/jigsaw/services/images/ImageResolver;


# direct methods
.method public constructor <init>(Lcom/evie/jigsaw/services/images/ImageResolver;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/jigsaw/services/attribution/ImageAttributionService;->imageResolver:Lcom/evie/jigsaw/services/images/ImageResolver;

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)I
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/evie/jigsaw/services/attribution/ImageAttributionService;->getScreenWidth(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/evie/jigsaw/services/attribution/ImageAttributionService;)Lcom/evie/jigsaw/services/images/ImageResolver;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/evie/jigsaw/services/attribution/ImageAttributionService;->imageResolver:Lcom/evie/jigsaw/services/images/ImageResolver;

    return-object p0
.end method

.method private static getScreenWidth(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 103
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 104
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 105
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 106
    iget p0, v0, Landroid/graphics/Point;->x:I

    return p0
.end method


# virtual methods
.method public showAttribution(Landroid/content/Context;Lcom/evie/jigsaw/services/images/models/EvieImage;)V
    .locals 1

    .line 33
    new-instance v0, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;

    invoke-direct {v0, p0, p1, p2}, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;-><init>(Lcom/evie/jigsaw/services/attribution/ImageAttributionService;Landroid/content/Context;Lcom/evie/jigsaw/services/images/models/EvieImage;)V

    invoke-virtual {v0}, Lcom/evie/jigsaw/services/attribution/ImageAttributionService$AttributionDialog;->show()V

    return-void
.end method
