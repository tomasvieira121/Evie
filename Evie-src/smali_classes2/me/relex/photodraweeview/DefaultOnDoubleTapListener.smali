.class public Lme/relex/photodraweeview/DefaultOnDoubleTapListener;
.super Ljava/lang/Object;
.source "DefaultOnDoubleTapListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# instance fields
.field protected mAttacher:Lme/relex/photodraweeview/Attacher;


# direct methods
.method public constructor <init>(Lme/relex/photodraweeview/Attacher;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->setPhotoDraweeViewAttacher(Lme/relex/photodraweeview/Attacher;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 50
    iget-object v0, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    .line 55
    :try_start_0
    invoke-virtual {v0}, Lme/relex/photodraweeview/Attacher;->getScale()F

    move-result v0

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 60
    iget-object v3, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v3}, Lme/relex/photodraweeview/Attacher;->getMediumScale()F

    move-result v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 61
    iget-object v0, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    iget-object v3, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v3}, Lme/relex/photodraweeview/Attacher;->getMediumScale()F

    move-result v3

    invoke-virtual {v0, v3, v2, p1, v1}, Lme/relex/photodraweeview/Attacher;->setScale(FFFZ)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v3, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v3}, Lme/relex/photodraweeview/Attacher;->getMediumScale()F

    move-result v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v3}, Lme/relex/photodraweeview/Attacher;->getMaximumScale()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    .line 63
    iget-object v0, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    iget-object v3, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v3}, Lme/relex/photodraweeview/Attacher;->getMaximumScale()F

    move-result v3

    invoke-virtual {v0, v3, v2, p1, v1}, Lme/relex/photodraweeview/Attacher;->setScale(FFFZ)V

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    iget-object v3, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v3}, Lme/relex/photodraweeview/Attacher;->getMinimumScale()F

    move-result v3

    invoke-virtual {v0, v3, v2, p1, v1}, Lme/relex/photodraweeview/Attacher;->setScale(FFFZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return v1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 19
    iget-object v0, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 22
    :cond_0
    invoke-virtual {v0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 27
    :cond_1
    iget-object v2, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v2}, Lme/relex/photodraweeview/Attacher;->getOnPhotoTapListener()Lme/relex/photodraweeview/OnPhotoTapListener;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 28
    iget-object v2, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v2}, Lme/relex/photodraweeview/Attacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 32
    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 33
    iget p1, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, p1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v4, p1

    .line 34
    iget p1, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, p1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr v5, p1

    .line 35
    iget-object p1, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {p1}, Lme/relex/photodraweeview/Attacher;->getOnPhotoTapListener()Lme/relex/photodraweeview/OnPhotoTapListener;

    move-result-object p1

    invoke-interface {p1, v0, v4, v5}, Lme/relex/photodraweeview/OnPhotoTapListener;->onPhotoTap(Landroid/view/View;FF)V

    return v3

    .line 41
    :cond_2
    iget-object v2, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v2}, Lme/relex/photodraweeview/Attacher;->getOnViewTapListener()Lme/relex/photodraweeview/OnViewTapListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 42
    iget-object v1, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v1}, Lme/relex/photodraweeview/Attacher;->getOnViewTapListener()Lme/relex/photodraweeview/OnViewTapListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v1, v0, v2, p1}, Lme/relex/photodraweeview/OnViewTapListener;->onViewTap(Landroid/view/View;FF)V

    return v3

    :cond_3
    return v1
.end method

.method public setPhotoDraweeViewAttacher(Lme/relex/photodraweeview/Attacher;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    return-void
.end method
