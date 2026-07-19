.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$MH0VhMJwmhZ9AhZ9aL1Tn5xh5WU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

.field private final synthetic f$1:Lcom/voxel/launcher3/LauncherModel$Callbacks;

.field private final synthetic f$2:Lcom/voxel/launcher3/LauncherAppWidgetInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Lcom/voxel/launcher3/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$MH0VhMJwmhZ9AhZ9aL1Tn5xh5WU;->f$0:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$MH0VhMJwmhZ9AhZ9aL1Tn5xh5WU;->f$1:Lcom/voxel/launcher3/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$MH0VhMJwmhZ9AhZ9aL1Tn5xh5WU;->f$2:Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$MH0VhMJwmhZ9AhZ9aL1Tn5xh5WU;->f$0:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$MH0VhMJwmhZ9AhZ9aL1Tn5xh5WU;->f$1:Lcom/voxel/launcher3/LauncherModel$Callbacks;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$MH0VhMJwmhZ9AhZ9aL1Tn5xh5WU;->f$2:Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->lambda$bindWorkspaceItems$6(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Lcom/voxel/launcher3/LauncherAppWidgetInfo;)V

    return-void
.end method
