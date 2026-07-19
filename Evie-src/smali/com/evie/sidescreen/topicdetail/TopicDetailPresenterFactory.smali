.class public final Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;
.super Ljava/lang/Object;
.source "TopicDetailPresenterFactory.java"


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final topicDetailHeaderPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 30
    invoke-static {p1, v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;->contextProvider:Ljavax/inject/Provider;

    const/4 p1, 0x2

    .line 31
    invoke-static {p2, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;->topicsModelProvider:Ljavax/inject/Provider;

    const/4 p1, 0x3

    .line 33
    invoke-static {p3, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;->topicDetailHeaderPresenterFactoryProvider:Ljavax/inject/Provider;

    const/4 p1, 0x4

    .line 35
    invoke-static {p4, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

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

    .line 51
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
.method public create(Ljava/lang/String;Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter$OnBackListener;)Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;
    .locals 8

    .line 40
    new-instance v7, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;

    const/4 v0, 0x1

    .line 41
    invoke-static {p1, v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/4 p1, 0x2

    .line 42
    invoke-static {p2, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter$OnBackListener;

    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;->contextProvider:Ljavax/inject/Provider;

    .line 43
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/content/Context;

    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;->topicsModelProvider:Ljavax/inject/Provider;

    .line 44
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/evie/models/topics/TopicsModel;

    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;->topicDetailHeaderPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 45
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;

    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 46
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p1, p2}, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;-><init>(Ljava/lang/String;Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter$OnBackListener;Landroid/content/Context;Lcom/evie/models/topics/TopicsModel;Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;)V

    return-object v7
.end method
