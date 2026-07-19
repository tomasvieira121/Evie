.class public Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;
.super Lcom/voxel/simplesearchlauncher/settings/SettingsViewHolder;
.source "SettingsSwitchViewHolder.java"


# instance fields
.field mLabel:Landroid/widget/TextView;

.field mSubLabel:Landroid/widget/TextView;

.field mSwitch:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a017c

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f0a017d

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSubLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0170

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    return-void
.end method


# virtual methods
.method public getLabel()Landroid/widget/TextView;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSubLabel()Landroid/widget/TextView;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSubLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSwitch()Landroidx/appcompat/widget/SwitchCompat;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 4

    .line 30
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsViewHolder;->setEnabled(Z)V

    .line 31
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 33
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mLabel:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz p1, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 34
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSubLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 35
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setAlpha(F)V

    return-void
.end method
