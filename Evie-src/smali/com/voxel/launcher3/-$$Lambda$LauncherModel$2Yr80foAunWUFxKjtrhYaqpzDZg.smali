.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherModel$2Yr80foAunWUFxKjtrhYaqpzDZg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/LauncherModel;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/LauncherModel;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$2Yr80foAunWUFxKjtrhYaqpzDZg;->f$0:Lcom/voxel/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$2Yr80foAunWUFxKjtrhYaqpzDZg;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$2Yr80foAunWUFxKjtrhYaqpzDZg;->f$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$2Yr80foAunWUFxKjtrhYaqpzDZg;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/voxel/launcher3/LauncherModel;->lambda$recheckRestoredItems$18(Lcom/voxel/launcher3/LauncherModel;Landroid/content/Context;)V

    return-void
.end method
