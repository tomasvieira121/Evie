.class public interface abstract Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;
.super Ljava/lang/Object;
.source "SideScreenTabSectionModelInterface.java"


# virtual methods
.method public abstract getIntervalRefreshSubject()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScreenInfo()Lcom/evie/sidescreen/analytics/data/ScreenInfo;
.end method

.method public abstract getSideScreenSections(Ljava/lang/Boolean;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getTabPath()Ljava/lang/String;
.end method
