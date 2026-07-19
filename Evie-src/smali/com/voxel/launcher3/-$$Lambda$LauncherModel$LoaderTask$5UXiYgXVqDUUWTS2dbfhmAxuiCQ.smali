.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$5UXiYgXVqDUUWTS2dbfhmAxuiCQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

.field private final synthetic f$1:Lcom/voxel/launcher3/LauncherModel$Callbacks;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$5UXiYgXVqDUUWTS2dbfhmAxuiCQ;->f$0:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$5UXiYgXVqDUUWTS2dbfhmAxuiCQ;->f$1:Lcom/voxel/launcher3/LauncherModel$Callbacks;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$5UXiYgXVqDUUWTS2dbfhmAxuiCQ;->f$0:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$5UXiYgXVqDUUWTS2dbfhmAxuiCQ;->f$1:Lcom/voxel/launcher3/LauncherModel$Callbacks;

    invoke-static {v0, v1}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->lambda$bindWorkspace$7(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;)V

    return-void
.end method
