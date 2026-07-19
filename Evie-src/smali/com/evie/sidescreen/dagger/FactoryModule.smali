.class public abstract Lcom/evie/sidescreen/dagger/FactoryModule;
.super Ljava/lang/Object;
.source "FactoryModule.java"


# direct methods
.method static followButtonHandlerFactory(ZLcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory;)Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;
    .locals 0

    if-eqz p0, :cond_0

    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/evie/sidescreen/dagger/-$$Lambda$NLAyO8750DOdJ8fTru8BkOQEfdE;

    invoke-direct {p0, p2}, Lcom/evie/sidescreen/dagger/-$$Lambda$NLAyO8750DOdJ8fTru8BkOQEfdE;-><init>(Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory;)V

    return-object p0

    .line 25
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/evie/sidescreen/dagger/-$$Lambda$ZXN-awXgi6Y9CEnl9dbizMbgGoc;

    invoke-direct {p0, p1}, Lcom/evie/sidescreen/dagger/-$$Lambda$ZXN-awXgi6Y9CEnl9dbizMbgGoc;-><init>(Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;)V

    return-object p0
.end method
