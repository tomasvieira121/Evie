.class public Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;
.super Lcom/evie/sidescreen/prompts/PromptsPresenter;
.source "AnnouncementPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/prompts/PromptsPresenter<",
        "Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAnnouncement:Lcom/evie/models/announcement/data/Announcement;

.field private final mPromptStoreModel:Lcom/evie/models/PromptStoreModel;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/models/PromptStoreModel;Lcom/evie/models/announcement/data/Announcement;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/prompts/PromptsPresenter;-><init>(Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    .line 28
    iput-object p2, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mPromptStoreModel:Lcom/evie/models/PromptStoreModel;

    .line 29
    iput-object p3, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mAnnouncement:Lcom/evie/models/announcement/data/Announcement;

    return-void
.end method

.method private bindActionButton()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mAnnouncement:Lcom/evie/models/announcement/data/Announcement;

    invoke-virtual {v0}, Lcom/evie/models/announcement/data/Announcement;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;

    iget-object v1, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mAnnouncement:Lcom/evie/models/announcement/data/Announcement;

    invoke-virtual {v1}, Lcom/evie/models/announcement/data/Announcement;->getActionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->showActionButton(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->hideActionButton()V

    :goto_0
    return-void
.end method

.method private bindContent()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mAnnouncement:Lcom/evie/models/announcement/data/Announcement;

    if-eqz v0, :cond_3

    .line 51
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;

    iget-object v1, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mAnnouncement:Lcom/evie/models/announcement/data/Announcement;

    invoke-virtual {v1}, Lcom/evie/models/announcement/data/Announcement;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->showTitle(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;

    iget-object v1, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mAnnouncement:Lcom/evie/models/announcement/data/Announcement;

    invoke-virtual {v1}, Lcom/evie/models/announcement/data/Announcement;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->showDescription(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->bindImage()V

    .line 55
    invoke-direct {p0}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->bindDismissButton()V

    .line 56
    invoke-direct {p0}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->bindActionButton()V

    .line 58
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mAnnouncement:Lcom/evie/models/announcement/data/Announcement;

    invoke-virtual {v0}, Lcom/evie/models/announcement/data/Announcement;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mAnnouncement:Lcom/evie/models/announcement/data/Announcement;

    invoke-virtual {v0}, Lcom/evie/models/announcement/data/Announcement;->hasDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->showRailHori()V

    .line 60
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->showRailVert()V

    goto :goto_1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mAnnouncement:Lcom/evie/models/announcement/data/Announcement;

    invoke-virtual {v0}, Lcom/evie/models/announcement/data/Announcement;->hasAction()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mAnnouncement:Lcom/evie/models/announcement/data/Announcement;

    invoke-virtual {v0}, Lcom/evie/models/announcement/data/Announcement;->hasDismiss()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->hideRailVert()V

    .line 65
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->hideRailHori()V

    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->hideRailVert()V

    :cond_3
    :goto_1
    return-void
.end method

.method private bindDismissButton()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mAnnouncement:Lcom/evie/models/announcement/data/Announcement;

    invoke-virtual {v0}, Lcom/evie/models/announcement/data/Announcement;->hasDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;

    iget-object v1, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mAnnouncement:Lcom/evie/models/announcement/data/Announcement;

    invoke-virtual {v1}, Lcom/evie/models/announcement/data/Announcement;->getDismissText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->showDismissButton(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->hideDismissButton()V

    :goto_0
    return-void
.end method

.method private bindImage()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mAnnouncement:Lcom/evie/models/announcement/data/Announcement;

    invoke-virtual {v0}, Lcom/evie/models/announcement/data/Announcement;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;

    iget-object v1, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mAnnouncement:Lcom/evie/models/announcement/data/Announcement;

    invoke-virtual {v1}, Lcom/evie/models/announcement/data/Announcement;->getImageURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->showImage(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->hideImage()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;
    .locals 1

    .line 35
    new-instance v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getTrackableAttributes()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "screen_subtype"

    const-string v2, "announcement"

    .line 107
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screen_type"

    const-string v2, "side_screen"

    .line 108
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_announcement"

    .line 109
    iget-object v2, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mAnnouncement:Lcom/evie/models/announcement/data/Announcement;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 40
    sget v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->ID:I

    return v0
.end method

.method public onActionClick(Landroid/view/View;)V
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->getTrackableAttributes()Ljava/util/Map;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_tap"

    invoke-virtual {v0, v1, p1}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->onBindViewHolder(Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->bindContent()V

    return-void
.end method

.method public onDismissClick(Landroid/view/View;)V
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->getTrackableAttributes()Ljava/util/Map;

    move-result-object p1

    const-string v0, "item_type"

    const-string v1, "dismiss"

    .line 92
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_tap"

    invoke-virtual {v0, v1, p1}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 95
    iget-object p1, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementPresenter;->mPromptStoreModel:Lcom/evie/models/PromptStoreModel;

    invoke-virtual {p1}, Lcom/evie/models/PromptStoreModel;->markAnnouncementOld()V

    return-void
.end method
