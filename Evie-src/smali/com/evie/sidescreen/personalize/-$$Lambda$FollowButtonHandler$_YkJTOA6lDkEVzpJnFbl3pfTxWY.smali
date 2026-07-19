.class public final synthetic Lcom/evie/sidescreen/personalize/-$$Lambda$FollowButtonHandler$_YkJTOA6lDkEVzpJnFbl3pfTxWY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/personalize/FollowButtonHandler;

.field private final synthetic f$1:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/personalize/FollowButtonHandler;Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/-$$Lambda$FollowButtonHandler$_YkJTOA6lDkEVzpJnFbl3pfTxWY;->f$0:Lcom/evie/sidescreen/personalize/FollowButtonHandler;

    iput-object p2, p0, Lcom/evie/sidescreen/personalize/-$$Lambda$FollowButtonHandler$_YkJTOA6lDkEVzpJnFbl3pfTxWY;->f$1:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/evie/sidescreen/personalize/-$$Lambda$FollowButtonHandler$_YkJTOA6lDkEVzpJnFbl3pfTxWY;->f$0:Lcom/evie/sidescreen/personalize/FollowButtonHandler;

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/-$$Lambda$FollowButtonHandler$_YkJTOA6lDkEVzpJnFbl3pfTxWY;->f$1:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    check-cast p1, Lcom/evie/common/data/Lce;

    invoke-static {v0, v1, p1}, Lcom/evie/sidescreen/personalize/FollowButtonHandler;->lambda$onHandleUnfollow$1(Lcom/evie/sidescreen/personalize/FollowButtonHandler;Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lcom/evie/common/data/Lce;)V

    return-void
.end method
