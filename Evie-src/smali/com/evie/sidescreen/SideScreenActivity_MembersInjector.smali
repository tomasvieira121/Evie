.class public final Lcom/evie/sidescreen/SideScreenActivity_MembersInjector;
.super Ljava/lang/Object;
.source "SideScreenActivity_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static injectMOathPlayerObservableProvider(Lcom/evie/sidescreen/SideScreenActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/SideScreenActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenActivity;->mOathPlayerObservableProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static injectMSideScreenSharedDependencies(Lcom/evie/sidescreen/SideScreenActivity;Lcom/evie/sidescreen/SideScreenSharedDependencies;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenActivity;->mSideScreenSharedDependencies:Lcom/evie/sidescreen/SideScreenSharedDependencies;

    return-void
.end method
