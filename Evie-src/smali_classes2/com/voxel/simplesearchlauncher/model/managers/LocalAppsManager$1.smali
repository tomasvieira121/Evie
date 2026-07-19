.class Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$1;
.super Landroid/database/ContentObserver;
.source "LocalAppsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;Landroid/os/Handler;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$1;->this$0:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, p1, v0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$1;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$1;->this$0:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->refreshLocalAppsInBackground()V

    return-void
.end method
