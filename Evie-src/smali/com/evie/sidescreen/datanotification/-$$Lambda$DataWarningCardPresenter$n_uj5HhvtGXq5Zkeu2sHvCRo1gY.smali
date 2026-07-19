.class public final synthetic Lcom/evie/sidescreen/datanotification/-$$Lambda$DataWarningCardPresenter$n_uj5HhvtGXq5Zkeu2sHvCRo1gY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/datanotification/-$$Lambda$DataWarningCardPresenter$n_uj5HhvtGXq5Zkeu2sHvCRo1gY;->f$0:Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/-$$Lambda$DataWarningCardPresenter$n_uj5HhvtGXq5Zkeu2sHvCRo1gY;->f$0:Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;

    check-cast p1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->lambda$new$3(Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V

    return-void
.end method
