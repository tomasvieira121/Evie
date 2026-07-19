.class public final synthetic Lcom/evie/models/frequentlyused/-$$Lambda$PNvbEWVB-1y8Aj6vOgtqg4Sa4oI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lio/reactivex/subjects/Subject;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/subjects/Subject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/models/frequentlyused/-$$Lambda$PNvbEWVB-1y8Aj6vOgtqg4Sa4oI;->f$0:Lio/reactivex/subjects/Subject;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/models/frequentlyused/-$$Lambda$PNvbEWVB-1y8Aj6vOgtqg4Sa4oI;->f$0:Lio/reactivex/subjects/Subject;

    check-cast p1, Ljava/util/List;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method
