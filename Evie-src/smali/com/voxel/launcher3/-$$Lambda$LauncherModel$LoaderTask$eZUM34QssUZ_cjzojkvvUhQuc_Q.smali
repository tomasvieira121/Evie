.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$eZUM34QssUZ_cjzojkvvUhQuc_Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

.field private final synthetic f$1:Lcom/voxel/launcher3/LauncherModel$Callbacks;

.field private final synthetic f$2:Ljava/util/ArrayList;

.field private final synthetic f$3:I

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$eZUM34QssUZ_cjzojkvvUhQuc_Q;->f$0:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$eZUM34QssUZ_cjzojkvvUhQuc_Q;->f$1:Lcom/voxel/launcher3/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$eZUM34QssUZ_cjzojkvvUhQuc_Q;->f$2:Ljava/util/ArrayList;

    iput p4, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$eZUM34QssUZ_cjzojkvvUhQuc_Q;->f$3:I

    iput p5, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$eZUM34QssUZ_cjzojkvvUhQuc_Q;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$eZUM34QssUZ_cjzojkvvUhQuc_Q;->f$0:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$eZUM34QssUZ_cjzojkvvUhQuc_Q;->f$1:Lcom/voxel/launcher3/LauncherModel$Callbacks;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$eZUM34QssUZ_cjzojkvvUhQuc_Q;->f$2:Ljava/util/ArrayList;

    iget v3, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$eZUM34QssUZ_cjzojkvvUhQuc_Q;->f$3:I

    iget v4, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$eZUM34QssUZ_cjzojkvvUhQuc_Q;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->lambda$bindWorkspaceItems$4(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V

    return-void
.end method
