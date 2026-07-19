.class public Lcom/evie/search/model/RemoteSearchExplanation;
.super Ljava/lang/Object;
.source "RemoteSearchExplanation.java"


# instance fields
.field private probability:F

.field private query:Ljava/lang/String;


# virtual methods
.method public getProbability()F
    .locals 1

    .line 11
    iget v0, p0, Lcom/evie/search/model/RemoteSearchExplanation;->probability:F

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/evie/search/model/RemoteSearchExplanation;->query:Ljava/lang/String;

    return-object v0
.end method
