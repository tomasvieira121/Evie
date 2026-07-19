.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Workspace$HMp2dJ5eU-DEPHYWm6oT5_s5zPk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/voxel/launcher3/Workspace$ItemOperator;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Workspace;

.field private final synthetic f$1:Lcom/voxel/launcher3/compat/UserHandleCompat;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$HMp2dJ5eU-DEPHYWm6oT5_s5zPk;->f$0:Lcom/voxel/launcher3/Workspace;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$HMp2dJ5eU-DEPHYWm6oT5_s5zPk;->f$1:Lcom/voxel/launcher3/compat/UserHandleCompat;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$HMp2dJ5eU-DEPHYWm6oT5_s5zPk;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$HMp2dJ5eU-DEPHYWm6oT5_s5zPk;->f$0:Lcom/voxel/launcher3/Workspace;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$HMp2dJ5eU-DEPHYWm6oT5_s5zPk;->f$1:Lcom/voxel/launcher3/compat/UserHandleCompat;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$HMp2dJ5eU-DEPHYWm6oT5_s5zPk;->f$2:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/voxel/launcher3/Workspace;->lambda$updatePackageBadge$22(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/lang/String;Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
