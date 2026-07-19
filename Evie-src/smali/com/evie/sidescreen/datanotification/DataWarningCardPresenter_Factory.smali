.class public final Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter_Factory;
.super Ljava/lang/Object;
.source "DataWarningCardPresenter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private final activationModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
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

.field private final lifecycleCallbacksProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final networkStatusModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/network/NetworkStatusModel;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/network/NetworkStatusModel;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter_Factory;->sideScreenSharedPreferencesModelProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p2, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter_Factory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p4, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter_Factory;->activationModelProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p5, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter_Factory;->networkStatusModelProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/network/NetworkStatusModel;",
            ">;)",
            "Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter_Factory;"
        }
    .end annotation

    .line 56
    new-instance v6, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;
    .locals 7

    .line 42
    new-instance v6, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;

    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter_Factory;->sideScreenSharedPreferencesModelProvider:Ljavax/inject/Provider;

    .line 43
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 44
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/evie/sidescreen/analytics/AnalyticsModel;

    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter_Factory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    .line 45
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter_Factory;->activationModelProvider:Ljavax/inject/Provider;

    .line 46
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/evie/sidescreen/ActivationModel;

    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter_Factory;->networkStatusModelProvider:Ljavax/inject/Provider;

    .line 47
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/evie/sidescreen/network/NetworkStatusModel;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;-><init>(Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/network/NetworkStatusModel;)V

    return-object v6
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter_Factory;->get()Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;

    move-result-object v0

    return-object v0
.end method
