.class public Lcom/evie/sidescreen/tiles/TileBackgroundFaker;
.super Landroid/view/ViewGroup;
.source "TileBackgroundFaker.java"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mCacheViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/evie/sidescreen/tiles/TileBackgroundFaker;->mBounds:Landroid/graphics/Rect;

    .line 29
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/evie/sidescreen/tiles/TileBackgroundFaker;->mCacheViews:Ljava/util/ArrayList;

    .line 46
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/TileBackgroundFaker;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/evie/sidescreen/R$dimen;->ss_image_rounded_corner_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/evie/sidescreen/tiles/TileBackgroundFaker;->mRadius:I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method
