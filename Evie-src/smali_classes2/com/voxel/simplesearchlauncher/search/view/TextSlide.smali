.class public Lcom/voxel/simplesearchlauncher/search/view/TextSlide;
.super Lcom/voxel/simplesearchlauncher/view/Slide;
.source "TextSlide.java"


# instance fields
.field protected mInterpolator:Landroid/animation/TimeInterpolator;

.field protected mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0093

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/view/Slide;-><init>(Landroid/view/View;)V

    .line 24
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 30
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->mView:Landroid/view/View;

    const p2, 0x7f0a0109

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/search/view/TextSlide;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/search/view/TextSlide;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/search/view/TextSlide;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/voxel/simplesearchlauncher/search/view/TextSlide;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/voxel/simplesearchlauncher/search/view/TextSlide;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/voxel/simplesearchlauncher/search/view/TextSlide;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public getSlideEnteringAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;
    .locals 2

    .line 40
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->mView:Landroid/view/View;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x190

    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 44
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 45
    new-instance v1, Lcom/voxel/simplesearchlauncher/search/view/TextSlide$1;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/search/view/TextSlide$1;-><init>(Lcom/voxel/simplesearchlauncher/search/view/TextSlide;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 66
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getSlideExitingAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;
    .locals 6

    .line 72
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->mView:Landroid/view/View;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x190

    .line 74
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 76
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotY(F)V

    .line 77
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotX(F)V

    .line 79
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->mView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v1, [F

    fill-array-data v5, :array_1

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 80
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 81
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 83
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->mView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    invoke-static {v4, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 84
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 85
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 87
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 88
    new-instance v3, Lcom/voxel/simplesearchlauncher/search/view/TextSlide$2;

    invoke-direct {v3, p0}, Lcom/voxel/simplesearchlauncher/search/view/TextSlide$2;-><init>(Lcom/voxel/simplesearchlauncher/search/view/TextSlide;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 109
    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 110
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 111
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v2

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
    .end array-data
.end method

.method public onEnteringSlide()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
