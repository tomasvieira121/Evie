.class public final synthetic Lcom/evie/sidescreen/dagger/-$$Lambda$ZXN-awXgi6Y9CEnl9dbizMbgGoc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/-$$Lambda$ZXN-awXgi6Y9CEnl9dbizMbgGoc;->f$0:Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;

    return-void
.end method


# virtual methods
.method public final create(Lcom/evie/sidescreen/personalize/FollowState;Lio/reactivex/disposables/CompositeDisposable;)Lcom/evie/sidescreen/personalize/IFollowButtonHandler;
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/-$$Lambda$ZXN-awXgi6Y9CEnl9dbizMbgGoc;->f$0:Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;

    invoke-virtual {v0, p1, p2}, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;->create(Lcom/evie/sidescreen/personalize/FollowState;Lio/reactivex/disposables/CompositeDisposable;)Lcom/evie/sidescreen/personalize/FollowButtonHandler;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

    return-object p1
.end method
