.class Lcom/aol/mobile/sdk/renderer/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/renderer/j;-><init>(Landroid/content/Context;Lcom/aol/mobile/sdk/renderer/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aol/mobile/sdk/renderer/i;

.field final synthetic b:Lcom/aol/mobile/sdk/renderer/j;

.field private c:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/renderer/j;Lcom/aol/mobile/sdk/renderer/i;)V
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/j$1;->b:Lcom/aol/mobile/sdk/renderer/j;

    iput-object p2, p0, Lcom/aol/mobile/sdk/renderer/j$1;->a:Lcom/aol/mobile/sdk/renderer/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/j$1;->c:Landroid/view/Surface;

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/j$1;->a:Lcom/aol/mobile/sdk/renderer/i;

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/j$1;->c:Landroid/view/Surface;

    invoke-interface {p1, v0}, Lcom/aol/mobile/sdk/renderer/i;->onVideoSurfaceAvailable(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/j$1;->a:Lcom/aol/mobile/sdk/renderer/i;

    invoke-interface {p1, p2, p3}, Lcom/aol/mobile/sdk/renderer/i;->onVideoSurfaceResized(II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/j$1;->c:Landroid/view/Surface;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/j$1;->a:Lcom/aol/mobile/sdk/renderer/i;

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/j$1;->c:Landroid/view/Surface;

    invoke-interface {p1, v0}, Lcom/aol/mobile/sdk/renderer/i;->onVideoSurfaceReleased(Landroid/view/Surface;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/j$1;->c:Landroid/view/Surface;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/j$1;->a:Lcom/aol/mobile/sdk/renderer/i;

    invoke-interface {p1, p2, p3}, Lcom/aol/mobile/sdk/renderer/i;->onVideoSurfaceResized(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
