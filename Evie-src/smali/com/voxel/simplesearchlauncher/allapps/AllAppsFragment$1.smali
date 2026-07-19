.class Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$1;
.super Ljava/lang/Object;
.source "AllAppsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onClick$0(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;Landroid/view/View;)V
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getHasOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getAppPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getAppActivityName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->getApp(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->opened:Z

    .line 129
    invoke-virtual {v0, p0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->update(Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0a0039

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 114
    :cond_1
    sget-object v2, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData$ActionType;->CLICK:Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData$ActionType;

    invoke-virtual {v0, v2, v1}, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;->handleAction(Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData$ActionType;Landroid/app/Activity;)V

    .line 116
    instance-of v2, v0, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    if-eqz v2, :cond_2

    .line 117
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "all_apps"

    invoke-virtual {v2, v1, v3, v4}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->recordAppLaunch(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 118
    check-cast v0, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    .line 120
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$000(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Lcom/evie/search/local/LocalSearchManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getAppActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/evie/search/local/LocalSearchManager;->recordAppAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v1, Lcom/voxel/simplesearchlauncher/allapps/-$$Lambda$AllAppsFragment$1$AQBwFJL8Sgh6TLanIaHjUFaz1Xg;

    invoke-direct {v1, v0, p1}, Lcom/voxel/simplesearchlauncher/allapps/-$$Lambda$AllAppsFragment$1$AQBwFJL8Sgh6TLanIaHjUFaz1Xg;-><init>(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
