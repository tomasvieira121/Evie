.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$WNdnB1SSSbgSkfr6tBGGVKORK8Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/evie/common/dragndrop/DragSink;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$WNdnB1SSSbgSkfr6tBGGVKORK8Y;->f$0:Lcom/voxel/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method public final startDrag(Landroid/view/View;Lcom/evie/common/dragndrop/ItemInfoCommon;Lcom/evie/common/dragndrop/DragSource;)V
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$WNdnB1SSSbgSkfr6tBGGVKORK8Y;->f$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0, p1, p2, p3}, Lcom/voxel/launcher3/Launcher;->lambda$onResume$4(Lcom/voxel/launcher3/Launcher;Landroid/view/View;Lcom/evie/common/dragndrop/ItemInfoCommon;Lcom/evie/common/dragndrop/DragSource;)V

    return-void
.end method
