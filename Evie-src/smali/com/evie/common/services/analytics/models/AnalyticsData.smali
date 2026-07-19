.class public Lcom/evie/common/services/analytics/models/AnalyticsData;
.super Ljava/lang/Object;
.source "AnalyticsData.java"


# instance fields
.field private collectionData:Lcom/evie/common/services/analytics/models/CollectionAnalyticsData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "collection_data"
    .end annotation
.end field

.field private entityName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "entity_name"
    .end annotation
.end field

.field private entityType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "entity_type"
    .end annotation
.end field

.field private layout:Ljava/lang/String;

.field private movieData:Lcom/evie/common/services/analytics/models/MovieAnalyticsData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "movie_data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/evie/common/services/analytics/models/AnalyticsData;->entityType:Ljava/lang/String;

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/evie/common/services/analytics/models/AnalyticsData;->entityName:Ljava/lang/String;

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/evie/common/services/analytics/models/AnalyticsData;->layout:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCollectionData()Lcom/evie/common/services/analytics/models/CollectionAnalyticsData;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/evie/common/services/analytics/models/AnalyticsData;->collectionData:Lcom/evie/common/services/analytics/models/CollectionAnalyticsData;

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/evie/common/services/analytics/models/AnalyticsData;->entityName:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityType()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/evie/common/services/analytics/models/AnalyticsData;->entityType:Ljava/lang/String;

    return-object v0
.end method

.method public getLayout()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/evie/common/services/analytics/models/AnalyticsData;->layout:Ljava/lang/String;

    return-object v0
.end method

.method public getMovieData()Lcom/evie/common/services/analytics/models/MovieAnalyticsData;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/evie/common/services/analytics/models/AnalyticsData;->movieData:Lcom/evie/common/services/analytics/models/MovieAnalyticsData;

    return-object v0
.end method

.method public setEntityName(Ljava/lang/String;)Lcom/evie/common/services/analytics/models/AnalyticsData;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/evie/common/services/analytics/models/AnalyticsData;->entityName:Ljava/lang/String;

    return-object p0
.end method

.method public setEntityType(Ljava/lang/String;)Lcom/evie/common/services/analytics/models/AnalyticsData;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/evie/common/services/analytics/models/AnalyticsData;->entityType:Ljava/lang/String;

    return-object p0
.end method

.method public setLayout(Ljava/lang/String;)Lcom/evie/common/services/analytics/models/AnalyticsData;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/evie/common/services/analytics/models/AnalyticsData;->layout:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnalyticsData(entityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/common/services/analytics/models/AnalyticsData;->getEntityType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", entityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/common/services/analytics/models/AnalyticsData;->getEntityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", layout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/common/services/analytics/models/AnalyticsData;->getLayout()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", collectionData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/common/services/analytics/models/AnalyticsData;->getCollectionData()Lcom/evie/common/services/analytics/models/CollectionAnalyticsData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", movieData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/common/services/analytics/models/AnalyticsData;->getMovieData()Lcom/evie/common/services/analytics/models/MovieAnalyticsData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
