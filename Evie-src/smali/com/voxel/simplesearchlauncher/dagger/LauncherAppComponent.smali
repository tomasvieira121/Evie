.class public abstract Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;
.super Ljava/lang/Object;
.source "LauncherAppComponent.java"

# interfaces
.implements Lcom/evie/sidescreen/SideScreenSharedDependencies;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract inject(Lcom/voxel/launcher3/BaseApplication;)V
.end method

.method public abstract inject(Lcom/voxel/launcher3/FlavorInitializer;)V
.end method

.method public abstract inject(Lcom/voxel/launcher3/LauncherAppState;)V
.end method

.method public abstract inject(Lcom/voxel/launcher3/LauncherModel;)V
.end method

.method public abstract inject(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;)V
.end method

.method public abstract inject(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)V
.end method
