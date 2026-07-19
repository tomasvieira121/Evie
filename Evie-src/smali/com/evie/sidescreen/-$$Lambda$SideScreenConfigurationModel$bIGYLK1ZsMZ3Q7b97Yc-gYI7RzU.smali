.class public final synthetic Lcom/evie/sidescreen/-$$Lambda$SideScreenConfigurationModel$bIGYLK1ZsMZ3Q7b97Yc-gYI7RzU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/-$$Lambda$SideScreenConfigurationModel$bIGYLK1ZsMZ3Q7b97Yc-gYI7RzU;->f$0:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/-$$Lambda$SideScreenConfigurationModel$bIGYLK1ZsMZ3Q7b97Yc-gYI7RzU;->f$0:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/SideScreenConfigurationModel;->lambda$new$0(Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
