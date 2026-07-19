.class public final Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenterFactory;
.super Ljava/lang/Object;
.source "PlainTilesHeaderPresenterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 22
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
.method public create(Lio/reactivex/Observable;Ljava/lang/String;)Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;"
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;

    const/4 v1, 0x1

    .line 17
    invoke-static {p1, v1}, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/Observable;

    const/4 v1, 0x2

    invoke-static {p2, v1}, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;-><init>(Lio/reactivex/Observable;Ljava/lang/String;)V

    return-object v0
.end method
