.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$LKLY7MD3Fc71w_x4Fz3GFw9qDJk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$FolderFragmentListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Launcher;

.field private final synthetic f$1:Lcom/voxel/launcher3/FolderIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/FolderIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$LKLY7MD3Fc71w_x4Fz3GFw9qDJk;->f$0:Lcom/voxel/launcher3/Launcher;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$LKLY7MD3Fc71w_x4Fz3GFw9qDJk;->f$1:Lcom/voxel/launcher3/FolderIcon;

    return-void
.end method


# virtual methods
.method public final onAnimationStarted()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$LKLY7MD3Fc71w_x4Fz3GFw9qDJk;->f$0:Lcom/voxel/launcher3/Launcher;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$LKLY7MD3Fc71w_x4Fz3GFw9qDJk;->f$1:Lcom/voxel/launcher3/FolderIcon;

    invoke-static {v0, v1}, Lcom/voxel/launcher3/Launcher;->lambda$openFolder$28(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/FolderIcon;)V

    return-void
.end method
