.class Lcom/voxel/simplesearchlauncher/api/LocationHandler$1;
.super Ljava/lang/Object;
.source "LocationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/api/LocationHandler;->handleReconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/api/LocationHandler;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/api/LocationHandler;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler$1;->this$0:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler$1;->this$0:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->connectToGms()V

    return-void
.end method
