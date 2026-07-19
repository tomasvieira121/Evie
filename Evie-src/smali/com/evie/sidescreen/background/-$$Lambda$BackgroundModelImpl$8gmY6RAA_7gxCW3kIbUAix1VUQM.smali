.class public final synthetic Lcom/evie/sidescreen/background/-$$Lambda$BackgroundModelImpl$8gmY6RAA_7gxCW3kIbUAix1VUQM;
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

    iput-object p1, p0, Lcom/evie/sidescreen/background/-$$Lambda$BackgroundModelImpl$8gmY6RAA_7gxCW3kIbUAix1VUQM;->f$0:Lcom/evie/sidescreen/background/BackgroundModelImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/background/-$$Lambda$BackgroundModelImpl$8gmY6RAA_7gxCW3kIbUAix1VUQM;->f$0:Lcom/evie/sidescreen/background/BackgroundModelImpl;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/background/BackgroundModelImpl;->lambda$getObservable$0(Lcom/evie/sidescreen/background/BackgroundModelImpl;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
