.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherModel$5BKACnPCPBMTnenp7Wb7wM6F-eQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/ContentResolver;

.field private final synthetic f$1:Lcom/voxel/launcher3/FolderInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentResolver;Lcom/voxel/launcher3/FolderInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$5BKACnPCPBMTnenp7Wb7wM6F-eQ;->f$0:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$5BKACnPCPBMTnenp7Wb7wM6F-eQ;->f$1:Lcom/voxel/launcher3/FolderInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$5BKACnPCPBMTnenp7Wb7wM6F-eQ;->f$0:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$5BKACnPCPBMTnenp7Wb7wM6F-eQ;->f$1:Lcom/voxel/launcher3/FolderInfo;

    invoke-static {v0, v1}, Lcom/voxel/launcher3/LauncherModel;->lambda$deleteFolderContentsFromDatabase$15(Landroid/content/ContentResolver;Lcom/voxel/launcher3/FolderInfo;)V

    return-void
.end method
