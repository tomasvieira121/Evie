.class Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "TopicPersonalizationSharedPrefStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;->getTopicIdsForKey(Ljava/lang/String;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/HashSet<",
        "Lcom/evie/models/topics/data/TopicId;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;


# direct methods
.method constructor <init>(Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore$1;->this$0:Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
