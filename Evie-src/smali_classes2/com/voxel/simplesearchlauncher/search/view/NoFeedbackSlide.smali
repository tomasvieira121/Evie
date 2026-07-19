.class public Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide;
.super Lcom/voxel/simplesearchlauncher/search/view/TextSlide;
.source "NoFeedbackSlide.java"


# instance fields
.field private mSearch:Lcom/evie/search/SearchPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/evie/search/SearchPresenter;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 20
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide;->mSearch:Lcom/evie/search/SearchPresenter;

    .line 22
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide;->mTextView:Landroid/widget/TextView;

    const p2, 0x7f12013f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide;)Landroid/view/View;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide;)Lcom/evie/search/SearchPresenter;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide;->mSearch:Lcom/evie/search/SearchPresenter;

    return-object p0
.end method


# virtual methods
.method public getSlideEnteringAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;
    .locals 1

    .line 27
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->getSlideEnteringAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 29
    new-instance v0, Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide$1;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide$1;-><init>(Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method
