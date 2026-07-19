.class public Lcom/voxel/simplesearchlauncher/view/SlideLayout;
.super Landroid/widget/FrameLayout;
.source "SlideLayout.java"


# instance fields
.field isAnimating:Z

.field mCurrentChild:I

.field mSlides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/view/Slide;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->mSlides:Ljava/util/List;

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->isAnimating:Z

    .line 27
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->mCurrentChild:I

    return-void
.end method


# virtual methods
.method public addSlide(Lcom/voxel/simplesearchlauncher/view/Slide;I)V
    .locals 3

    .line 150
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/Slide;->getView()Landroid/view/View;

    move-result-object v0

    .line 151
    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 152
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->mSlides:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 154
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    invoke-virtual {p1, p0}, Lcom/voxel/simplesearchlauncher/view/Slide;->getSlideEnteringAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 159
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-ltz p2, :cond_1

    .line 162
    iget p1, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->mCurrentChild:I

    if-lt p1, p2, :cond_1

    add-int/2addr p1, v2

    .line 163
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->setDisplayedChild(I)V

    :cond_1
    return-void
.end method

.method public getBaseline()I
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getBaseline()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .line 226
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->mCurrentChild:I

    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayedChild()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->mCurrentChild:I

    return v0
.end method

.method public getSlide(I)Lcom/voxel/simplesearchlauncher/view/Slide;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->mSlides:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/view/Slide;

    return-object p1
.end method

.method public indexOfSlide(Lcom/voxel/simplesearchlauncher/view/Slide;)I
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->mSlides:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isAnimating()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->isAnimating:Z

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 236
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 237
    const-class v0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 242
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 243
    const-class v0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .line 173
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 174
    iput v0, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->mCurrentChild:I

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 179
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 181
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->removeViewAt(I)V

    .line 182
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->mSlides:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2

    .line 188
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 189
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 191
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->mCurrentChild:I

    goto :goto_0

    .line 192
    :cond_0
    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->mCurrentChild:I

    if-lt v1, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 194
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->setDisplayedChild(I)V

    goto :goto_0

    :cond_1
    if-ne v1, p1, :cond_2

    .line 197
    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->setDisplayedChild(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViews(II)V
    .locals 1

    .line 206
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViews(II)V

    .line 207
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 208
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->mCurrentChild:I

    goto :goto_0

    .line 209
    :cond_0
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->mCurrentChild:I

    if-lt v0, p1, :cond_1

    add-int/2addr p1, p2

    if-ge v0, p1, :cond_1

    .line 211
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->setDisplayedChild(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0

    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->removeViews(II)V

    return-void
.end method

.method public setDisplayedChild(I)V
    .locals 8

    .line 54
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    .line 62
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v1

    move v6, p1

    goto :goto_0

    :cond_2
    move v6, p1

    .line 67
    :goto_0
    iget p1, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->mCurrentChild:I

    if-ne p1, v6, :cond_3

    return-void

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->mSlides:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/voxel/simplesearchlauncher/view/Slide;

    .line 71
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->mSlides:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/voxel/simplesearchlauncher/view/Slide;

    .line 73
    invoke-virtual {v4, p0}, Lcom/voxel/simplesearchlauncher/view/Slide;->getSlideExitingAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 74
    invoke-virtual {v5, p0}, Lcom/voxel/simplesearchlauncher/view/Slide;->getSlideEnteringAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;

    move-result-object v7

    .line 76
    new-instance v0, Lcom/voxel/simplesearchlauncher/view/SlideLayout$1;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout$1;-><init>(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)V

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 97
    new-instance v0, Lcom/voxel/simplesearchlauncher/view/SlideLayout$2;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/voxel/simplesearchlauncher/view/SlideLayout$2;-><init>(Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/voxel/simplesearchlauncher/view/Slide;Lcom/voxel/simplesearchlauncher/view/Slide;ILandroid/animation/AnimatorSet;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 123
    iput-boolean v1, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->isAnimating:Z

    .line 124
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public showNext()V
    .locals 1

    .line 138
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->mCurrentChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->setDisplayedChild(I)V

    return-void
.end method
