.class public Lcom/evie/models/topics/data/GetFollowsResult;
.super Ljava/lang/Object;
.source "GetFollowsResult.java"


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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/models/topics/data/GetFollowsResult;->follows:Ljava/util/List;

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/models/topics/data/GetFollowsResult;->blocks:Ljava/util/List;

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

    .line 21
    iget-object v0, p0, Lcom/evie/models/topics/data/GetFollowsResult;->blocks:Ljava/util/List;

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

    .line 18
    iget-object v0, p0, Lcom/evie/models/topics/data/GetFollowsResult;->follows:Ljava/util/List;

    return-object v0
.end method
