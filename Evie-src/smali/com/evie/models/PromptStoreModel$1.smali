.class Lcom/evie/models/PromptStoreModel$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "PromptStoreModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/models/PromptStoreModel;->getBreakingNewsList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/ArrayList<",
        "Lcom/evie/models/breakingnews/data/BreakingNews;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/models/PromptStoreModel;


# direct methods
.method constructor <init>(Lcom/evie/models/PromptStoreModel;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/evie/models/PromptStoreModel$1;->this$0:Lcom/evie/models/PromptStoreModel;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
