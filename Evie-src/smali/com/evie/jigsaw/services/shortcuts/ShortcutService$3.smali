.class Lcom/evie/jigsaw/services/shortcuts/ShortcutService$3;
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

.field final synthetic val$badgeImageDestination:Landroid/graphics/Rect;

.field final synthetic val$shortcutCanvas:Landroid/graphics/Canvas;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/services/shortcuts/ShortcutService;Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$3;->this$0:Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

    iput-object p2, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$3;->val$shortcutCanvas:Landroid/graphics/Canvas;

    iput-object p3, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$3;->val$badgeImageDestination:Landroid/graphics/Rect;

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
    .locals 4

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 136
    iget-object v1, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$3;->val$shortcutCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$3;->val$badgeImageDestination:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method
