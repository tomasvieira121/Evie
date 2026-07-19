.class public final Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter_Factory;
.super Ljava/lang/Object;
.source "AppsInfoIconFilter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final localAppsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;",
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
            "Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter_Factory;->localAppsManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;",
            ">;)",
            "Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter_Factory;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;
    .locals 3

    .line 26
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter_Factory;->localAppsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-direct {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter_Factory;->get()Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;

    move-result-object v0

    return-object v0
.end method
