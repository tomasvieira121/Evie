.class public final Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;
.super Ljava/lang/Object;
.source "FollowButtonHandlerFactory.java"


# instance fields
.field private final analyticsModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
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
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    invoke-static {p1, v0}, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;->topicsModelProvider:Ljavax/inject/Provider;

    const/4 p1, 0x2

    .line 23
    invoke-static {p2, p1}, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;->analyticsModelProvider:Ljavax/inject/Provider;

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

    .line 36
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
.method public create(Lcom/evie/sidescreen/personalize/FollowState;Lio/reactivex/disposables/CompositeDisposable;)Lcom/evie/sidescreen/personalize/FollowButtonHandler;
    .locals 4

    .line 27
    new-instance v0, Lcom/evie/sidescreen/personalize/FollowButtonHandler;

    const/4 v1, 0x1

    .line 28
    invoke-static {p1, v1}, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/personalize/FollowState;

    const/4 v1, 0x2

    .line 29
    invoke-static {p2, v1}, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;->topicsModelProvider:Ljavax/inject/Provider;

    .line 30
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/models/topics/TopicsModel;

    iget-object v2, p0, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 31
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/sidescreen/analytics/AnalyticsModel;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/evie/sidescreen/personalize/FollowButtonHandler;-><init>(Lcom/evie/sidescreen/personalize/FollowState;Lio/reactivex/disposables/CompositeDisposable;Lcom/evie/models/topics/TopicsModel;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    return-object v0
.end method
