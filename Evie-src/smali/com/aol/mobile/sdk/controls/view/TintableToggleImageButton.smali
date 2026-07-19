.class public Lcom/aol/mobile/sdk/controls/view/TintableToggleImageButton;
.super Lcom/aol/mobile/sdk/controls/view/TintableImageButton;


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PrivateApi;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aol/mobile/sdk/controls/view/TintableToggleImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/aol/mobile/sdk/controls/view/TintableToggleImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/controls/view/TintableToggleImageButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aol/mobile/sdk/controls/view/TintableToggleImageButton;->getColorFor([I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/aol/mobile/sdk/controls/view/TintableToggleImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method protected getColorFor([I)I
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    const v3, 0x10100a1

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/aol/mobile/sdk/controls/view/TintableToggleImageButton;->accentColor:I

    return p1

    :cond_1
    iget p1, p0, Lcom/aol/mobile/sdk/controls/view/TintableToggleImageButton;->mainColor:I

    return p1
.end method
