.class public interface abstract Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;
.super Ljava/lang/Object;
.source "SideScreenSubcomponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/dagger/SideScreenSubcomponent$Builder;
    }
.end annotation


# virtual methods
.method public abstract disposables()Lio/reactivex/disposables/CompositeDisposable;
.end method

.method public abstract inject(Lcom/evie/sidescreen/SideScreen;)V
.end method

.method public abstract memoryWatcher()Lcom/evie/common/utils/MemoryWatcher;
.end method
