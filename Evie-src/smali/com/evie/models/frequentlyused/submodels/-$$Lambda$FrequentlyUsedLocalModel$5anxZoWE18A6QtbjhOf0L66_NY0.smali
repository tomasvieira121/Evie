.class public final synthetic Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedLocalModel$5anxZoWE18A6QtbjhOf0L66_NY0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field private final synthetic f$0:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;

.field private final synthetic f$1:Lcom/evie/models/frequentlyused/room/AppLaunchEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;Lcom/evie/models/frequentlyused/room/AppLaunchEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedLocalModel$5anxZoWE18A6QtbjhOf0L66_NY0;->f$0:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;

    iput-object p2, p0, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedLocalModel$5anxZoWE18A6QtbjhOf0L66_NY0;->f$1:Lcom/evie/models/frequentlyused/room/AppLaunchEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedLocalModel$5anxZoWE18A6QtbjhOf0L66_NY0;->f$0:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;

    iget-object v1, p0, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedLocalModel$5anxZoWE18A6QtbjhOf0L66_NY0;->f$1:Lcom/evie/models/frequentlyused/room/AppLaunchEntry;

    invoke-static {v0, v1}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->lambda$addAppLaunchEntry$2(Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;Lcom/evie/models/frequentlyused/room/AppLaunchEntry;)V

    return-void
.end method
