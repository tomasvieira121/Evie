.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$-88xr5ejVBageGZ5vn0oaf1oHis;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/LauncherModel$LoaderTask;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/LauncherModel$LoaderTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$-88xr5ejVBageGZ5vn0oaf1oHis;->f$0:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$-88xr5ejVBageGZ5vn0oaf1oHis;->f$0:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->lambda$waitForIdle$0(Lcom/voxel/launcher3/LauncherModel$LoaderTask;)V

    return-void
.end method
