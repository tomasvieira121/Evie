.class public final synthetic Lcom/evie/sidescreen/lifecycle/-$$Lambda$LifecycleCallbacks$zNKPMLTUbFacjNYKIIToF0Brl2A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/lifecycle/-$$Lambda$LifecycleCallbacks$zNKPMLTUbFacjNYKIIToF0Brl2A;->f$0:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/lifecycle/-$$Lambda$LifecycleCallbacks$zNKPMLTUbFacjNYKIIToF0Brl2A;->f$0:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    check-cast p1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->lambda$new$2(Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V

    return-void
.end method
