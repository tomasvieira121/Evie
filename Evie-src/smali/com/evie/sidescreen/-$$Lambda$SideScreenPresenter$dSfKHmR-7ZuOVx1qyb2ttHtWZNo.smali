.class public final synthetic Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$dSfKHmR-7ZuOVx1qyb2ttHtWZNo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/SideScreenPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/SideScreenPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$dSfKHmR-7ZuOVx1qyb2ttHtWZNo;->f$0:Lcom/evie/sidescreen/SideScreenPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$dSfKHmR-7ZuOVx1qyb2ttHtWZNo;->f$0:Lcom/evie/sidescreen/SideScreenPresenter;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/SideScreenPresenter;->lambda$bindSideScreenView$4(Lcom/evie/sidescreen/SideScreenPresenter;Ljava/lang/String;)V

    return-void
.end method
