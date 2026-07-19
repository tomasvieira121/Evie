.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherModel$_KWO1weWtcDijqp8eoHcHkepT4E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/LauncherModel;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Ljava/util/ArrayList;

.field private final synthetic f$3:Lcom/voxel/launcher3/LauncherModel$Callbacks;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Lcom/voxel/launcher3/LauncherModel$Callbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$_KWO1weWtcDijqp8eoHcHkepT4E;->f$0:Lcom/voxel/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$_KWO1weWtcDijqp8eoHcHkepT4E;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$_KWO1weWtcDijqp8eoHcHkepT4E;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$_KWO1weWtcDijqp8eoHcHkepT4E;->f$3:Lcom/voxel/launcher3/LauncherModel$Callbacks;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$_KWO1weWtcDijqp8eoHcHkepT4E;->f$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$_KWO1weWtcDijqp8eoHcHkepT4E;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$_KWO1weWtcDijqp8eoHcHkepT4E;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$_KWO1weWtcDijqp8eoHcHkepT4E;->f$3:Lcom/voxel/launcher3/LauncherModel$Callbacks;

    invoke-static {v0, v1, v2, v3}, Lcom/voxel/launcher3/LauncherModel;->lambda$addAndBindAddedWorkspaceApps$6(Lcom/voxel/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Lcom/voxel/launcher3/LauncherModel$Callbacks;)V

    return-void
.end method
