.class Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection;
.super Lio/github/luizgrp/sectionedrecyclerviewadapter/StatelessSection;
.source "HideAppsSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfigSection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection$ConfigViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)V
    .locals 1

    .line 183
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;

    const p1, 0x7f0d00a4

    const v0, 0x7f0d00a8

    .line 185
    invoke-direct {p0, p1, v0}, Lio/github/luizgrp/sectionedrecyclerviewadapter/StatelessSection;-><init>(II)V

    return-void
.end method

.method public static synthetic lambda$onBindHeaderViewHolder$0(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 202
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mHideAppsModel:Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->setHiddenSearchable(Z)V

    return-void
.end method


# virtual methods
.method public getContentItemsTotal()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeaderViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 190
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection$ConfigViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection$ConfigViewHolder;-><init>(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection;Landroid/view/View;)V

    return-object v0
.end method

.method public getItemViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 214
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection$1;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection$1;-><init>(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection;Landroid/view/View;)V

    return-object v0
.end method

.method public onBindHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 195
    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection$ConfigViewHolder;

    .line 197
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection$ConfigViewHolder;->mHideFromSearch:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mLabel:Landroid/widget/TextView;

    const v1, 0x7f12005b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 198
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection$ConfigViewHolder;->mHideFromSearch:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSubLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection$ConfigViewHolder;->mHideFromSearch:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSubLabel:Landroid/widget/TextView;

    const v1, 0x7f12005c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 200
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection$ConfigViewHolder;->mHideFromSearch:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mHideAppsModel:Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->isHiddenSearchable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 201
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection$ConfigViewHolder;->mHideFromSearch:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$HideAppsSettingsFragment$ConfigSection$drkk_IJYBErGysoQmbYo1HHCp2I;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$HideAppsSettingsFragment$ConfigSection$drkk_IJYBErGysoQmbYo1HHCp2I;-><init>(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
