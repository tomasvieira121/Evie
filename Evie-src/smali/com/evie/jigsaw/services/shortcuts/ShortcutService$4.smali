.class Lcom/evie/jigsaw/services/shortcuts/ShortcutService$4;
.super Lcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->getShortcutBitmap(Landroid/content/Context;Lcom/evie/jigsaw/services/images/models/Image;Lcom/evie/jigsaw/services/images/models/Image;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

.field final synthetic val$badge:Lcom/evie/jigsaw/services/images/models/Image;

.field final synthetic val$badgeSizeInPixels:I

.field final synthetic val$badgeSubscriber:Lcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;

.field final synthetic val$base:Lcom/evie/jigsaw/services/images/models/Image;

.field final synthetic val$baseImageDestination:Landroid/graphics/Rect;

.field final synthetic val$shortcutCanvas:Landroid/graphics/Canvas;

.field final synthetic val$shortcutSizeInPixels:I


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/services/shortcuts/ShortcutService;Lcom/evie/jigsaw/services/images/models/Image;Landroid/graphics/Canvas;ILandroid/graphics/Rect;Lcom/evie/jigsaw/services/images/models/Image;ILcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$4;->this$0:Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

    iput-object p2, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$4;->val$base:Lcom/evie/jigsaw/services/images/models/Image;

    iput-object p3, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$4;->val$shortcutCanvas:Landroid/graphics/Canvas;

    iput p4, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$4;->val$shortcutSizeInPixels:I

    iput-object p5, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$4;->val$baseImageDestination:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$4;->val$badge:Lcom/evie/jigsaw/services/images/models/Image;

    iput p7, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$4;->val$badgeSizeInPixels:I

    iput-object p8, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$4;->val$badgeSubscriber:Lcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailureImpl(Lcom/facebook/datasource/DataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method protected onNewResultImpl(Landroid/graphics/Bitmap;)V
    .locals 6

    .line 151
    new-instance v0, Landroid/graphics/Paint;

    invoke-static {}, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->access$200()Landroid/graphics/Paint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 152
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 154
    iget-object v2, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$4;->val$base:Lcom/evie/jigsaw/services/images/models/Image;

    invoke-interface {v2}, Lcom/evie/jigsaw/services/images/models/Image;->getRounding()Lcom/evie/jigsaw/services/images/models/Rounding;

    move-result-object v2

    sget-object v3, Lcom/evie/jigsaw/services/images/models/Rounding;->circle:Lcom/evie/jigsaw/services/images/models/Rounding;

    if-ne v2, v3, :cond_0

    .line 155
    iget-object v2, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$4;->val$shortcutCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v2, -0xbdbdbe

    .line 156
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v2, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$4;->val$shortcutCanvas:Landroid/graphics/Canvas;

    iget v3, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$4;->val$shortcutSizeInPixels:I

    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v4, v5, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 159
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$4;->val$shortcutCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$4;->val$baseImageDestination:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v1, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 165
    iget-object p1, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$4;->this$0:Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

    iget-object v0, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$4;->val$badge:Lcom/evie/jigsaw/services/images/models/Image;

    iget v1, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$4;->val$badgeSizeInPixels:I

    iget-object v2, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$4;->val$badgeSubscriber:Lcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;

    invoke-static {p1, v0, v1, v2}, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->access$300(Lcom/evie/jigsaw/services/shortcuts/ShortcutService;Lcom/evie/jigsaw/services/images/models/Image;ILcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;)V

    return-void
.end method
