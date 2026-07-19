.class public final synthetic Lcom/evie/search/-$$Lambda$SearchPresenter$xN3IZbuvzz0lQ5SI8ShlIXTOrM0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/evie/search/SearchPresenter;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/search/SearchPresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/search/-$$Lambda$SearchPresenter$xN3IZbuvzz0lQ5SI8ShlIXTOrM0;->f$0:Lcom/evie/search/SearchPresenter;

    iput-object p2, p0, Lcom/evie/search/-$$Lambda$SearchPresenter$xN3IZbuvzz0lQ5SI8ShlIXTOrM0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/evie/search/-$$Lambda$SearchPresenter$xN3IZbuvzz0lQ5SI8ShlIXTOrM0;->f$0:Lcom/evie/search/SearchPresenter;

    iget-object v1, p0, Lcom/evie/search/-$$Lambda$SearchPresenter$xN3IZbuvzz0lQ5SI8ShlIXTOrM0;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evie/search/SearchPresenter;->lambda$getSearchObservable$2(Lcom/evie/search/SearchPresenter;Ljava/lang/String;)Lcom/evie/search/model/SearchPresenterData;

    move-result-object v0

    return-object v0
.end method
