.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$XblgOfvxNl34ZCj5WB90i_Fl7pE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/RemoveDropTarget;

.field private final synthetic f$1:Lcom/voxel/launcher3/DropTarget$DragObject;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/RemoveDropTarget;Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$XblgOfvxNl34ZCj5WB90i_Fl7pE;->f$0:Lcom/voxel/launcher3/RemoveDropTarget;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$XblgOfvxNl34ZCj5WB90i_Fl7pE;->f$1:Lcom/voxel/launcher3/DropTarget$DragObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$XblgOfvxNl34ZCj5WB90i_Fl7pE;->f$0:Lcom/voxel/launcher3/RemoveDropTarget;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$XblgOfvxNl34ZCj5WB90i_Fl7pE;->f$1:Lcom/voxel/launcher3/DropTarget$DragObject;

    invoke-static {v0, v1}, Lcom/voxel/launcher3/RemoveDropTarget;->lambda$onFlingToDelete$3(Lcom/voxel/launcher3/RemoveDropTarget;Lcom/voxel/launcher3/DropTarget$DragObject;)V

    return-void
.end method
