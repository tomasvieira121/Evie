.class public Lcom/evie/common/data/Lce;
.super Ljava/lang/Object;
.source "Lce.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final error:Z

.field private final errorData:Ljava/lang/Throwable;

.field private final loading:Z

.field private final loadingSource:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZLjava/lang/Throwable;ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Throwable;",
            "Z",
            "Ljava/lang/String;",
            "TD;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/evie/common/data/Lce;->error:Z

    iput-object p2, p0, Lcom/evie/common/data/Lce;->errorData:Ljava/lang/Throwable;

    iput-boolean p3, p0, Lcom/evie/common/data/Lce;->loading:Z

    iput-object p4, p0, Lcom/evie/common/data/Lce;->loadingSource:Ljava/lang/String;

    iput-object p5, p0, Lcom/evie/common/data/Lce;->data:Ljava/lang/Object;

    return-void
.end method

.method public static data(Ljava/lang/Object;)Lcom/evie/common/data/Lce;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(TD;)",
            "Lcom/evie/common/data/Lce<",
            "TD;>;"
        }
    .end annotation

    .line 46
    new-instance v6, Lcom/evie/common/data/Lce;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/evie/common/data/Lce;-><init>(ZLjava/lang/Throwable;ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v6
.end method

.method public static error(Ljava/lang/Throwable;)Lcom/evie/common/data/Lce;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/evie/common/data/Lce<",
            "TD;>;"
        }
    .end annotation

    .line 38
    new-instance v6, Lcom/evie/common/data/Lce;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/evie/common/data/Lce;-><init>(ZLjava/lang/Throwable;ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v6
.end method

.method static synthetic lambda$null$0(Lretrofit2/Response;)Lcom/evie/common/data/Lce;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/evie/common/data/Lce;->data(Ljava/lang/Object;)Lcom/evie/common/data/Lce;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lretrofit2/HttpException;

    invoke-direct {v0, p0}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    .line 64
    invoke-static {v0}, Lcom/evie/common/data/Lce;->error(Ljava/lang/Throwable;)Lcom/evie/common/data/Lce;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$transformRequestToLce$1(Ljava/lang/String;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    .line 61
    sget-object v0, Lcom/evie/common/data/-$$Lambda$Lce$5PPj1IxrEERE8Ui2ocHjXCbHJE8;->INSTANCE:Lcom/evie/common/data/-$$Lambda$Lce$5PPj1IxrEERE8Ui2ocHjXCbHJE8;

    .line 62
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 65
    invoke-static {p0}, Lcom/evie/common/data/Lce;->loading(Ljava/lang/String;)Lcom/evie/common/data/Lce;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcom/evie/common/data/-$$Lambda$By5LkKDJ1mjq-bZPHsJH5Ufz5vQ;->INSTANCE:Lcom/evie/common/data/-$$Lambda$By5LkKDJ1mjq-bZPHsJH5Ufz5vQ;

    .line 66
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static loading(Ljava/lang/String;)Lcom/evie/common/data/Lce;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/evie/common/data/Lce<",
            "TD;>;"
        }
    .end annotation

    .line 42
    new-instance v6, Lcom/evie/common/data/Lce;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/evie/common/data/Lce;-><init>(ZLjava/lang/Throwable;ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v6
.end method

.method public static transformRequestToLce()Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/ObservableTransformer<",
            "Lretrofit2/Response<",
            "TD;>;",
            "Lcom/evie/common/data/Lce<",
            "TD;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    invoke-static {v0}, Lcom/evie/common/data/Lce;->transformRequestToLce(Ljava/lang/String;)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    return-object v0
.end method

.method public static transformRequestToLce(Ljava/lang/String;)Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/ObservableTransformer<",
            "Lretrofit2/Response<",
            "TD;>;",
            "Lcom/evie/common/data/Lce<",
            "TD;>;>;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/evie/common/data/-$$Lambda$Lce$7VSNivaRySqp8VttLY4dK4Sa9ME;

    invoke-direct {v0, p0}, Lcom/evie/common/data/-$$Lambda$Lce$7VSNivaRySqp8VttLY4dK4Sa9ME;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/evie/common/data/Lce;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getErrorData()Ljava/lang/Throwable;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/evie/common/data/Lce;->errorData:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getLoadingSource()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/evie/common/data/Lce;->loadingSource:Ljava/lang/String;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/evie/common/data/Lce;->error:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/evie/common/data/Lce;->loading:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lce(error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/common/data/Lce;->isError()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", errorData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/common/data/Lce;->getErrorData()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/common/data/Lce;->isLoading()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", loadingSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/common/data/Lce;->getLoadingSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
