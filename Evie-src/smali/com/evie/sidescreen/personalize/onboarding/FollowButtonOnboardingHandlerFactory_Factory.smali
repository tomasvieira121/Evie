.class public final Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory_Factory;
.super Ljava/lang/Object;
.source "FollowButtonOnboardingHandlerFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory;",
        ">;"
    }
.end annotation


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

.field private final sharedPreferencesModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory_Factory;->sharedPreferencesModelProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)",
            "Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory_Factory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory_Factory;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory;
    .locals 3

    .line 28
    new-instance v0, Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory_Factory;->sharedPreferencesModelProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2}, Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory_Factory;->get()Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory;

    move-result-object v0

    return-object v0
.end method
