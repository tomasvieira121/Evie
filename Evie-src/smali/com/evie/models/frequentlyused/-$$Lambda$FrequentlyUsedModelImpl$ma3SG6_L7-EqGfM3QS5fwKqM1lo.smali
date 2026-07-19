.class public final synthetic Lcom/evie/models/frequentlyused/-$$Lambda$FrequentlyUsedModelImpl$ma3SG6_L7-EqGfM3QS5fwKqM1lo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function3;


# instance fields
.field private final synthetic f$0:Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/models/frequentlyused/-$$Lambda$FrequentlyUsedModelImpl$ma3SG6_L7-EqGfM3QS5fwKqM1lo;->f$0:Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/evie/models/frequentlyused/-$$Lambda$FrequentlyUsedModelImpl$ma3SG6_L7-EqGfM3QS5fwKqM1lo;->f$0:Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    check-cast p3, Ljava/util/List;

    invoke-static {v0, p1, p2, p3}, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->lambda$new$0(Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
