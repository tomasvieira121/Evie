.class public final synthetic Lcom/evie/search/-$$Lambda$SearchPresenter$wsGdhB-W7goufaa1Esp6yph-14I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/evie/search/SearchPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/search/SearchPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/search/-$$Lambda$SearchPresenter$wsGdhB-W7goufaa1Esp6yph-14I;->f$0:Lcom/evie/search/SearchPresenter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/evie/search/-$$Lambda$SearchPresenter$wsGdhB-W7goufaa1Esp6yph-14I;->f$0:Lcom/evie/search/SearchPresenter;

    invoke-static {v0}, Lcom/evie/search/SearchPresenter;->lambda$expandLocalResults$1(Lcom/evie/search/SearchPresenter;)V

    return-void
.end method
