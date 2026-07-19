.class public final synthetic Lcom/evie/models/frequentlyused/submodels/-$$Lambda$0QD_bvz-n6C4nj2EF1sNcbmJ-nU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lio/reactivex/subjects/BehaviorSubject;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/subjects/BehaviorSubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$0QD_bvz-n6C4nj2EF1sNcbmJ-nU;->f$0:Lio/reactivex/subjects/BehaviorSubject;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$0QD_bvz-n6C4nj2EF1sNcbmJ-nU;->f$0:Lio/reactivex/subjects/BehaviorSubject;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
