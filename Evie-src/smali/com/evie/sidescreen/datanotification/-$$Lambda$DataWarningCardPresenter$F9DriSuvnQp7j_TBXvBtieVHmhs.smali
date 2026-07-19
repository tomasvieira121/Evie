.class public final synthetic Lcom/evie/sidescreen/datanotification/-$$Lambda$DataWarningCardPresenter$F9DriSuvnQp7j_TBXvBtieVHmhs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/datanotification/-$$Lambda$DataWarningCardPresenter$F9DriSuvnQp7j_TBXvBtieVHmhs;->f$0:Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/-$$Lambda$DataWarningCardPresenter$F9DriSuvnQp7j_TBXvBtieVHmhs;->f$0:Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->lambda$new$2(Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
