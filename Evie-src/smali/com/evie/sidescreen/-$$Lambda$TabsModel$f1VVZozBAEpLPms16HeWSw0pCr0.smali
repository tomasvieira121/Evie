.class public final synthetic Lcom/evie/sidescreen/-$$Lambda$TabsModel$f1VVZozBAEpLPms16HeWSw0pCr0;
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

    iput-object p1, p0, Lcom/evie/sidescreen/-$$Lambda$TabsModel$f1VVZozBAEpLPms16HeWSw0pCr0;->f$0:Lcom/evie/sidescreen/TabsModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/-$$Lambda$TabsModel$f1VVZozBAEpLPms16HeWSw0pCr0;->f$0:Lcom/evie/sidescreen/TabsModel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/TabsModel;->lambda$bindTabObservables$1(Lcom/evie/sidescreen/TabsModel;Ljava/lang/Boolean;)V

    return-void
.end method
