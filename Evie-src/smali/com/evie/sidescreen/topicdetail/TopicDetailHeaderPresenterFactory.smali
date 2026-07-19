.class public final Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;
.super Ljava/lang/Object;
.source "TopicDetailHeaderPresenterFactory.java"


# instance fields
.field private final followButtonHandlerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final menuHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final topicPersonalizationStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicPersonalizationStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicPersonalizationStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    invoke-static {p1, v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;->followButtonHandlerFactoryProvider:Ljavax/inject/Provider;

    const/4 p1, 0x2

    .line 29
    invoke-static {p2, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;->topicPersonalizationStoreProvider:Ljavax/inject/Provider;

    const/4 p1, 0x3

    .line 30
    invoke-static {p3, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;->menuHelperProvider:Ljavax/inject/Provider;

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

    .line 50
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
.method public create(Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/personalize/FollowState;Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter$OnBackListener;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;
    .locals 9

    .line 38
    new-instance v8, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;

    const/4 v0, 0x1

    .line 39
    invoke-static {p1, v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/schema/evie/topics/Topic;

    const/4 p1, 0x2

    .line 40
    invoke-static {p2, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/evie/sidescreen/personalize/FollowState;

    const/4 p1, 0x3

    .line 41
    invoke-static {p3, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter$OnBackListener;

    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;->followButtonHandlerFactoryProvider:Ljavax/inject/Provider;

    .line 42
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;

    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;->topicPersonalizationStoreProvider:Ljavax/inject/Provider;

    .line 43
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/evie/models/topics/TopicPersonalizationStore;

    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;->menuHelperProvider:Ljavax/inject/Provider;

    .line 44
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p1, p2}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;

    const/4 p1, 0x7

    .line 45
    invoke-static {p4, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;-><init>(Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/personalize/FollowState;Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter$OnBackListener;Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;Lcom/evie/models/topics/TopicPersonalizationStore;Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    return-object v8
.end method
