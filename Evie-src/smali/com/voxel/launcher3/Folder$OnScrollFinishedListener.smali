.class Lcom/voxel/launcher3/Folder$OnScrollFinishedListener;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Lcom/voxel/launcher3/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnScrollFinishedListener"
.end annotation


# instance fields
.field private final mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

.field final synthetic this$0:Lcom/voxel/launcher3/Folder;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Folder;Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 0

    .line 1244
    iput-object p1, p0, Lcom/voxel/launcher3/Folder$OnScrollFinishedListener;->this$0:Lcom/voxel/launcher3/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1245
    iput-object p2, p0, Lcom/voxel/launcher3/Folder$OnScrollFinishedListener;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/voxel/launcher3/Alarm;)V
    .locals 2

    .line 1254
    iget-object p1, p0, Lcom/voxel/launcher3/Folder$OnScrollFinishedListener;->this$0:Lcom/voxel/launcher3/Folder;

    iget-object v0, p0, Lcom/voxel/launcher3/Folder$OnScrollFinishedListener;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/voxel/launcher3/Folder;->onDragOver(Lcom/voxel/launcher3/DropTarget$DragObject;I)V

    return-void
.end method
