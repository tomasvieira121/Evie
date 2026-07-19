.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$-p6La6hTpXv01UtHvHx5czN1Et0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Launcher;

.field private final synthetic f$1:Lcom/voxel/launcher3/PendingAppWidgetHostView;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Lcom/voxel/launcher3/LauncherAppWidgetInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/PendingAppWidgetHostView;Ljava/lang/String;Lcom/voxel/launcher3/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$-p6La6hTpXv01UtHvHx5czN1Et0;->f$0:Lcom/voxel/launcher3/Launcher;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$-p6La6hTpXv01UtHvHx5czN1Et0;->f$1:Lcom/voxel/launcher3/PendingAppWidgetHostView;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$-p6La6hTpXv01UtHvHx5czN1Et0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$-p6La6hTpXv01UtHvHx5czN1Et0;->f$3:Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$-p6La6hTpXv01UtHvHx5czN1Et0;->f$0:Lcom/voxel/launcher3/Launcher;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$-p6La6hTpXv01UtHvHx5czN1Et0;->f$1:Lcom/voxel/launcher3/PendingAppWidgetHostView;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$-p6La6hTpXv01UtHvHx5czN1Et0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$-p6La6hTpXv01UtHvHx5czN1Et0;->f$3:Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/voxel/launcher3/Launcher;->lambda$onClickPendingWidget$24(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/PendingAppWidgetHostView;Ljava/lang/String;Lcom/voxel/launcher3/LauncherAppWidgetInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method
