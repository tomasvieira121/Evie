.class public final synthetic Lcom/evie/common/data/-$$Lambda$Lce$7VSNivaRySqp8VttLY4dK4Sa9ME;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/common/data/-$$Lambda$Lce$7VSNivaRySqp8VttLY4dK4Sa9ME;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    iget-object v0, p0, Lcom/evie/common/data/-$$Lambda$Lce$7VSNivaRySqp8VttLY4dK4Sa9ME;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/evie/common/data/Lce;->lambda$transformRequestToLce$1(Ljava/lang/String;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
