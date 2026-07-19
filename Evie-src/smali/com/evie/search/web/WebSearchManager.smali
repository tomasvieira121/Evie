.class public Lcom/evie/search/web/WebSearchManager;
.super Ljava/lang/Object;
.source "WebSearchManager.java"


# instance fields
.field private webSearchService:Lcom/evie/search/web/WebSearchInterface;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v1, "https://suggestqueries.google.com/"

    .line 25
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 26
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-static {v1}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->createWithScheduler(Lio/reactivex/Scheduler;)Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 28
    const-class v1, Lcom/evie/search/web/WebSearchInterface;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/search/web/WebSearchInterface;

    iput-object v0, p0, Lcom/evie/search/web/WebSearchManager;->webSearchService:Lcom/evie/search/web/WebSearchInterface;

    return-void
.end method

.method static synthetic lambda$search$0(Ljava/lang/String;Lokhttp3/ResponseBody;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    new-instance v1, Lcom/evie/search/model/WebSearchItem;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/evie/search/model/WebSearchItem;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance p0, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p0

    .line 41
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v1, 0x5

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 43
    new-instance v3, Lcom/evie/search/model/WebSearchItem;

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/evie/search/model/WebSearchItem;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public search(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/evie/search/model/WebSearchItem;",
            ">;>;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/evie/search/web/WebSearchManager;->webSearchService:Lcom/evie/search/web/WebSearchInterface;

    const-string v1, "chrome"

    invoke-interface {v0, v1, p1}, Lcom/evie/search/web/WebSearchInterface;->search(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/search/web/-$$Lambda$WebSearchManager$XMVh8qY7gqN3nz5t4EzZkgUU2i0;

    invoke-direct {v1, p1}, Lcom/evie/search/web/-$$Lambda$WebSearchManager$XMVh8qY7gqN3nz5t4EzZkgUU2i0;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
