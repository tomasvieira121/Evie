.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$V3K7zXaF9Pm11aKd9UAyOGy_T6w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

.field private final synthetic f$1:Lcom/voxel/launcher3/LauncherModel$Callbacks;

.field private final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$V3K7zXaF9Pm11aKd9UAyOGy_T6w;->f$0:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$V3K7zXaF9Pm11aKd9UAyOGy_T6w;->f$1:Lcom/voxel/launcher3/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$V3K7zXaF9Pm11aKd9UAyOGy_T6w;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$V3K7zXaF9Pm11aKd9UAyOGy_T6w;->f$0:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$V3K7zXaF9Pm11aKd9UAyOGy_T6w;->f$1:Lcom/voxel/launcher3/LauncherModel$Callbacks;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$V3K7zXaF9Pm11aKd9UAyOGy_T6w;->f$2:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->lambda$onlyBindAllApps$10(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    return-void
.end method
