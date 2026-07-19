.class public Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide;
.super Lcom/voxel/simplesearchlauncher/search/view/TextSlide;
.source "GenericNoFeedbackSlide.java"


# instance fields
.field private mSearch:Lcom/evie/search/SearchPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/evie/search/SearchPresenter;)V
    .locals 2

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 20
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide;->mSearch:Lcom/evie/search/SearchPresenter;

    const p2, 0x7f120037

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 23
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const p2, 0x7f12013d

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide;)Landroid/view/View;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide;)Lcom/evie/search/SearchPresenter;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide;->mSearch:Lcom/evie/search/SearchPresenter;

    return-object p0
.end method


# virtual methods
.method public getSlideEnteringAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;
    .locals 1

    .line 28
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/search/view/TextSlide;->getSlideEnteringAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 30
    new-instance v0, Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide$1;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide$1;-><init>(Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method
