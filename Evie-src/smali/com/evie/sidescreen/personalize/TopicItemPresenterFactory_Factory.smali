.class public final Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory_Factory;
.super Ljava/lang/Object;
.source "TopicItemPresenterFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final analyticsModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;"
        }
    .end annotation
.end field

.field private final followButtonHandlerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final onboardingModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory_Factory;->onboardingModeProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory_Factory;->followButtonHandlerFactoryProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p4, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)",
            "Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory_Factory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;
    .locals 5

    .line 35
    new-instance v0, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory_Factory;->onboardingModeProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory_Factory;->followButtonHandlerFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory_Factory;->get()Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;

    move-result-object v0

    return-object v0
.end method
