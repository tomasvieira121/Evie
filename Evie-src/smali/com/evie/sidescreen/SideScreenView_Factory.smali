.class public final Lcom/evie/sidescreen/SideScreenView_Factory;
.super Ljava/lang/Object;
.source "SideScreenView_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/SideScreenView;",
        ">;"
    }
.end annotation


# instance fields
.field private final adapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;",
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

.field private final isFullscreenProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isRtlProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final presenterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final searchBarBackgroundModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModelFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final searchBarPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final searchEnabledProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
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

.field private final weatherPresenterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/weather/WeatherPresenter;",
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
            "Lcom/evie/sidescreen/SideScreenPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/weather/WeatherPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenView_Factory;->presenterProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p2, p0, Lcom/evie/sidescreen/SideScreenView_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p3, p0, Lcom/evie/sidescreen/SideScreenView_Factory;->weatherPresenterProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p4, p0, Lcom/evie/sidescreen/SideScreenView_Factory;->isRtlProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p5, p0, Lcom/evie/sidescreen/SideScreenView_Factory;->searchEnabledProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p6, p0, Lcom/evie/sidescreen/SideScreenView_Factory;->isFullscreenProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p7, p0, Lcom/evie/sidescreen/SideScreenView_Factory;->searchBarBackgroundModelFactoryProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p8, p0, Lcom/evie/sidescreen/SideScreenView_Factory;->searchBarPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p9, p0, Lcom/evie/sidescreen/SideScreenView_Factory;->adapterProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p10, p0, Lcom/evie/sidescreen/SideScreenView_Factory;->sideScreenConfigurationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/SideScreenView_Factory;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/weather/WeatherPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenConfiguration;",
            ">;)",
            "Lcom/evie/sidescreen/SideScreenView_Factory;"
        }
    .end annotation

    .line 87
    new-instance v11, Lcom/evie/sidescreen/SideScreenView_Factory;

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

    invoke-direct/range {v0 .. v10}, Lcom/evie/sidescreen/SideScreenView_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v11
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/SideScreenView;
    .locals 12

    .line 63
    new-instance v11, Lcom/evie/sidescreen/SideScreenView;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView_Factory;->presenterProvider:Ljavax/inject/Provider;

    .line 64
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/evie/sidescreen/SideScreenPresenter;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 65
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView_Factory;->weatherPresenterProvider:Ljavax/inject/Provider;

    .line 66
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/evie/sidescreen/weather/WeatherPresenter;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView_Factory;->isRtlProvider:Ljavax/inject/Provider;

    .line 67
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView_Factory;->searchEnabledProvider:Ljavax/inject/Provider;

    .line 68
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView_Factory;->isFullscreenProvider:Ljavax/inject/Provider;

    .line 69
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView_Factory;->searchBarBackgroundModelFactoryProvider:Ljavax/inject/Provider;

    .line 70
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModelFactory;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView_Factory;->searchBarPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 71
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView_Factory;->adapterProvider:Ljavax/inject/Provider;

    .line 72
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView_Factory;->sideScreenConfigurationProvider:Ljavax/inject/Provider;

    .line 73
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/evie/sidescreen/SideScreenConfiguration;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/evie/sidescreen/SideScreenView;-><init>(Lcom/evie/sidescreen/SideScreenPresenter;Landroid/content/Context;Lcom/evie/sidescreen/weather/WeatherPresenter;ZZZLcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModelFactory;Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;Lcom/evie/sidescreen/SideScreenConfiguration;)V

    return-object v11
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenView_Factory;->get()Lcom/evie/sidescreen/SideScreenView;

    move-result-object v0

    return-object v0
.end method
