.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Folder$JG4J-l6ilK_X-J5BP2nNgCZ6hVs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Folder;

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:Lcom/voxel/launcher3/DropTarget$DragObject;

.field private final synthetic f$3:Z

.field private final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Folder;Landroid/view/View;Lcom/voxel/launcher3/DropTarget$DragObject;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$JG4J-l6ilK_X-J5BP2nNgCZ6hVs;->f$0:Lcom/voxel/launcher3/Folder;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$JG4J-l6ilK_X-J5BP2nNgCZ6hVs;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$JG4J-l6ilK_X-J5BP2nNgCZ6hVs;->f$2:Lcom/voxel/launcher3/DropTarget$DragObject;

    iput-boolean p4, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$JG4J-l6ilK_X-J5BP2nNgCZ6hVs;->f$3:Z

    iput-boolean p5, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$JG4J-l6ilK_X-J5BP2nNgCZ6hVs;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$JG4J-l6ilK_X-J5BP2nNgCZ6hVs;->f$0:Lcom/voxel/launcher3/Folder;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$JG4J-l6ilK_X-J5BP2nNgCZ6hVs;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$JG4J-l6ilK_X-J5BP2nNgCZ6hVs;->f$2:Lcom/voxel/launcher3/DropTarget$DragObject;

    iget-boolean v3, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$JG4J-l6ilK_X-J5BP2nNgCZ6hVs;->f$3:Z

    iget-boolean v4, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$JG4J-l6ilK_X-J5BP2nNgCZ6hVs;->f$4:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/voxel/launcher3/Folder;->lambda$onDropCompleted$4(Lcom/voxel/launcher3/Folder;Landroid/view/View;Lcom/voxel/launcher3/DropTarget$DragObject;ZZ)V

    return-void
.end method
