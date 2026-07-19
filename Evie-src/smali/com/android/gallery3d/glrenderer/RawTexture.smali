.class public Lcom/android/gallery3d/glrenderer/RawTexture;
.super Lcom/android/gallery3d/glrenderer/BasicTexture;
.source "RawTexture.java"


# instance fields
.field private mIsFlipped:Z

.field private final mOpaque:Z


# virtual methods
.method protected getTarget()I
    .locals 1

    const/16 v0, 0xde1

    return v0
.end method

.method public isFlippedVertically()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/RawTexture;->mIsFlipped:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/RawTexture;->mOpaque:Z

    return v0
.end method

.method protected onBind(Lcom/android/gallery3d/glrenderer/GLCanvas;)Z
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/RawTexture;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "RawTexture"

    const-string v0, "lost the content due to context change"

    .line 60
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public yield()V
    .locals 0

    return-void
.end method
