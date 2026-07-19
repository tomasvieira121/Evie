.class public Lcom/evie/models/topics/data/ListTopicsRequestOptions;
.super Ljava/lang/Object;
.source "ListTopicsRequestOptions.java"


# instance fields
.field private final mOptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->mOptions:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->mOptions:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->mOptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private joinIds(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/schema/evie/topics/Topic;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schema/evie/topics/Topic;

    .line 84
    invoke-virtual {v1}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {v1}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, ","

    .line 89
    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getOptions()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->mOptions:Ljava/util/HashMap;

    return-object v0
.end method

.method public setFilterFollow()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->mOptions:Ljava/util/HashMap;

    const-string v1, "filter_follow"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIds(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/schema/evie/topics/Topic;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->mOptions:Ljava/util/HashMap;

    const-string v0, "ids"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->mOptions:Ljava/util/HashMap;

    const-string v1, "ids"

    invoke-direct {p0, p1}, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->joinIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLimit(I)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->mOptions:Ljava/util/HashMap;

    const-string v1, "n"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setPersonalized()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->mOptions:Ljava/util/HashMap;

    const-string v1, "personalized"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->mOptions:Ljava/util/HashMap;

    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSuggested()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->mOptions:Ljava/util/HashMap;

    const-string v1, "suggested"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
