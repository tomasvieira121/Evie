.class public final Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory_Factory;
.super Ljava/lang/Object;
.source "FollowButtonHandlerFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory_Factory;->topicsModelProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)",
            "Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory_Factory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory_Factory;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;
    .locals 3

    .line 27
    new-instance v0, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory_Factory;->topicsModelProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2}, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory_Factory;->get()Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;

    move-result-object v0

    return-object v0
.end method
