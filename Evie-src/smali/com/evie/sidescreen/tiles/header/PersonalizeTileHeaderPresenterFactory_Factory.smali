.class public final Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory_Factory;
.super Ljava/lang/Object;
.source "PersonalizeTileHeaderPresenterFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final analyticsModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedPreferencesModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;",
            ">;"
        }
    .end annotation
.end field

.field private final sideScreenConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory_Factory;->sharedPreferencesModelProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory_Factory;->sideScreenConfigurationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenConfiguration;",
            ">;)",
            "Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory_Factory;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;
    .locals 5

    .line 38
    new-instance v0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory_Factory;->sharedPreferencesModelProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory_Factory;->sideScreenConfigurationProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory_Factory;->get()Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;

    move-result-object v0

    return-object v0
.end method
