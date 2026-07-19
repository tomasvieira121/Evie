.class Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection$ConfigViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HideAppsSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfigViewHolder"
.end annotation


# instance fields
.field mHideFromSearch:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

.field final synthetic this$1:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection;Landroid/view/View;)V
    .locals 1

    .line 227
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection$ConfigViewHolder;->this$1:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection;

    .line 228
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 229
    new-instance p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    const v0, 0x7f0a0150

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection$ConfigViewHolder;->mHideFromSearch:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    return-void
.end method
