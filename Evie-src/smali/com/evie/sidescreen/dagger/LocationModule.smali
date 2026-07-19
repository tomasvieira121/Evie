.class public Lcom/evie/sidescreen/dagger/LocationModule;
.super Ljava/lang/Object;
.source "LocationModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesLocationHandler()Lcom/voxel/simplesearchlauncher/api/LocationHandler;
    .locals 1

    .line 20
    invoke-static {}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->getInstance()Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    move-result-object v0

    return-object v0
.end method
