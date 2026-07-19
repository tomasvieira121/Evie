.class public final synthetic Lcom/evie/search/local/-$$Lambda$LocalSearchManager$PzkgqbvA9jqXDRiPhqBYaew46xA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/evie/search/local/LocalSearchManager;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/search/local/LocalSearchManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$PzkgqbvA9jqXDRiPhqBYaew46xA;->f$0:Lcom/evie/search/local/LocalSearchManager;

    iput-object p2, p0, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$PzkgqbvA9jqXDRiPhqBYaew46xA;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$PzkgqbvA9jqXDRiPhqBYaew46xA;->f$0:Lcom/evie/search/local/LocalSearchManager;

    iget-object v1, p0, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$PzkgqbvA9jqXDRiPhqBYaew46xA;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/evie/search/local/LocalSearchManager;->lambda$updateSettings$1(Lcom/evie/search/local/LocalSearchManager;Landroid/content/Context;)V

    return-void
.end method
