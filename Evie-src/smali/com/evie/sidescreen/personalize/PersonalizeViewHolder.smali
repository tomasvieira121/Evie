.class public Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "PersonalizeViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/personalize/PersonalizePresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field private mAdapter:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;

.field mDivider:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLoading:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTabLayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_personalize_fragment:I

    sput v0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    .line 39
    new-instance p1, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;-><init>(Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$1;)V

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mAdapter:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;

    .line 40
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mAdapter:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;)Lcom/evie/sidescreen/mvp/ItemPresenter;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    return-object p0
.end method


# virtual methods
.method public dataSetChanged()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mAdapter:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->invalidated:Z

    .line 115
    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public hideLoading()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mLoading:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public invalidateOtherPages(Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mAdapter:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->invalidateOtherPages(Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;)V

    return-void
.end method

.method public setBlocks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schema/Id;",
            ">;)V"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mAdapter:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;

    iget-object v0, v0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mAdapter:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;

    iget-object v0, v0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mBlocks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setFollows(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schema/Id;",
            ">;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mAdapter:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;

    iget-object v0, v0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mFollows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mAdapter:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;

    iget-object v0, v0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mFollows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setPageData(Lcom/evie/models/topics/data/PersonalizePage;)V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mAdapter:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;

    iget-object v0, v0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mBlackListPresenter:Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/evie/models/topics/data/PersonalizePage;->getLabel()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mAdapter:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;

    iget-object v1, v1, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mBlackListPresenter:Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;

    invoke-virtual {v1}, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mAdapter:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;

    iget-object v0, v0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mPageData:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/evie/models/topics/data/PersonalizePage;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mAdapter:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;

    iget-object v0, v0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mPagePresenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;

    .line 93
    invoke-virtual {v1}, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/evie/models/topics/data/PersonalizePage;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mAdapter:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;

    iget-object v2, v2, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mFollows:Ljava/util/List;

    iget-object v3, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mAdapter:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;

    iget-object v3, v3, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mBlocks:Ljava/util/List;

    invoke-virtual {v1, p1, v2, v3}, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->load(Lcom/evie/models/topics/data/PersonalizePage;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setTabs(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;",
            ">;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mAdapter:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;

    iget-object v0, v0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mPagePresenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mAdapter:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;

    iget-object v0, v0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mPagePresenters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mAdapter:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;

    iget-object v0, v0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mPageViewHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;

    .line 67
    iget-object v2, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->getLayoutResId()I

    move-result v3

    iget-object v4, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    move-result-object v1

    .line 70
    invoke-virtual {v1, v0}, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->bindPresenter(Lcom/evie/sidescreen/mvp/ItemPresenter;)V

    .line 71
    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->bindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V

    .line 72
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mAdapter:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;

    iget-object v0, v0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mPageViewHolders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mAdapter:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;

    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->notifyDataSetChanged()V

    .line 76
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    .line 77
    :goto_1
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result p1

    if-ge v1, p1, :cond_2

    .line 78
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 80
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_tab:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public showError()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/evie/sidescreen/R$string;->ss_generic_loading_error_message:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->mLoading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
