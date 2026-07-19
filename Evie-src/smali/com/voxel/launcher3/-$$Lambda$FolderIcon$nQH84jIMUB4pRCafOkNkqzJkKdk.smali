.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$FolderIcon$nQH84jIMUB4pRCafOkNkqzJkKdk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/FolderIcon;

.field private final synthetic f$1:Lcom/voxel/launcher3/ShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/FolderIcon;Lcom/voxel/launcher3/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$nQH84jIMUB4pRCafOkNkqzJkKdk;->f$0:Lcom/voxel/launcher3/FolderIcon;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$nQH84jIMUB4pRCafOkNkqzJkKdk;->f$1:Lcom/voxel/launcher3/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$nQH84jIMUB4pRCafOkNkqzJkKdk;->f$0:Lcom/voxel/launcher3/FolderIcon;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$nQH84jIMUB4pRCafOkNkqzJkKdk;->f$1:Lcom/voxel/launcher3/ShortcutInfo;

    invoke-static {v0, v1}, Lcom/voxel/launcher3/FolderIcon;->lambda$onDrop$0(Lcom/voxel/launcher3/FolderIcon;Lcom/voxel/launcher3/ShortcutInfo;)V

    return-void
.end method
