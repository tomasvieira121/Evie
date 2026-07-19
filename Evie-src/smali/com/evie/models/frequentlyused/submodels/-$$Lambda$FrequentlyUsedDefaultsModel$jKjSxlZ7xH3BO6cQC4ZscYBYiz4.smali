.class public final synthetic Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedDefaultsModel$jKjSxlZ7xH3BO6cQC4ZscYBYiz4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedDefaultsModel$jKjSxlZ7xH3BO6cQC4ZscYBYiz4;->f$0:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedDefaultsModel$jKjSxlZ7xH3BO6cQC4ZscYBYiz4;->f$0:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;

    invoke-static {v0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->lambda$getDefaultFrequentlyUsedApps$0(Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
