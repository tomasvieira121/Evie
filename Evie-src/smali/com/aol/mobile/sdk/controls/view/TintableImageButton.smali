.class public Lcom/aol/mobile/sdk/controls/view/TintableImageButton;
.super Landroid/widget/ImageButton;

# interfaces
.implements Lcom/aol/mobile/sdk/controls/Themed;


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PrivateApi;
.end annotation


# instance fields
.field protected accentColor:I

.field protected mainColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/aol/mobile/sdk/controls/R$color;->default_main_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->mainColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/aol/mobile/sdk/controls/R$color;->default_accent_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->accentColor:I

    if-eqz p2, :cond_0

    sget-object v0, Lcom/aol/mobile/sdk/controls/R$styleable;->TintableImageButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/aol/mobile/sdk/controls/R$styleable;->TintableImageButton_mainColor:I

    iget p3, p0, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->mainColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->mainColor:I

    sget p2, Lcom/aol/mobile/sdk/controls/R$styleable;->TintableImageButton_accentColor:I

    iget p3, p0, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->accentColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->accentColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->drawableStateChanged()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->getColorFor([I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method protected getColorFor([I)I
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    const v3, 0x101009c

    if-eq v2, v3, :cond_0

    const v3, 0x10100a1

    if-eq v2, v3, :cond_0

    const v3, 0x10100a7

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->accentColor:I

    return p1

    :cond_1
    iget p1, p0, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->mainColor:I

    return p1
.end method

.method public setAccentColor(I)V
    .locals 0

    iput p1, p0, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->accentColor:I

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->drawableStateChanged()V

    return-void
.end method

.method public setMainColor(I)V
    .locals 0

    iput p1, p0, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->mainColor:I

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->drawableStateChanged()V

    return-void
.end method
