.class public final synthetic Lcom/evie/sidescreen/personalize/-$$Lambda$PersonalizePresenter$5huMTIofhz-373QnLUxJQEqhBv4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/personalize/PersonalizePresenter;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/personalize/PersonalizePresenter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/-$$Lambda$PersonalizePresenter$5huMTIofhz-373QnLUxJQEqhBv4;->f$0:Lcom/evie/sidescreen/personalize/PersonalizePresenter;

    iput-boolean p2, p0, Lcom/evie/sidescreen/personalize/-$$Lambda$PersonalizePresenter$5huMTIofhz-373QnLUxJQEqhBv4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/evie/sidescreen/personalize/-$$Lambda$PersonalizePresenter$5huMTIofhz-373QnLUxJQEqhBv4;->f$0:Lcom/evie/sidescreen/personalize/PersonalizePresenter;

    iget-boolean v1, p0, Lcom/evie/sidescreen/personalize/-$$Lambda$PersonalizePresenter$5huMTIofhz-373QnLUxJQEqhBv4;->f$1:Z

    check-cast p1, Lcom/evie/common/data/Lce;

    invoke-static {v0, v1, p1}, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->lambda$refresh$0(Lcom/evie/sidescreen/personalize/PersonalizePresenter;ZLcom/evie/common/data/Lce;)V

    return-void
.end method
