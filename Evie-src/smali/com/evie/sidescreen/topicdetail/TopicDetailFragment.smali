.class public Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;
.super Landroidx/fragment/app/Fragment;
.source "TopicDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/topicdetail/TopicDetailFragment$TopicDetailIdProvider;
    }
.end annotation


# instance fields
.field private mTopicDetailPresenter:Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;

.field mTopicDetailPresenterFactory:Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;

.field private mTopicDetailViewHolder:Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;

.field mTopicDetailViewHolderFactory:Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolderFactory;

.field private mTopicId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$0(Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;)V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    .line 31
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 34
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/evie/sidescreen/topicdetail/TopicDetailFragment$TopicDetailIdProvider;

    invoke-interface {v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailFragment$TopicDetailIdProvider;->getTopicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;->mTopicId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 36
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 43
    sget p3, Lcom/evie/sidescreen/R$layout;->ss_topic_detail_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 60
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 61
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;->mTopicDetailPresenter:Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;->unbindViewHolder()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;->mTopicDetailViewHolder:Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->unbindPresenter()V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 49
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 51
    iget-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;->mTopicDetailPresenterFactory:Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;

    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;->mTopicId:Ljava/lang/String;

    new-instance v1, Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailFragment$hrSNnlNTS_ZOI15vf7JHICBFdHI;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailFragment$hrSNnlNTS_ZOI15vf7JHICBFdHI;-><init>(Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;)V

    invoke-virtual {p2, v0, v1}, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;->create(Ljava/lang/String;Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter$OnBackListener;)Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;->mTopicDetailPresenter:Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;

    .line 52
    iget-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;->mTopicDetailViewHolderFactory:Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolderFactory;

    invoke-virtual {p2, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolderFactory;->create(Landroid/view/View;)Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;->mTopicDetailViewHolder:Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;

    .line 54
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;->mTopicDetailViewHolder:Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;

    iget-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;->mTopicDetailPresenter:Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->bindPresenter(Lcom/evie/sidescreen/mvp/ItemPresenter;)V

    .line 55
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;->mTopicDetailPresenter:Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;

    iget-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;->mTopicDetailViewHolder:Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;->bindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V

    return-void
.end method
