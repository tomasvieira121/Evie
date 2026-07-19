.class public interface abstract Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent;
.super Ljava/lang/Object;
.source "SideScreenActivitySubcomponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent$Builder;
    }
.end annotation


# virtual methods
.method public abstract activationModel()Lcom/evie/sidescreen/ActivationModel;
.end method

.method public abstract analyticsModel()Lcom/evie/sidescreen/analytics/AnalyticsModel;
.end method

.method public abstract disposables()Lio/reactivex/disposables/CompositeDisposable;
.end method

.method public abstract exoPlayerObservableProvider()Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract layerStack()Lcom/evie/sidescreen/LayerStack;
.end method

.method public abstract lifecycleCallbacks()Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;
.end method

.method public abstract sideScreenRelatedContentModel()Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;
.end method

.method public abstract sideScreenSharedPreferencesModel()Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;
.end method

.method public abstract supportFragmentInjector()Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end method
