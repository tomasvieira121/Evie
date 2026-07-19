.class public final Lcom/evie/sidescreen/footer/FooterPresenter_Factory;
.super Ljava/lang/Object;
.source "FooterPresenter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/footer/FooterPresenter;",
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

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/evie/sidescreen/footer/FooterPresenter_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lcom/evie/sidescreen/footer/FooterPresenter_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/footer/FooterPresenter_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)",
            "Lcom/evie/sidescreen/footer/FooterPresenter_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/evie/sidescreen/footer/FooterPresenter_Factory;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/footer/FooterPresenter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/footer/FooterPresenter;
    .locals 3

    .line 26
    new-instance v0, Lcom/evie/sidescreen/footer/FooterPresenter;

    iget-object v1, p0, Lcom/evie/sidescreen/footer/FooterPresenter_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/evie/sidescreen/footer/FooterPresenter_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/sidescreen/analytics/AnalyticsModel;

    invoke-direct {v0, v1, v2}, Lcom/evie/sidescreen/footer/FooterPresenter;-><init>(Landroid/content/Context;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/evie/sidescreen/footer/FooterPresenter_Factory;->get()Lcom/evie/sidescreen/footer/FooterPresenter;

    move-result-object v0

    return-object v0
.end method
