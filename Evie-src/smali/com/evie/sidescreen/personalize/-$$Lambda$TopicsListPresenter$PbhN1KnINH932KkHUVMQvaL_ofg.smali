.class public final synthetic Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsListPresenter$PbhN1KnINH932KkHUVMQvaL_ofg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/personalize/TopicsListPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/personalize/TopicsListPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsListPresenter$PbhN1KnINH932KkHUVMQvaL_ofg;->f$0:Lcom/evie/sidescreen/personalize/TopicsListPresenter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsListPresenter$PbhN1KnINH932KkHUVMQvaL_ofg;->f$0:Lcom/evie/sidescreen/personalize/TopicsListPresenter;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->lambda$load$0(Lcom/evie/sidescreen/personalize/TopicsListPresenter;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
