.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$BtYbm6PgdaT8jKfl7Z4KA956E2A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Launcher;

.field private final synthetic f$1:Ljava/util/ArrayList;

.field private final synthetic f$2:Ljava/util/ArrayList;

.field private final synthetic f$3:Ljava/util/ArrayList;

.field private final synthetic f$4:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$BtYbm6PgdaT8jKfl7Z4KA956E2A;->f$0:Lcom/voxel/launcher3/Launcher;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$BtYbm6PgdaT8jKfl7Z4KA956E2A;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$BtYbm6PgdaT8jKfl7Z4KA956E2A;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$BtYbm6PgdaT8jKfl7Z4KA956E2A;->f$3:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$BtYbm6PgdaT8jKfl7Z4KA956E2A;->f$4:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$BtYbm6PgdaT8jKfl7Z4KA956E2A;->f$0:Lcom/voxel/launcher3/Launcher;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$BtYbm6PgdaT8jKfl7Z4KA956E2A;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$BtYbm6PgdaT8jKfl7Z4KA956E2A;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$BtYbm6PgdaT8jKfl7Z4KA956E2A;->f$3:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$BtYbm6PgdaT8jKfl7Z4KA956E2A;->f$4:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/voxel/launcher3/Launcher;->lambda$bindAppsAdded$33(Lcom/voxel/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
