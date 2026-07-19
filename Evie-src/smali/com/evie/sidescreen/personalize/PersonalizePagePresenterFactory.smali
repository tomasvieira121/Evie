.class public final Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory;
.super Ljava/lang/Object;
.source "PersonalizePagePresenterFactory.java"


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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    invoke-static {p1, v0}, Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory;->topicItemPresenterFactoryProvider:Ljavax/inject/Provider;

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

    .line 32
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
.method public create(Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/personalize/PersonalizePresenter;Ljava/lang/String;)Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;
    .locals 3

    .line 23
    new-instance v0, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;

    const/4 v1, 0x1

    .line 24
    invoke-static {p1, v1}, Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    const/4 v1, 0x2

    .line 25
    invoke-static {p2, v1}, Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/sidescreen/personalize/PersonalizePresenter;

    const/4 v1, 0x3

    .line 26
    invoke-static {p3, v1}, Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory;->topicItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 27
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;-><init>(Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/personalize/PersonalizePresenter;Ljava/lang/String;Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;)V

    return-object v0
.end method
