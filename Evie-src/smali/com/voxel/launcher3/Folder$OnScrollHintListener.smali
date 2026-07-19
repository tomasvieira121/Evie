.class Lcom/voxel/launcher3/Folder$OnScrollHintListener;
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
    name = "OnScrollHintListener"
.end annotation


# instance fields
.field private final mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

.field final synthetic this$0:Lcom/voxel/launcher3/Folder;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Folder;Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 0

    .line 1213
    iput-object p1, p0, Lcom/voxel/launcher3/Folder$OnScrollHintListener;->this$0:Lcom/voxel/launcher3/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1214
    iput-object p2, p0, Lcom/voxel/launcher3/Folder$OnScrollHintListener;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/voxel/launcher3/Alarm;)V
    .locals 3

    .line 1222
    iget-object p1, p0, Lcom/voxel/launcher3/Folder$OnScrollHintListener;->this$0:Lcom/voxel/launcher3/Folder;

    iget p1, p1, Lcom/voxel/launcher3/Folder;->mCurrentScrollDir:I

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 1223
    iget-object p1, p0, Lcom/voxel/launcher3/Folder$OnScrollHintListener;->this$0:Lcom/voxel/launcher3/Folder;

    iget-object p1, p1, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {p1}, Lcom/voxel/launcher3/FolderPagedView;->scrollLeft()V

    .line 1224
    iget-object p1, p0, Lcom/voxel/launcher3/Folder$OnScrollHintListener;->this$0:Lcom/voxel/launcher3/Folder;

    iput v0, p1, Lcom/voxel/launcher3/Folder;->mScrollHintDir:I

    goto :goto_0

    .line 1225
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/Folder$OnScrollHintListener;->this$0:Lcom/voxel/launcher3/Folder;

    iget p1, p1, Lcom/voxel/launcher3/Folder;->mCurrentScrollDir:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1226
    iget-object p1, p0, Lcom/voxel/launcher3/Folder$OnScrollHintListener;->this$0:Lcom/voxel/launcher3/Folder;

    iget-object p1, p1, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {p1}, Lcom/voxel/launcher3/FolderPagedView;->scrollRight()V

    .line 1227
    iget-object p1, p0, Lcom/voxel/launcher3/Folder$OnScrollHintListener;->this$0:Lcom/voxel/launcher3/Folder;

    iput v0, p1, Lcom/voxel/launcher3/Folder;->mScrollHintDir:I

    .line 1232
    :goto_0
    iget-object p1, p0, Lcom/voxel/launcher3/Folder$OnScrollHintListener;->this$0:Lcom/voxel/launcher3/Folder;

    iput v0, p1, Lcom/voxel/launcher3/Folder;->mCurrentScrollDir:I

    .line 1235
    iget-object p1, p1, Lcom/voxel/launcher3/Folder;->mScrollPauseAlarm:Lcom/voxel/launcher3/Alarm;

    new-instance v0, Lcom/voxel/launcher3/Folder$OnScrollFinishedListener;

    iget-object v1, p0, Lcom/voxel/launcher3/Folder$OnScrollHintListener;->this$0:Lcom/voxel/launcher3/Folder;

    iget-object v2, p0, Lcom/voxel/launcher3/Folder$OnScrollHintListener;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    invoke-direct {v0, v1, v2}, Lcom/voxel/launcher3/Folder$OnScrollFinishedListener;-><init>(Lcom/voxel/launcher3/Folder;Lcom/voxel/launcher3/DropTarget$DragObject;)V

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/Alarm;->setOnAlarmListener(Lcom/voxel/launcher3/OnAlarmListener;)V

    .line 1236
    iget-object p1, p0, Lcom/voxel/launcher3/Folder$OnScrollHintListener;->this$0:Lcom/voxel/launcher3/Folder;

    iget-object p1, p1, Lcom/voxel/launcher3/Folder;->mScrollPauseAlarm:Lcom/voxel/launcher3/Alarm;

    const-wide/16 v0, 0x384

    invoke-virtual {p1, v0, v1}, Lcom/voxel/launcher3/Alarm;->setAlarm(J)V

    return-void

    :cond_1
    return-void
.end method
