.class public Lcom/evie/models/topics/data/ListTopicsResult;
.super Ljava/lang/Object;
.source "ListTopicsResult.java"


# instance fields
.field private blocks:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lorg/schema/serialization/AlwaysListTypeAdapterFactory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;"
        }
    .end annotation
.end field

.field private follows:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lorg/schema/serialization/AlwaysListTypeAdapterFactory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;"
        }
    .end annotation
.end field

.field private topics:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lorg/schema/serialization/AlwaysListTypeAdapterFactory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schema/Thing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/models/topics/data/ListTopicsResult;->topics:Ljava/util/List;

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/models/topics/data/ListTopicsResult;->follows:Ljava/util/List;

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/models/topics/data/ListTopicsResult;->blocks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBlocks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/evie/models/topics/data/ListTopicsResult;->blocks:Ljava/util/List;

    return-object v0
.end method

.method public getFollows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/evie/models/topics/data/ListTopicsResult;->follows:Ljava/util/List;

    return-object v0
.end method

.method public getTopics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schema/Thing;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/evie/models/topics/data/ListTopicsResult;->topics:Ljava/util/List;

    return-object v0
.end method
