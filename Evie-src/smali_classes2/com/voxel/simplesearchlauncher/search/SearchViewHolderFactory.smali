.class Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;
.super Ljava/lang/Object;
.source "SearchViewHolderFactory.java"

# interfaces
.implements Lcom/evie/search/recyclerview/viewholder/CustomViewHolderFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppflashFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

.field private mFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

.field private mSearch:Lcom/evie/search/SearchPresenter;

.field private mSetDefaultLauncherViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/evie/search/SearchPresenter;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mActivity:Landroid/app/Activity;

    .line 38
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mSearch:Lcom/evie/search/SearchPresenter;

    return-void
.end method


# virtual methods
.method public handlesViewType(I)Z
    .locals 1

    const v0, 0x149c3079

    if-eq p1, v0, :cond_1

    const v0, 0x2f7593c4

    if-eq p1, v0, :cond_1

    const v0, 0x149c307a

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;
    .locals 13

    const v0, 0x2f7593c4

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    const/4 v3, 0x2

    const v4, 0x7f0d0091

    const/4 v5, 0x3

    const/4 v6, 0x1

    packed-switch p2, :pswitch_data_0

    return-object v1

    .line 75
    :pswitch_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mAppflashFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    if-nez p2, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 78
    new-instance v4, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    invoke-direct {v4, p0, p2, v1}, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;-><init>(Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;Landroid/view/View;Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$1;)V

    iput-object v4, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mAppflashFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    .line 80
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mAppflashFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    new-instance v1, Lcom/voxel/simplesearchlauncher/search/view/GenericEnjoySlide;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mAppflashFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    iget-object v7, v7, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    invoke-direct {v1, v4, v7, v6, v5}, Lcom/voxel/simplesearchlauncher/search/view/GenericEnjoySlide;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/view/SlideLayout;II)V

    invoke-virtual {p2, v1, v2}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->addSlide(Lcom/voxel/simplesearchlauncher/view/Slide;I)V

    .line 81
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mAppflashFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    new-instance v1, Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mAppflashFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    iget-object v9, v2, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    iget-object v10, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mSearch:Lcom/evie/search/SearchPresenter;

    iget-object v11, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mActivity:Landroid/app/Activity;

    const/4 v12, 0x2

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/evie/search/SearchPresenter;Landroid/app/Activity;I)V

    invoke-virtual {p2, v1, v6}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->addSlide(Lcom/voxel/simplesearchlauncher/view/Slide;I)V

    .line 82
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mAppflashFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    new-instance v1, Lcom/voxel/simplesearchlauncher/search/view/NoRatingSlide;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mAppflashFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    iget-object v4, v4, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mSearch:Lcom/evie/search/SearchPresenter;

    invoke-direct {v1, v2, v4, v6}, Lcom/voxel/simplesearchlauncher/search/view/NoRatingSlide;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/evie/search/SearchPresenter;)V

    invoke-virtual {p2, v1, v3}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->addSlide(Lcom/voxel/simplesearchlauncher/view/Slide;I)V

    .line 83
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mAppflashFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    new-instance v1, Lcom/voxel/simplesearchlauncher/search/view/AppFlashFeedbackSlide;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mAppflashFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    iget-object v8, v2, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    iget-object v9, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mSearch:Lcom/evie/search/SearchPresenter;

    iget-object v10, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mActivity:Landroid/app/Activity;

    const/4 v11, 0x4

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/voxel/simplesearchlauncher/search/view/AppFlashFeedbackSlide;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/evie/search/SearchPresenter;Landroid/app/Activity;I)V

    invoke-virtual {p2, v1, v5}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->addSlide(Lcom/voxel/simplesearchlauncher/view/Slide;I)V

    .line 84
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mAppflashFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    new-instance v1, Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mAppflashFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mSearch:Lcom/evie/search/SearchPresenter;

    invoke-direct {v1, p1, v2, v3}, Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/evie/search/SearchPresenter;)V

    invoke-virtual {p2, v1, v0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->addSlide(Lcom/voxel/simplesearchlauncher/view/Slide;I)V

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mAppflashFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    return-object p1

    .line 50
    :pswitch_1
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    if-nez p2, :cond_1

    .line 51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 52
    new-instance v4, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    invoke-direct {v4, p0, p2, v1}, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;-><init>(Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;Landroid/view/View;Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$1;)V

    iput-object v4, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    .line 54
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    new-instance v1, Lcom/voxel/simplesearchlauncher/search/view/EnjoySlide;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    iget-object v7, v7, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    invoke-direct {v1, v4, v7, v6, v5}, Lcom/voxel/simplesearchlauncher/search/view/EnjoySlide;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/view/SlideLayout;II)V

    invoke-virtual {p2, v1, v2}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->addSlide(Lcom/voxel/simplesearchlauncher/view/Slide;I)V

    .line 55
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    new-instance v1, Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    iget-object v9, v2, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    iget-object v10, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mSearch:Lcom/evie/search/SearchPresenter;

    iget-object v11, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mActivity:Landroid/app/Activity;

    const/4 v12, 0x2

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/evie/search/SearchPresenter;Landroid/app/Activity;I)V

    invoke-virtual {p2, v1, v6}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->addSlide(Lcom/voxel/simplesearchlauncher/view/Slide;I)V

    .line 56
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    new-instance v1, Lcom/voxel/simplesearchlauncher/search/view/NoRatingSlide;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    iget-object v4, v4, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mSearch:Lcom/evie/search/SearchPresenter;

    invoke-direct {v1, v2, v4, v6}, Lcom/voxel/simplesearchlauncher/search/view/NoRatingSlide;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/evie/search/SearchPresenter;)V

    invoke-virtual {p2, v1, v3}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->addSlide(Lcom/voxel/simplesearchlauncher/view/Slide;I)V

    .line 57
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    new-instance v1, Lcom/voxel/simplesearchlauncher/search/view/FeedbackSlide;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    iget-object v8, v2, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    iget-object v9, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mSearch:Lcom/evie/search/SearchPresenter;

    iget-object v10, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mActivity:Landroid/app/Activity;

    const/4 v11, 0x4

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/voxel/simplesearchlauncher/search/view/FeedbackSlide;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/evie/search/SearchPresenter;Landroid/app/Activity;I)V

    invoke-virtual {p2, v1, v5}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->addSlide(Lcom/voxel/simplesearchlauncher/view/Slide;I)V

    .line 58
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    new-instance v1, Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mSearch:Lcom/evie/search/SearchPresenter;

    invoke-direct {v1, p1, v2, v3}, Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/evie/search/SearchPresenter;)V

    invoke-virtual {p2, v1, v0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->addSlide(Lcom/voxel/simplesearchlauncher/view/Slide;I)V

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mFeedbackViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    return-object p1

    .line 64
    :cond_2
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mSetDefaultLauncherViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    if-nez p2, :cond_3

    .line 65
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d008e

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 66
    new-instance v0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    invoke-direct {v0, p0, p2, v1}, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;-><init>(Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;Landroid/view/View;Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$1;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mSetDefaultLauncherViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    .line 68
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mSetDefaultLauncherViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    new-instance v0, Lcom/voxel/simplesearchlauncher/search/view/SetDefaultLauncherSlide;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mSetDefaultLauncherViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mSearch:Lcom/evie/search/SearchPresenter;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p1, v1, v3, v4}, Lcom/voxel/simplesearchlauncher/search/view/SetDefaultLauncherSlide;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/evie/search/SearchPresenter;Landroid/app/Activity;)V

    invoke-virtual {p2, v0, v2}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->addSlide(Lcom/voxel/simplesearchlauncher/view/Slide;I)V

    .line 71
    :cond_3
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;->mSetDefaultLauncherViewHolder:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x149c3079
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
