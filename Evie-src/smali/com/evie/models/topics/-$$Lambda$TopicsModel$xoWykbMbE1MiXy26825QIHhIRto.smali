.class public final synthetic Lcom/evie/models/topics/-$$Lambda$TopicsModel$xoWykbMbE1MiXy26825QIHhIRto;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/models/topics/TopicsModel;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/models/topics/TopicsModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/models/topics/-$$Lambda$TopicsModel$xoWykbMbE1MiXy26825QIHhIRto;->f$0:Lcom/evie/models/topics/TopicsModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/models/topics/-$$Lambda$TopicsModel$xoWykbMbE1MiXy26825QIHhIRto;->f$0:Lcom/evie/models/topics/TopicsModel;

    check-cast p1, Lcom/evie/common/data/Lce;

    invoke-static {v0, p1}, Lcom/evie/models/topics/TopicsModel;->lambda$getFollows$0(Lcom/evie/models/topics/TopicsModel;Lcom/evie/common/data/Lce;)V

    return-void
.end method
