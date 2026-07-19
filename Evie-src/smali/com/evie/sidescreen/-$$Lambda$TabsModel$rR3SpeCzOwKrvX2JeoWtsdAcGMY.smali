.class public final synthetic Lcom/evie/sidescreen/-$$Lambda$TabsModel$rR3SpeCzOwKrvX2JeoWtsdAcGMY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/TabsModel;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/TabsModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/-$$Lambda$TabsModel$rR3SpeCzOwKrvX2JeoWtsdAcGMY;->f$0:Lcom/evie/sidescreen/TabsModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/-$$Lambda$TabsModel$rR3SpeCzOwKrvX2JeoWtsdAcGMY;->f$0:Lcom/evie/sidescreen/TabsModel;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/TabsModel;->lambda$bindTabObservables$0(Lcom/evie/sidescreen/TabsModel;Ljava/util/List;)V

    return-void
.end method
