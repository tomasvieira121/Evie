.class public Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedCornerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;
    }
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(ILcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;)V
    .locals 4

    .line 30
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 31
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 33
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v1, -0x1000000

    .line 34
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 36
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x0

    .line 37
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 44
    sget-object v2, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$1;->$SwitchMap$com$voxel$simplesearchlauncher$drawable$RoundedCornerDrawable$CornerType:[I

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->ordinal()I

    move-result p2

    aget p2, v2, p2

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 p2, 0x0

    goto :goto_0

    :pswitch_0
    int-to-float p2, p1

    move v2, p2

    const/4 p2, 0x0

    goto :goto_0

    :pswitch_1
    int-to-float p2, p1

    goto :goto_0

    :pswitch_2
    int-to-float v2, p1

    move p2, v2

    :goto_0
    int-to-float p1, p1

    .line 59
    invoke-virtual {v0, v2, p2, p1, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
