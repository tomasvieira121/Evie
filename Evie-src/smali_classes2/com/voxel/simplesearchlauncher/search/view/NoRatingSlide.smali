.class public Lcom/voxel/simplesearchlauncher/search/view/NoRatingSlide;
.super Lcom/voxel/simplesearchlauncher/search/view/TextSlide;
.source "NoRatingSlide.java"


# instance fields
.field private mSearch:Lcom/evie/search/SearchPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/evie/search/SearchPresenter;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 19
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/search/view/NoRatingSlide;->mSearch:Lcom/evie/search/SearchPresenter;

    .line 21
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/NoRatingSlide;->mTextView:Landroid/widget/TextView;

    const p2, 0x7f120140

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/search/view/NoRatingSlide;)Landroid/view/View;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/view/NoRatingSlide;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/search/view/NoRatingSlide;)Lcom/evie/search/SearchPresenter;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/view/NoRatingSlide;->mSearch:Lcom/evie/search/SearchPresenter;

    return-object p0
.end method


# virtual methods
.method public getSlideEnteringAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->getSlideEnteringAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 28
    new-instance v0, Lcom/voxel/simplesearchlauncher/search/view/NoRatingSlide$1;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/search/view/NoRatingSlide$1;-><init>(Lcom/voxel/simplesearchlauncher/search/view/NoRatingSlide;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method
