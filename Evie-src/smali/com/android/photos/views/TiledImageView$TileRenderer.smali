.class Lcom/android/photos/views/TiledImageView$TileRenderer;
.super Ljava/lang/Object;
.source "TiledImageView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/views/TiledImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TileRenderer"
.end annotation


# instance fields
.field private mCanvas:Lcom/android/gallery3d/glrenderer/GLES20Canvas;

.field final synthetic this$0:Lcom/android/photos/views/TiledImageView;


# direct methods
.method constructor <init>(Lcom/android/photos/views/TiledImageView;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    .line 224
    iget-object p1, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->mCanvas:Lcom/android/gallery3d/glrenderer/GLES20Canvas;

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->clearBuffer()V

    .line 226
    iget-object p1, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object p1, p1, Lcom/android/photos/views/TiledImageView;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v0, v0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->isReadyCallback:Ljava/lang/Runnable;

    .line 228
    iget-object v1, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v1, v1, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/android/photos/views/TiledImageRenderer;

    iget-object v2, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v2, v2, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v2, v2, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    iget-object v3, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v3, v3, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v3, v3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->rotation:I

    invoke-virtual {v1, v2, v3}, Lcom/android/photos/views/TiledImageRenderer;->setModel(Lcom/android/photos/views/TiledImageRenderer$TileSource;I)V

    .line 229
    iget-object v1, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v1, v1, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/android/photos/views/TiledImageRenderer;

    iget-object v2, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v2, v2, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v2, v2, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerX:I

    iget-object v3, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v3, v3, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v3, v3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerY:I

    iget-object v4, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v4, v4, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v4, v4, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/photos/views/TiledImageRenderer;->setPosition(IIF)V

    .line 231
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 232
    iget-object p1, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object p1, p1, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object p1, p1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/android/photos/views/TiledImageRenderer;

    iget-object v1, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->mCanvas:Lcom/android/gallery3d/glrenderer/GLES20Canvas;

    invoke-virtual {p1, v1}, Lcom/android/photos/views/TiledImageRenderer;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 234
    iget-object p1, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object p1, p1, Lcom/android/photos/views/TiledImageView;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 237
    :try_start_1
    iget-object v1, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v1, v1, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->isReadyCallback:Ljava/lang/Runnable;

    if-ne v1, v0, :cond_0

    .line 238
    iget-object v1, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v1, v1, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->isReadyCallback:Ljava/lang/Runnable;

    .line 240
    :cond_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 242
    iget-object p1, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    invoke-virtual {p1, v0}, Lcom/android/photos/views/TiledImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 240
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void

    :catchall_1
    move-exception v0

    .line 231
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 218
    iget-object p1, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->mCanvas:Lcom/android/gallery3d/glrenderer/GLES20Canvas;

    invoke-virtual {p1, p2, p3}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->setSize(II)V

    .line 219
    iget-object p1, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object p1, p1, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object p1, p1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/android/photos/views/TiledImageRenderer;

    invoke-virtual {p1, p2, p3}, Lcom/android/photos/views/TiledImageRenderer;->setViewSize(II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    .line 211
    new-instance p1, Lcom/android/gallery3d/glrenderer/GLES20Canvas;

    invoke-direct {p1}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;-><init>()V

    iput-object p1, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->mCanvas:Lcom/android/gallery3d/glrenderer/GLES20Canvas;

    .line 212
    invoke-static {}, Lcom/android/gallery3d/glrenderer/BasicTexture;->invalidateAllTextures()V

    .line 213
    iget-object p1, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object p1, p1, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object p1, p1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/android/photos/views/TiledImageRenderer;

    iget-object p2, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object p2, p2, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object p2, p2, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    iget-object v0, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v0, v0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->rotation:I

    invoke-virtual {p1, p2, v0}, Lcom/android/photos/views/TiledImageRenderer;->setModel(Lcom/android/photos/views/TiledImageRenderer$TileSource;I)V

    return-void
.end method
