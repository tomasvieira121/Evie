.class public final Lcom/evie/sidescreen/TabsModelFactory_Factory;
.super Ljava/lang/Object;
.source "TabsModelFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/TabsModelFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final analyticsModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;"
        }
    .end annotation
.end field

.field private final genericTabModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mainTabModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final sideScreenConfigurationModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenConfigurationModel;",
            ">;"
        }
    .end annotation
.end field

.field private final tabContentModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;",
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
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenConfigurationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/evie/sidescreen/TabsModelFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lcom/evie/sidescreen/TabsModelFactory_Factory;->sideScreenConfigurationModelProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/evie/sidescreen/TabsModelFactory_Factory;->mainTabModelFactoryProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lcom/evie/sidescreen/TabsModelFactory_Factory;->genericTabModelFactoryProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p5, p0, Lcom/evie/sidescreen/TabsModelFactory_Factory;->tabContentModelFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/TabsModelFactory_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenConfigurationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;",
            ">;)",
            "Lcom/evie/sidescreen/TabsModelFactory_Factory;"
        }
    .end annotation

    .line 53
    new-instance v6, Lcom/evie/sidescreen/TabsModelFactory_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/evie/sidescreen/TabsModelFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/TabsModelFactory;
    .locals 7

    .line 39
    new-instance v6, Lcom/evie/sidescreen/TabsModelFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/TabsModelFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/TabsModelFactory_Factory;->sideScreenConfigurationModelProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/TabsModelFactory_Factory;->mainTabModelFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/TabsModelFactory_Factory;->genericTabModelFactoryProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/evie/sidescreen/TabsModelFactory_Factory;->tabContentModelFactoryProvider:Ljavax/inject/Provider;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/evie/sidescreen/TabsModelFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/evie/sidescreen/TabsModelFactory_Factory;->get()Lcom/evie/sidescreen/TabsModelFactory;

    move-result-object v0

    return-object v0
.end method
