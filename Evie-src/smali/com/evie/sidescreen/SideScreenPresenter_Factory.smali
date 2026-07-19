.class public final Lcom/evie/sidescreen/SideScreenPresenter_Factory;
.super Ljava/lang/Object;
.source "SideScreenPresenter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/SideScreenPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private final abTestConfigurationModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;",
            ">;"
        }
    .end annotation
.end field

.field private final activationModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;"
        }
    .end annotation
.end field

.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final announcementModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/announcement/AnnouncementModel;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/background/BackgroundModel;",
            ">;"
        }
    .end annotation
.end field

.field private final layerStackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/LayerStack;",
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

.field private final sideScreenSharedPreferencesModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;",
            ">;"
        }
    .end annotation
.end field

.field private final tabsModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/TabsModelFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final topicsModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicsModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/background/BackgroundModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/LayerStack;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/announcement/AnnouncementModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/TabsModelFactory;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter_Factory;->backgroundModelProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p2, p0, Lcom/evie/sidescreen/SideScreenPresenter_Factory;->abTestConfigurationModelProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p3, p0, Lcom/evie/sidescreen/SideScreenPresenter_Factory;->layerStackProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p4, p0, Lcom/evie/sidescreen/SideScreenPresenter_Factory;->announcementModelProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p5, p0, Lcom/evie/sidescreen/SideScreenPresenter_Factory;->sideScreenSharedPreferencesModelProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p6, p0, Lcom/evie/sidescreen/SideScreenPresenter_Factory;->topicsModelProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p7, p0, Lcom/evie/sidescreen/SideScreenPresenter_Factory;->activationModelProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p8, p0, Lcom/evie/sidescreen/SideScreenPresenter_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p9, p0, Lcom/evie/sidescreen/SideScreenPresenter_Factory;->sideScreenConfigurationProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p10, p0, Lcom/evie/sidescreen/SideScreenPresenter_Factory;->tabsModelFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/SideScreenPresenter_Factory;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/background/BackgroundModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/LayerStack;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/announcement/AnnouncementModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/TabsModelFactory;",
            ">;)",
            "Lcom/evie/sidescreen/SideScreenPresenter_Factory;"
        }
    .end annotation

    .line 85
    new-instance v11, Lcom/evie/sidescreen/SideScreenPresenter_Factory;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/evie/sidescreen/SideScreenPresenter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v11
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/SideScreenPresenter;
    .locals 12

    .line 61
    new-instance v11, Lcom/evie/sidescreen/SideScreenPresenter;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter_Factory;->backgroundModelProvider:Ljavax/inject/Provider;

    .line 62
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/evie/sidescreen/background/BackgroundModel;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter_Factory;->abTestConfigurationModelProvider:Ljavax/inject/Provider;

    .line 63
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter_Factory;->layerStackProvider:Ljavax/inject/Provider;

    .line 64
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/evie/sidescreen/LayerStack;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter_Factory;->announcementModelProvider:Ljavax/inject/Provider;

    .line 65
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/evie/models/announcement/AnnouncementModel;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter_Factory;->sideScreenSharedPreferencesModelProvider:Ljavax/inject/Provider;

    .line 66
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter_Factory;->topicsModelProvider:Ljavax/inject/Provider;

    .line 67
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/evie/models/topics/TopicsModel;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter_Factory;->activationModelProvider:Ljavax/inject/Provider;

    .line 68
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/evie/sidescreen/ActivationModel;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 69
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/evie/sidescreen/ActivityStarter;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter_Factory;->sideScreenConfigurationProvider:Ljavax/inject/Provider;

    .line 70
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/evie/sidescreen/SideScreenConfiguration;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter_Factory;->tabsModelFactoryProvider:Ljavax/inject/Provider;

    .line 71
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/evie/sidescreen/TabsModelFactory;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/evie/sidescreen/SideScreenPresenter;-><init>(Lcom/evie/sidescreen/background/BackgroundModel;Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;Lcom/evie/sidescreen/LayerStack;Lcom/evie/models/announcement/AnnouncementModel;Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;Lcom/evie/models/topics/TopicsModel;Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/SideScreenConfiguration;Lcom/evie/sidescreen/TabsModelFactory;)V

    return-object v11
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenPresenter_Factory;->get()Lcom/evie/sidescreen/SideScreenPresenter;

    move-result-object v0

    return-object v0
.end method
