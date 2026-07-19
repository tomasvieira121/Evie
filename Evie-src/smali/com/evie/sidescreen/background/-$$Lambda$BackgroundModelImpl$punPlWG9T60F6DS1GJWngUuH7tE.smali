.class public final synthetic Lcom/evie/sidescreen/background/-$$Lambda$BackgroundModelImpl$punPlWG9T60F6DS1GJWngUuH7tE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/background/BackgroundModelImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/background/BackgroundModelImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/background/-$$Lambda$BackgroundModelImpl$punPlWG9T60F6DS1GJWngUuH7tE;->f$0:Lcom/evie/sidescreen/background/BackgroundModelImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/background/-$$Lambda$BackgroundModelImpl$punPlWG9T60F6DS1GJWngUuH7tE;->f$0:Lcom/evie/sidescreen/background/BackgroundModelImpl;

    check-cast p1, Lcom/evie/common/data/Lce;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/background/BackgroundModelImpl;->lambda$getObservable$3(Lcom/evie/sidescreen/background/BackgroundModelImpl;Lcom/evie/common/data/Lce;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
