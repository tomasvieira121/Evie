.class public final Lcom/aol/mobile/sdk/renderer/k;
.super Landroid/opengl/GLSurfaceView;


# instance fields
.field private final a:Lcom/aol/mobile/sdk/renderer/f;

.field private b:D

.field private c:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aol/mobile/sdk/renderer/e;Lcom/aol/mobile/sdk/renderer/i;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/renderer/k;->setEGLContextClientVersion(I)V

    new-instance p1, Lcom/aol/mobile/sdk/renderer/f;

    invoke-direct {p1, p2, p3}, Lcom/aol/mobile/sdk/renderer/f;-><init>(Lcom/aol/mobile/sdk/renderer/e;Lcom/aol/mobile/sdk/renderer/i;)V

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/k;->a:Lcom/aol/mobile/sdk/renderer/f;

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/renderer/k;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/renderer/k;->setRenderMode(I)V

    return-void
.end method

.method static synthetic a(Lcom/aol/mobile/sdk/renderer/k;)Lcom/aol/mobile/sdk/renderer/f;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/renderer/k;->a:Lcom/aol/mobile/sdk/renderer/f;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Lcom/aol/mobile/sdk/renderer/k$1;

    invoke-direct {v0, p0}, Lcom/aol/mobile/sdk/renderer/k$1;-><init>(Lcom/aol/mobile/sdk/renderer/k;)V

    invoke-virtual {p0, v0}, Lcom/aol/mobile/sdk/renderer/k;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(DD)V
    .locals 9

    iget-wide v0, p0, Lcom/aol/mobile/sdk/renderer/k;->b:D

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    iget-wide v0, p0, Lcom/aol/mobile/sdk/renderer/k;->c:D

    cmpl-double v2, p3, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lcom/aol/mobile/sdk/renderer/k;->b:D

    iput-wide p3, p0, Lcom/aol/mobile/sdk/renderer/k;->c:D

    new-instance v0, Lcom/aol/mobile/sdk/renderer/k$2;

    move-object v3, v0

    move-object v4, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/aol/mobile/sdk/renderer/k$2;-><init>(Lcom/aol/mobile/sdk/renderer/k;DD)V

    invoke-virtual {p0, v0}, Lcom/aol/mobile/sdk/renderer/k;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method
