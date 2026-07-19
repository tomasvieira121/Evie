.class public final Lcom/evie/sidescreen/dagger/FactoryModule_FollowButtonHandlerFactoryFactory;
.super Ljava/lang/Object;
.source "FactoryModule_FollowButtonHandlerFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final followButtonHandlerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final followButtonOnboardingHandlerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final personalizeOnboardingModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/FactoryModule_FollowButtonHandlerFactoryFactory;->personalizeOnboardingModeProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/evie/sidescreen/dagger/FactoryModule_FollowButtonHandlerFactoryFactory;->followButtonHandlerFactoryProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/evie/sidescreen/dagger/FactoryModule_FollowButtonHandlerFactoryFactory;->followButtonOnboardingHandlerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/FactoryModule_FollowButtonHandlerFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/FactoryModule_FollowButtonHandlerFactoryFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/evie/sidescreen/dagger/FactoryModule_FollowButtonHandlerFactoryFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/evie/sidescreen/dagger/FactoryModule_FollowButtonHandlerFactoryFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyFollowButtonHandlerFactory(ZLcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory;)Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;
    .locals 0

    .line 57
    invoke-static {p0, p1, p2}, Lcom/evie/sidescreen/dagger/FactoryModule;->followButtonHandlerFactory(ZLcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory;)Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 56
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/FactoryModule_FollowButtonHandlerFactoryFactory;->personalizeOnboardingModeProvider:Ljavax/inject/Provider;

    .line 37
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/FactoryModule_FollowButtonHandlerFactoryFactory;->followButtonHandlerFactoryProvider:Ljavax/inject/Provider;

    .line 38
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/FactoryModule_FollowButtonHandlerFactoryFactory;->followButtonOnboardingHandlerFactoryProvider:Ljavax/inject/Provider;

    .line 39
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory;

    .line 36
    invoke-static {v0, v1, v2}, Lcom/evie/sidescreen/dagger/FactoryModule_FollowButtonHandlerFactoryFactory;->proxyFollowButtonHandlerFactory(ZLcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory;)Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/FactoryModule_FollowButtonHandlerFactoryFactory;->get()Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;

    move-result-object v0

    return-object v0
.end method
