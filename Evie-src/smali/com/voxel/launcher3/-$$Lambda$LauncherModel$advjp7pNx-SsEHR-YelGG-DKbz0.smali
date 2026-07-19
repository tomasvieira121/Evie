.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherModel$advjp7pNx-SsEHR-YelGG-DKbz0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/LauncherModel;

.field private final synthetic f$1:Lcom/voxel/launcher3/LauncherModel$Callbacks;

.field private final synthetic f$2:Ljava/util/ArrayList;

.field private final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$advjp7pNx-SsEHR-YelGG-DKbz0;->f$0:Lcom/voxel/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$advjp7pNx-SsEHR-YelGG-DKbz0;->f$1:Lcom/voxel/launcher3/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$advjp7pNx-SsEHR-YelGG-DKbz0;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$advjp7pNx-SsEHR-YelGG-DKbz0;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$advjp7pNx-SsEHR-YelGG-DKbz0;->f$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$advjp7pNx-SsEHR-YelGG-DKbz0;->f$1:Lcom/voxel/launcher3/LauncherModel$Callbacks;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$advjp7pNx-SsEHR-YelGG-DKbz0;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$advjp7pNx-SsEHR-YelGG-DKbz0;->f$3:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/voxel/launcher3/LauncherModel;->lambda$addAppsToAllApps$4(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
