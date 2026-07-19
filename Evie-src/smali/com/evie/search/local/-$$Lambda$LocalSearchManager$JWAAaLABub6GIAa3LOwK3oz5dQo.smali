.class public final synthetic Lcom/evie/search/local/-$$Lambda$LocalSearchManager$JWAAaLABub6GIAa3LOwK3oz5dQo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/evie/search/local/LocalSearchManager;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/search/local/LocalSearchManager;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$JWAAaLABub6GIAa3LOwK3oz5dQo;->f$0:Lcom/evie/search/local/LocalSearchManager;

    iput-object p2, p0, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$JWAAaLABub6GIAa3LOwK3oz5dQo;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$JWAAaLABub6GIAa3LOwK3oz5dQo;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$JWAAaLABub6GIAa3LOwK3oz5dQo;->f$0:Lcom/evie/search/local/LocalSearchManager;

    iget-object v1, p0, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$JWAAaLABub6GIAa3LOwK3oz5dQo;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$JWAAaLABub6GIAa3LOwK3oz5dQo;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/evie/search/local/LocalSearchManager;->lambda$updateAppPackage$3(Lcom/evie/search/local/LocalSearchManager;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
