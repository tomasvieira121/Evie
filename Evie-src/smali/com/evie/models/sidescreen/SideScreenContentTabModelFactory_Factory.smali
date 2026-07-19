.class public final Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory_Factory;
.super Ljava/lang/Object;
.source "SideScreenContentTabModelFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final arg0Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final arg1Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/sidescreen/SideScreenContentAPI;",
            ">;"
        }
    .end annotation
.end field

.field private final arg2Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final arg3Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/AbTestConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final arg4Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final arg5Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/api/LocationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final arg6Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/sidescreen/SideScreenContentAPI;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/AbTestConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/api/LocationHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory_Factory;->arg0Provider:Ljavax/inject/Provider;

    .line 40
    iput-object p2, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory_Factory;->arg1Provider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory_Factory;->arg2Provider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory_Factory;->arg3Provider:Ljavax/inject/Provider;

    .line 43
    iput-object p5, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory_Factory;->arg4Provider:Ljavax/inject/Provider;

    .line 44
    iput-object p6, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory_Factory;->arg5Provider:Ljavax/inject/Provider;

    .line 45
    iput-object p7, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory_Factory;->arg6Provider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory_Factory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/sidescreen/SideScreenContentAPI;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/AbTestConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/api/LocationHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory_Factory;"
        }
    .end annotation

    .line 68
    new-instance v8, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory_Factory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method


# virtual methods
.method public get()Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;
    .locals 9

    .line 50
    new-instance v8, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;

    iget-object v1, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory_Factory;->arg0Provider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory_Factory;->arg1Provider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory_Factory;->arg2Provider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory_Factory;->arg3Provider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory_Factory;->arg4Provider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory_Factory;->arg5Provider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory_Factory;->arg6Provider:Ljavax/inject/Provider;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory_Factory;->get()Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;

    move-result-object v0

    return-object v0
.end method
