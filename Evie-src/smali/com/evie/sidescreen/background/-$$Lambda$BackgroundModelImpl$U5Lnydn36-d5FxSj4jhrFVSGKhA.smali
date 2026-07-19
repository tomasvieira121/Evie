.class public final synthetic Lcom/evie/sidescreen/background/-$$Lambda$BackgroundModelImpl$U5Lnydn36-d5FxSj4jhrFVSGKhA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/background/BackgroundModelImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/background/BackgroundModelImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/background/-$$Lambda$BackgroundModelImpl$U5Lnydn36-d5FxSj4jhrFVSGKhA;->f$0:Lcom/evie/sidescreen/background/BackgroundModelImpl;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/background/-$$Lambda$BackgroundModelImpl$U5Lnydn36-d5FxSj4jhrFVSGKhA;->f$0:Lcom/evie/sidescreen/background/BackgroundModelImpl;

    check-cast p1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/background/BackgroundModelImpl;->lambda$getObservable$1(Lcom/evie/sidescreen/background/BackgroundModelImpl;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Z

    move-result p1

    return p1
.end method
