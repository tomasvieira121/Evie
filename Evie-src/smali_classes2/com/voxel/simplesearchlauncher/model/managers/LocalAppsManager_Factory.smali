.class public final Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager_Factory;
.super Ljava/lang/Object;
.source "LocalAppsManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager_Factory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager_Factory;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager_Factory;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;
    .locals 2

    .line 21
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager_Factory;->get()Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    move-result-object v0

    return-object v0
.end method
