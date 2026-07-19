.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherModel$z_V1eZvDcUn_-uM5Mn3f4e7Vgxs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/ArrayList;

.field private final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$z_V1eZvDcUn_-uM5Mn3f4e7Vgxs;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$z_V1eZvDcUn_-uM5Mn3f4e7Vgxs;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$z_V1eZvDcUn_-uM5Mn3f4e7Vgxs;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$z_V1eZvDcUn_-uM5Mn3f4e7Vgxs;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/voxel/launcher3/LauncherModel;->lambda$unbindWorkspaceItemsOnMainThread$7(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
