.class Lcom/voxel/launcher3/Workspace$DeferredWidgetRefresh;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeferredWidgetRefresh"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

.field private final mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshPending:Z

.field final synthetic this$0:Lcom/voxel/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/Workspace;Ljava/util/ArrayList;Lcom/voxel/launcher3/LauncherAppWidgetHost;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/LauncherAppWidgetInfo;",
            ">;",
            "Lcom/voxel/launcher3/LauncherAppWidgetHost;",
            ")V"
        }
    .end annotation

    .line 5134
    iput-object p1, p0, Lcom/voxel/launcher3/Workspace$DeferredWidgetRefresh;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5135
    iput-object p2, p0, Lcom/voxel/launcher3/Workspace$DeferredWidgetRefresh;->mInfos:Ljava/util/ArrayList;

    .line 5136
    iput-object p3, p0, Lcom/voxel/launcher3/Workspace$DeferredWidgetRefresh;->mHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    .line 5137
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/Workspace$DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 5138
    iput-boolean p1, p0, Lcom/voxel/launcher3/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    .line 5140
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace$DeferredWidgetRefresh;->mHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    invoke-virtual {p1, p0}, Lcom/voxel/launcher3/LauncherAppWidgetHost;->addProviderChangeListener(Ljava/lang/Runnable;)V

    .line 5143
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace$DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x2710

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 5148
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$DeferredWidgetRefresh;->mHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/LauncherAppWidgetHost;->removeProviderChangeListener(Ljava/lang/Runnable;)V

    .line 5149
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5151
    iget-boolean v0, p0, Lcom/voxel/launcher3/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5155
    iput-boolean v0, p0, Lcom/voxel/launcher3/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    .line 5157
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$DeferredWidgetRefresh;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    .line 5158
    iget-object v2, v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v2, v2, Lcom/voxel/launcher3/PendingAppWidgetHostView;

    if-eqz v2, :cond_1

    .line 5159
    iget-object v2, v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v2, Lcom/voxel/launcher3/PendingAppWidgetHostView;

    .line 5160
    iget-object v3, p0, Lcom/voxel/launcher3/Workspace$DeferredWidgetRefresh;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v3}, Lcom/voxel/launcher3/Workspace;->access$000(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/voxel/launcher3/Launcher;->removeAppWidget(Lcom/voxel/launcher3/LauncherAppWidgetInfo;)V

    .line 5162
    invoke-virtual {v2}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/CellLayout;

    .line 5164
    invoke-virtual {v3, v2}, Lcom/voxel/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 5165
    iget-object v2, p0, Lcom/voxel/launcher3/Workspace$DeferredWidgetRefresh;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v2}, Lcom/voxel/launcher3/Workspace;->access$000(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/voxel/launcher3/Launcher;->bindAppWidget(Lcom/voxel/launcher3/LauncherAppWidgetInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method
