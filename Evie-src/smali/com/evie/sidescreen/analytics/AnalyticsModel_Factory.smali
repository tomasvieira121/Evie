.class public final Lcom/evie/sidescreen/analytics/AnalyticsModel_Factory;
.super Ljava/lang/Object;
.source "AnalyticsModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/evie/sidescreen/analytics/AnalyticsModel_Factory;->handlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/evie/sidescreen/analytics/AnalyticsModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;)",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel_Factory;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/evie/sidescreen/analytics/AnalyticsModel_Factory;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/analytics/AnalyticsModel_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/analytics/AnalyticsModel;
    .locals 2

    .line 21
    new-instance v0, Lcom/evie/sidescreen/analytics/AnalyticsModel;

    iget-object v1, p0, Lcom/evie/sidescreen/analytics/AnalyticsModel_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-direct {v0, v1}, Lcom/evie/sidescreen/analytics/AnalyticsModel;-><init>(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/evie/sidescreen/analytics/AnalyticsModel_Factory;->get()Lcom/evie/sidescreen/analytics/AnalyticsModel;

    move-result-object v0

    return-object v0
.end method
