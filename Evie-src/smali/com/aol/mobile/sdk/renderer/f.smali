.class public final Lcom/aol/mobile/sdk/renderer/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/aol/mobile/sdk/renderer/i;

.field private final c:Lcom/aol/mobile/sdk/renderer/c;

.field private final d:Lcom/aol/mobile/sdk/renderer/e;

.field private final e:[I

.field private final f:[I

.field private final g:[I

.field private final h:[F

.field private i:Lcom/aol/mobile/sdk/renderer/g;

.field private j:Landroid/graphics/SurfaceTexture;

.field private k:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/renderer/e;Lcom/aol/mobile/sdk/renderer/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/aol/mobile/sdk/renderer/f;->e:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/aol/mobile/sdk/renderer/f;->f:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/f;->g:[I

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/f;->h:[F

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->d:Lcom/aol/mobile/sdk/renderer/e;

    iput-object p2, p0, Lcom/aol/mobile/sdk/renderer/f;->b:Lcom/aol/mobile/sdk/renderer/i;

    new-instance p1, Lcom/aol/mobile/sdk/renderer/c;

    const/high16 p2, 0x42700000    # 60.0f

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-direct {p1, p2, v0, v1}, Lcom/aol/mobile/sdk/renderer/c;-><init>(FFF)V

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->c:Lcom/aol/mobile/sdk/renderer/c;

    new-instance p1, Landroid/os/Handler;

    new-instance p2, Lcom/aol/mobile/sdk/renderer/f$1;

    invoke-direct {p2, p0}, Lcom/aol/mobile/sdk/renderer/f$1;-><init>(Lcom/aol/mobile/sdk/renderer/f;)V

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/aol/mobile/sdk/renderer/f;)Lcom/aol/mobile/sdk/renderer/i;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/renderer/f;->b:Lcom/aol/mobile/sdk/renderer/i;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/f;->j:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/aol/mobile/sdk/renderer/f;->j:Landroid/graphics/SurfaceTexture;

    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/f;->i:Lcom/aol/mobile/sdk/renderer/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/renderer/g;->e()V

    iput-object v1, p0, Lcom/aol/mobile/sdk/renderer/f;->i:Lcom/aol/mobile/sdk/renderer/g;

    :cond_1
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/f;->g:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/f;->e:[I

    array-length v2, v0

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/f;->f:[I

    array-length v2, v0

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/f;->k:Landroid/view/Surface;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/f;->a:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/aol/mobile/sdk/renderer/f;->k:Landroid/view/Surface;

    invoke-static {v0, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-object v1, p0, Lcom/aol/mobile/sdk/renderer/f;->k:Landroid/view/Surface;

    :cond_2
    return-void
.end method

.method public a(DD)V
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/f;->c:Lcom/aol/mobile/sdk/renderer/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aol/mobile/sdk/renderer/c;->a(DD)V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->j:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/f;->i:Lcom/aol/mobile/sdk/renderer/g;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->j:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/f;->h:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->c:Lcom/aol/mobile/sdk/renderer/c;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/renderer/c;->a()[F

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/f;->i:Lcom/aol/mobile/sdk/renderer/g;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/renderer/g;->a()I

    move-result v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/f;->i:Lcom/aol/mobile/sdk/renderer/g;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/renderer/g;->b()I

    move-result v8

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/f;->i:Lcom/aol/mobile/sdk/renderer/g;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/renderer/g;->c()I

    move-result v1

    iget-object v2, p0, Lcom/aol/mobile/sdk/renderer/f;->i:Lcom/aol/mobile/sdk/renderer/g;

    invoke-virtual {v2}, Lcom/aol/mobile/sdk/renderer/g;->d()I

    move-result v2

    iget-object v3, p0, Lcom/aol/mobile/sdk/renderer/f;->d:Lcom/aol/mobile/sdk/renderer/e;

    invoke-interface {v3}, Lcom/aol/mobile/sdk/renderer/e;->f()I

    move-result v7

    iget-object v3, p0, Lcom/aol/mobile/sdk/renderer/f;->d:Lcom/aol/mobile/sdk/renderer/e;

    invoke-interface {v3}, Lcom/aol/mobile/sdk/renderer/e;->g()I

    move-result v9

    const/16 v3, 0x4000

    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    const/4 v3, 0x1

    const/4 v10, 0x0

    invoke-static {v2, v3, v10, p1, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const p1, 0x8d65

    iget-object v2, p0, Lcom/aol/mobile/sdk/renderer/f;->g:[I

    aget v2, v2, v10

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->h:[F

    invoke-static {v1, v3, v10, p1, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->e:[I

    aget p1, p1, v10

    const v11, 0x8892

    invoke-static {v11, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->f:[I

    aget p1, p1, v10

    const v12, 0x8893

    invoke-static {v12, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v8}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v1, v0

    move v5, v7

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    move v2, v8

    move v6, v7

    move v7, v9

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/4 p1, 0x4

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/f;->d:Lcom/aol/mobile/sdk/renderer/e;

    invoke-interface {v1}, Lcom/aol/mobile/sdk/renderer/e;->e()I

    move-result v1

    const/16 v2, 0x1403

    invoke-static {p1, v1, v2, v10}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v8}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v11, v10}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {v12, v10}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->c:Lcom/aol/mobile/sdk/renderer/c;

    invoke-virtual {p1, p2, p3}, Lcom/aol/mobile/sdk/renderer/c;->a(II)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->a:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-static {p1, v0, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    const/16 p1, 0xb71

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    const/4 p1, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p1, p2, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    new-instance p1, Lcom/aol/mobile/sdk/renderer/g;

    invoke-direct {p1}, Lcom/aol/mobile/sdk/renderer/g;-><init>()V

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->i:Lcom/aol/mobile/sdk/renderer/g;

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->g:[I

    array-length p2, p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const p1, 0x84c0

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->g:[I

    aget p1, p1, v0

    const p2, 0x8d65

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const p1, 0x46180400    # 9729.0f

    const/16 v1, 0x2801

    invoke-static {p2, v1, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    invoke-static {p2, v1, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const p1, 0x812f

    const/16 v1, 0x2802

    invoke-static {p2, v1, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    invoke-static {p2, v1, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->e:[I

    array-length p2, p1

    invoke-static {p2, p1, v0}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->f:[I

    array-length p2, p1

    invoke-static {p2, p1, v0}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->e:[I

    aget p1, p1, v0

    const p2, 0x8892

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->d:Lcom/aol/mobile/sdk/renderer/e;

    invoke-interface {p1}, Lcom/aol/mobile/sdk/renderer/e;->c()I

    move-result p1

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/f;->d:Lcom/aol/mobile/sdk/renderer/e;

    invoke-interface {v1}, Lcom/aol/mobile/sdk/renderer/e;->a()Ljava/nio/FloatBuffer;

    move-result-object v1

    const v2, 0x88e4

    invoke-static {p2, p1, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->f:[I

    aget p1, p1, v0

    const p2, 0x8893

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->d:Lcom/aol/mobile/sdk/renderer/e;

    invoke-interface {p1}, Lcom/aol/mobile/sdk/renderer/e;->d()I

    move-result p1

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/f;->d:Lcom/aol/mobile/sdk/renderer/e;

    invoke-interface {v1}, Lcom/aol/mobile/sdk/renderer/e;->b()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-static {p2, p1, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lcom/aol/mobile/sdk/renderer/f;->g:[I

    aget p2, p2, v0

    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->j:Landroid/graphics/SurfaceTexture;

    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lcom/aol/mobile/sdk/renderer/f;->j:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->k:Landroid/view/Surface;

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/f;->a:Landroid/os/Handler;

    iget-object p2, p0, Lcom/aol/mobile/sdk/renderer/f;->k:Landroid/view/Surface;

    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
