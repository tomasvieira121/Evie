.class public final Lcom/evie/sidescreen/personalize/TopicsListPresenterFactory;
.super Ljava/lang/Object;
.source "TopicsListPresenterFactory.java"


# instance fields
.field private final topicItemPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final topicsModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicsModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    invoke-static {p1, v0}, Lcom/evie/sidescreen/personalize/TopicsListPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenterFactory;->topicsModelProvider:Ljavax/inject/Provider;

    const/4 p1, 0x2

    .line 24
    invoke-static {p2, p1}, Lcom/evie/sidescreen/personalize/TopicsListPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenterFactory;->topicItemPresenterFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private static checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@AutoFactory method argument is null but is not marked @Nullable. Argument index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public create(Lcom/evie/models/topics/data/ListTopicsRequestOptions;ZLcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;)Lcom/evie/sidescreen/personalize/TopicsListPresenter;
    .locals 8

    .line 32
    new-instance v7, Lcom/evie/sidescreen/personalize/TopicsListPresenter;

    const/4 v0, 0x1

    .line 33
    invoke-static {p1, v0}, Lcom/evie/sidescreen/personalize/TopicsListPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/evie/models/topics/data/ListTopicsRequestOptions;

    const/4 p1, 0x3

    .line 35
    invoke-static {p3, p1}, Lcom/evie/sidescreen/personalize/TopicsListPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    iget-object p1, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenterFactory;->topicsModelProvider:Ljavax/inject/Provider;

    .line 36
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x4

    invoke-static {p1, p3}, Lcom/evie/sidescreen/personalize/TopicsListPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/evie/models/topics/TopicsModel;

    iget-object p1, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenterFactory;->topicItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 37
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x5

    invoke-static {p1, p3}, Lcom/evie/sidescreen/personalize/TopicsListPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;

    const/4 p1, 0x6

    .line 38
    invoke-static {p4, p1}, Lcom/evie/sidescreen/personalize/TopicsListPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;

    move-object v0, v7

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/evie/sidescreen/personalize/TopicsListPresenter;-><init>(Lcom/evie/models/topics/data/ListTopicsRequestOptions;ZLcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/models/topics/TopicsModel;Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;)V

    return-object v7
.end method
