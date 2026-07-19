.class Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$1;
.super Ljava/lang/Object;
.source "HideAppsSettingsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)V
    .locals 1

    .line 93
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$1;->mCollator:Ljava/text/Collator;

    .line 97
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$1;->mCollator:Ljava/text/Collator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;)I
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$1;->mCollator:Ljava/text/Collator;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appLabel:Ljava/lang/String;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appLabel:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 93
    check-cast p1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    check-cast p2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$1;->compare(Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;)I

    move-result p1

    return p1
.end method
