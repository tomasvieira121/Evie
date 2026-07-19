.class public final synthetic Lcom/evie/models/frequentlyused/submodels/-$$Lambda$gr3_IfxV4lqmZ89hGSHnxlOOOpQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field private final synthetic f$0:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$gr3_IfxV4lqmZ89hGSHnxlOOOpQ;->f$0:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$gr3_IfxV4lqmZ89hGSHnxlOOOpQ;->f$0:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;

    invoke-virtual {v0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->calculateProbabilitiesFromDB()V

    return-void
.end method
