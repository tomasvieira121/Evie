.class Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$2;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$2;->this$0:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 130
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$2;->this$0:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->refreshLocalAppsInBackground()V

    return-void
.end method
