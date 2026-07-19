.class public final synthetic Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedLocalModel$wpiGjjya7trryMk_Cogov8HTZhs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedLocalModel$wpiGjjya7trryMk_Cogov8HTZhs;->f$0:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedLocalModel$wpiGjjya7trryMk_Cogov8HTZhs;->f$0:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;

    check-cast p1, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;

    invoke-static {v0, p1}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->lambda$new$0(Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;Lcom/evie/models/frequentlyused/room/AppLaunchEntry;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
