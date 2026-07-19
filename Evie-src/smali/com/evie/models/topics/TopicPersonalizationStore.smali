.class public interface abstract Lcom/evie/models/topics/TopicPersonalizationStore;
.super Ljava/lang/Object;
.source "TopicPersonalizationStore.java"


# virtual methods
.method public abstract addTopicBlocks(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addTopicFollows(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getTopicBlocks()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTopicFollows()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;"
        }
    .end annotation
.end method

.method public abstract listenToChanges()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeTopicBlocks(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeTopicFollows(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTopicBlocks(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTopicFollows(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;)V"
        }
    .end annotation
.end method
