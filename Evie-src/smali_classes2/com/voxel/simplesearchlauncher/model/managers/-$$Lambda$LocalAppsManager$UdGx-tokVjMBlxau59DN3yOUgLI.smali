.class public final synthetic Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$LocalAppsManager$UdGx-tokVjMBlxau59DN3yOUgLI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$LocalAppsManager$UdGx-tokVjMBlxau59DN3yOUgLI;->f$0:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$LocalAppsManager$UdGx-tokVjMBlxau59DN3yOUgLI;->f$0:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->lambda$notifyDataChanged$2(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V

    return-void
.end method
