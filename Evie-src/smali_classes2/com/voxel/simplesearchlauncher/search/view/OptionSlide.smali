.class public Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;
.super Lcom/voxel/simplesearchlauncher/view/Slide;
.source "OptionSlide.java"


# instance fields
.field protected mInterpolator:Landroid/animation/TimeInterpolator;

.field private mNegativeBackground:Landroid/graphics/drawable/GradientDrawable;

.field protected mNegativeButton:Landroid/widget/Button;

.field private mPositiveBackground:Landroid/graphics/drawable/GradientDrawable;

.field protected mPositiveButton:Landroid/widget/Button;

.field protected mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0092

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/view/Slide;-><init>(Landroid/view/View;)V

    .line 26
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 37
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mView:Landroid/view/View;

    const v0, 0x7f0a0109

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mTextView:Landroid/widget/TextView;

    .line 38
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mView:Landroid/view/View;

    const v0, 0x7f0a0107

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mPositiveButton:Landroid/widget/Button;

    .line 39
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mView:Landroid/view/View;

    const v0, 0x7f0a0106

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mNegativeButton:Landroid/widget/Button;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0800b6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mPositiveBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 42
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mPositiveBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 43
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mPositiveButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mPositiveBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 44
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mPositiveButton:Landroid/widget/Button;

    new-instance v0, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$OptionSlide$6GBJhmhyqEw0X58j6G8LrwAN7eQ;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$OptionSlide$6GBJhmhyqEw0X58j6G8LrwAN7eQ;-><init>(Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0800b5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mNegativeBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 53
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mNegativeBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 54
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mNegativeButton:Landroid/widget/Button;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mNegativeBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 55
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mNegativeButton:Landroid/widget/Button;

    new-instance p2, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$OptionSlide$PP3YLkAILiqePuYsbcsnut60vyY;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$OptionSlide$PP3YLkAILiqePuYsbcsnut60vyY;-><init>(Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;)Landroid/view/View;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;)Landroid/view/View;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;)Landroid/view/View;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;)Landroid/view/View;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;)Landroid/view/View;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;)Landroid/view/View;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p5, p9, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mPositiveBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p5, p9, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mNegativeBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-void
.end method


# virtual methods
.method public getSlideEnteringAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;
    .locals 2

    .line 71
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mView:Landroid/view/View;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 72
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x190

    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 75
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 76
    new-instance v1, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide$1;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide$1;-><init>(Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 97
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

    .line 103
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mView:Landroid/view/View;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x190

    .line 105
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 107
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotY(F)V

    .line 108
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotX(F)V

    .line 110
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v1, [F

    fill-array-data v5, :array_1

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 111
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 112
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 114
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    invoke-static {v4, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 115
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 116
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 118
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 119
    new-instance v3, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide$2;

    invoke-direct {v3, p0}, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide$2;-><init>(Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 140
    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 141
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 142
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
        0x3f59999a    # 0.85f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
    .end array-data
.end method

.method public onEnteringSlide()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
