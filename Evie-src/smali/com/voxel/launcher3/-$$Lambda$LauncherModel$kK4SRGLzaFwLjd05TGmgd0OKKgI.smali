.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherModel$kK4SRGLzaFwLjd05TGmgd0OKKgI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/LauncherModel;

.field private final synthetic f$1:Lcom/voxel/launcher3/ShortcutInfo;

.field private final synthetic f$2:Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$kK4SRGLzaFwLjd05TGmgd0OKKgI;->f$0:Lcom/voxel/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$kK4SRGLzaFwLjd05TGmgd0OKKgI;->f$1:Lcom/voxel/launcher3/ShortcutInfo;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$kK4SRGLzaFwLjd05TGmgd0OKKgI;->f$2:Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$kK4SRGLzaFwLjd05TGmgd0OKKgI;->f$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$kK4SRGLzaFwLjd05TGmgd0OKKgI;->f$1:Lcom/voxel/launcher3/ShortcutInfo;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$kK4SRGLzaFwLjd05TGmgd0OKKgI;->f$2:Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/LauncherModel;->lambda$updateDeepShortcutInfo$19(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;)V

    return-void
.end method
