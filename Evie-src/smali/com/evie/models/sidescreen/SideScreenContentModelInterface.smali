.class public interface abstract Lcom/evie/models/sidescreen/SideScreenContentModelInterface;
.super Ljava/lang/Object;
.source "SideScreenContentModelInterface.java"


# virtual methods
.method public abstract getObservable()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/evie/common/data/Lce<",
            "Lcom/evie/models/sidescreen/data/SideScreenContent;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract refreshContent(Ljava/lang/String;)Lio/reactivex/disposables/Disposable;
.end method
