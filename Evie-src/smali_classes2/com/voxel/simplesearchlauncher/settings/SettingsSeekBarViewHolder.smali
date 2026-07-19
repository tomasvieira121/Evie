.class public Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;
.super Lcom/voxel/simplesearchlauncher/settings/SettingsViewHolder;
.source "SettingsSeekBarViewHolder.java"


# instance fields
.field private final mBaseColor:I

.field private final mDisabledColor:I

.field mDiscreteSeekBar:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

.field mLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0174

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f0a025c

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mDiscreteSeekBar:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06008c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mBaseColor:I

    const p1, -0x777778

    .line 32
    iput p1, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mDisabledColor:I

    return-void
.end method


# virtual methods
.method public getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mDiscreteSeekBar:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    return-object v0
.end method

.method public getLabel()Landroid/widget/TextView;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 4

    .line 36
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsViewHolder;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mDiscreteSeekBar:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mDisabledColor:I

    invoke-virtual {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setScrubberColor(I)V

    .line 39
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mDiscreteSeekBar:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mDisabledColor:I

    invoke-virtual {v0, v1, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setThumbColor(II)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mDiscreteSeekBar:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mBaseColor:I

    invoke-virtual {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setScrubberColor(I)V

    .line 42
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mDiscreteSeekBar:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mBaseColor:I

    invoke-virtual {v0, v1, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setThumbColor(II)V

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mDiscreteSeekBar:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setEnabled(Z)V

    .line 46
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mLabel:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz p1, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 47
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mDiscreteSeekBar:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_2
    invoke-virtual {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setAlpha(F)V

    return-void
.end method
