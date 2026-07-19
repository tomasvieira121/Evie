.class public final Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory_Factory;
.super Ljava/lang/Object;
.source "PlaylistItemPresenterFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)",
            "Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory_Factory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory_Factory;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory;
    .locals 3

    .line 28
    new-instance v0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2}, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory_Factory;->get()Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory;

    move-result-object v0

    return-object v0
.end method
