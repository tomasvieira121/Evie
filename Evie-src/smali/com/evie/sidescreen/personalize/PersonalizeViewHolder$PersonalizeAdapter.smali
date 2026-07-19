.class Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "PersonalizeViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonalizeAdapter"
.end annotation


# instance fields
.field invalidated:Z

.field mBlackListPresenter:Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;

.field mBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schema/Id;",
            ">;"
        }
    .end annotation
.end field

.field mFollows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schema/Id;",
            ">;"
        }
    .end annotation
.end field

.field mPageData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evie/models/topics/data/PersonalizePage;",
            ">;"
        }
    .end annotation
.end field

.field mPagePresenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;",
            ">;"
        }
    .end annotation
.end field

.field mPageViewHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/personalize/TopicsListViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mPrimaryItem:Ljava/lang/Object;

.field final synthetic this$0:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;


# direct methods
.method private constructor <init>(Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->this$0:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mPrimaryItem:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 121
    iput-boolean p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->invalidated:Z

    .line 122
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mPagePresenters:Ljava/util/List;

    .line 123
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mPageViewHolders:Ljava/util/List;

    .line 124
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mPageData:Ljava/util/Map;

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mFollows:Ljava/util/List;

    .line 126
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mBlocks:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$1;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;-><init>(Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 161
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mPagePresenters:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 135
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mPagePresenters:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 144
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;

    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mPageViewHolders:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    iget-object v0, v0, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 151
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mPageViewHolders:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    iget-object p1, p1, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->itemView:Landroid/view/View;

    return-object p1
.end method

.method public invalidateOtherPages(Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mPagePresenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;

    if-eq v1, p1, :cond_0

    .line 181
    invoke-virtual {v1}, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->clear()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->invalidated:Z

    .line 185
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mBlackListPresenter:Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;

    return-void
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 166
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 168
    iget-boolean p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->invalidated:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mPrimaryItem:Ljava/lang/Object;

    if-eq p1, p3, :cond_0

    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mPagePresenters:Ljava/util/List;

    .line 170
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mPagePresenters:Ljava/util/List;

    .line 171
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mBlackListPresenter:Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    .line 172
    iput-boolean p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->invalidated:Z

    .line 173
    iget-object p2, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->this$0:Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;

    invoke-static {p2}, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->access$100(Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;)Lcom/evie/sidescreen/mvp/ItemPresenter;

    move-result-object p2

    check-cast p2, Lcom/evie/sidescreen/personalize/PersonalizePresenter;

    invoke-virtual {p2, p1}, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->refresh(Z)V

    .line 175
    :cond_0
    iput-object p3, p0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder$PersonalizeAdapter;->mPrimaryItem:Ljava/lang/Object;

    return-void
.end method
