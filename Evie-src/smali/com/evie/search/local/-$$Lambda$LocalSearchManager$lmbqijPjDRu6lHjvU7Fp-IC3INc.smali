.class public final synthetic Lcom/evie/search/local/-$$Lambda$LocalSearchManager$lmbqijPjDRu6lHjvU7Fp-IC3INc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/search/local/LocalSearchManager;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/search/local/LocalSearchManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$lmbqijPjDRu6lHjvU7Fp-IC3INc;->f$0:Lcom/evie/search/local/LocalSearchManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$lmbqijPjDRu6lHjvU7Fp-IC3INc;->f$0:Lcom/evie/search/local/LocalSearchManager;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/evie/search/local/LocalSearchManager;->lambda$updateRecents$4(Lcom/evie/search/local/LocalSearchManager;Ljava/util/List;)V

    return-void
.end method
