.class public final synthetic Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$jWh2EVQ0AeLQdr54LzLSgBd-bJI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

.field private final synthetic f$1:Ljava/util/List;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$jWh2EVQ0AeLQdr54LzLSgBd-bJI;->f$0:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$jWh2EVQ0AeLQdr54LzLSgBd-bJI;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$jWh2EVQ0AeLQdr54LzLSgBd-bJI;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$jWh2EVQ0AeLQdr54LzLSgBd-bJI;->f$0:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$jWh2EVQ0AeLQdr54LzLSgBd-bJI;->f$1:Ljava/util/List;

    iget v2, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$jWh2EVQ0AeLQdr54LzLSgBd-bJI;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->lambda$trimNotifications$2(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Ljava/util/List;I)V

    return-void
.end method
