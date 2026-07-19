.class Lcom/voxel/launcher3/Folder$2;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Lcom/voxel/launcher3/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Folder;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Folder;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/voxel/launcher3/Folder$2;->this$0:Lcom/voxel/launcher3/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/voxel/launcher3/Alarm;)V
    .locals 2

    .line 582
    iget-object p1, p0, Lcom/voxel/launcher3/Folder$2;->this$0:Lcom/voxel/launcher3/Folder;

    iget-object p1, p1, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    iget-object v0, p0, Lcom/voxel/launcher3/Folder$2;->this$0:Lcom/voxel/launcher3/Folder;

    iget v0, v0, Lcom/voxel/launcher3/Folder;->mEmptyCellRank:I

    iget-object v1, p0, Lcom/voxel/launcher3/Folder$2;->this$0:Lcom/voxel/launcher3/Folder;

    iget v1, v1, Lcom/voxel/launcher3/Folder;->mTargetRank:I

    invoke-virtual {p1, v0, v1}, Lcom/voxel/launcher3/FolderPagedView;->realTimeReorder(II)V

    .line 583
    iget-object p1, p0, Lcom/voxel/launcher3/Folder$2;->this$0:Lcom/voxel/launcher3/Folder;

    iget v0, p1, Lcom/voxel/launcher3/Folder;->mTargetRank:I

    iput v0, p1, Lcom/voxel/launcher3/Folder;->mEmptyCellRank:I

    return-void
.end method
