.class public final Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory_Factory;
.super Ljava/lang/Object;
.source "SearchBarPresenterFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityOverridesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;",
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

.field private final analyticsModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final launcherInfoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/LauncherInfo;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/LauncherInfo;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p2, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory_Factory;->launcherInfoProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p4, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory_Factory;->activityOverridesProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p5, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/LauncherInfo;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)",
            "Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory_Factory;"
        }
    .end annotation

    .line 56
    new-instance v6, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;
    .locals 7

    .line 42
    new-instance v6, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory_Factory;->launcherInfoProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory_Factory;->activityOverridesProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory_Factory;->get()Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;

    move-result-object v0

    return-object v0
.end method
