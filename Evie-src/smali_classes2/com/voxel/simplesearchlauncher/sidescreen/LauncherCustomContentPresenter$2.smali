.class Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter$2;
.super Ljava/lang/Object;
.source "LauncherCustomContentPresenter.java"

# interfaces
.implements Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;-><init>(Lcom/voxel/launcher3/Launcher;Landroid/content/Context;Lcom/evie/sidescreen/SideScreenSharedDependencies;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter$2;->this$0:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllAppsClick()Z
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter$2;->this$0:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->access$100(Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;)Lcom/voxel/launcher3/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/voxel/launcher3/Launcher;->changeAllAppsVisibility(ZZ)V

    return v1
.end method

.method public onSearchBarClick()Z
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter$2;->this$0:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->access$100(Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;)Lcom/voxel/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getWorkspace()Lcom/voxel/launcher3/Workspace;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/Workspace;->moveToDefaultScreen(Z)Z

    .line 83
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter$2;->this$0:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->access$100(Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;)Lcom/voxel/launcher3/Launcher;

    move-result-object v0

    sget-object v1, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->TAP:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->activateSearch(Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;Z)V

    return v2
.end method

.method public onSettingsClick()Z
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter$2;->this$0:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->access$100(Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;)Lcom/voxel/launcher3/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/Launcher;->onClickSettingsButton(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method
