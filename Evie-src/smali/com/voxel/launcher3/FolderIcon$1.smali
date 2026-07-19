.class Lcom/voxel/launcher3/FolderIcon$1;
.super Landroid/content/BroadcastReceiver;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/FolderIcon;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/FolderIcon;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/voxel/launcher3/FolderIcon$1;->this$0:Lcom/voxel/launcher3/FolderIcon;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 152
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon$1;->this$0:Lcom/voxel/launcher3/FolderIcon;

    invoke-virtual {p1}, Lcom/voxel/launcher3/FolderIcon;->postInvalidate()V

    return-void
.end method
