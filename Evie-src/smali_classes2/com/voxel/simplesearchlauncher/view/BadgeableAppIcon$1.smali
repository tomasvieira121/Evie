.class Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon$1;
.super Lcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;
.source "BadgeableAppIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon$1;->this$0:Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon$1;->this$0:Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->access$000(Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;)Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon$1;->this$0:Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->access$000(Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;)Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setBadgeEnabled(Z)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon$1;->this$0:Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->postInvalidate()V

    .line 222
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon$1;->this$0:Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mDataSource:Lcom/facebook/datasource/DataSource;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon$1;->this$0:Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mDataSource:Lcom/facebook/datasource/DataSource;

    invoke-interface {v0}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 224
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon$1;->this$0:Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mDataSource:Lcom/facebook/datasource/DataSource;

    :cond_1
    return-void
.end method

.method public onFailureImpl(Lcom/facebook/datasource/DataSource;)V
    .locals 0

    .line 214
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon$1;->cleanup()V

    return-void
.end method

.method public onNewResultImpl(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon$1;->this$0:Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->access$000(Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;)Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    .line 205
    invoke-static {p1, v0}, Lcom/voxel/launcher3/Utilities;->findDominantColorByHue(Landroid/graphics/Bitmap;I)I

    move-result p1

    const/4 v0, 0x1

    .line 204
    invoke-static {p1, v0}, Lcom/voxel/launcher3/graphics/IconPalette;->fromDominantColor(IZ)Lcom/voxel/launcher3/graphics/IconPalette;

    move-result-object p1

    .line 206
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon$1;->this$0:Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->access$000(Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;)Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setIconPalette(Lcom/voxel/launcher3/graphics/IconPalette;)V

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon$1;->cleanup()V

    return-void
.end method
