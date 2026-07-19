.class public final synthetic Lcom/evie/sidescreen/mvp/-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$ipTfCPiYAwLNZ8xAudiKMe67loA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/mvp/-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$ipTfCPiYAwLNZ8xAudiKMe67loA;->f$0:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/mvp/-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$ipTfCPiYAwLNZ8xAudiKMe67loA;->f$0:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;

    check-cast p1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;->lambda$listen$1(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V

    return-void
.end method
