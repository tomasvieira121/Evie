.class public final Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory_Factory;
.super Ljava/lang/Object;
.source "SideScreenGenericTabSectionModelFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataWarningCardProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final enableDataDebugProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final footerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/footer/FooterPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final plainHeaderPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final tilesSectionFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/TilesSectionFactory;",
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
            "Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/TilesSectionFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/footer/FooterPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenterFactory;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory_Factory;->dataWarningCardProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory_Factory;->tilesSectionFactoryProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory_Factory;->enableDataDebugProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory_Factory;->footerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p5, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory_Factory;->plainHeaderPresenterFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/TilesSectionFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/footer/FooterPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenterFactory;",
            ">;)",
            "Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory_Factory;"
        }
    .end annotation

    .line 57
    new-instance v6, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;
    .locals 7

    .line 43
    new-instance v6, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory_Factory;->dataWarningCardProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory_Factory;->tilesSectionFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory_Factory;->enableDataDebugProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory_Factory;->footerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory_Factory;->plainHeaderPresenterFactoryProvider:Ljavax/inject/Provider;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory_Factory;->get()Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;

    move-result-object v0

    return-object v0
.end method
