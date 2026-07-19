.class public Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;
.super Landroid/widget/LinearLayout;
.source "GridSettingsView.java"


# instance fields
.field private mCellParams:Lcom/voxel/launcher3/CellParams;

.field private mColumnsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

.field private mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

.field private mErrorText:Landroid/widget/TextView;

.field private mIconSizeViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

.field private mInheritViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

.field private mOnInheritChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnProgressChangeListener:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

.field private mParamType:Lcom/voxel/launcher3/DeviceProfile$ParamType;

.field private mRowsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;)Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mIconSizeViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;)Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mOnProgressChangeListener:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

    return-object p0
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iput-boolean p2, v0, Lcom/voxel/launcher3/CellParams;->inheritWorkspace:Z

    .line 89
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mParamType:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/launcher3/DeviceProfile;->updateCellParams(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V

    .line 91
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mRowsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v1, v1, Lcom/voxel/launcher3/CellParams;->numRows:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    .line 92
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mColumnsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v1, v1, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    .line 93
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mIconSizeViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v1, v1, Lcom/voxel/launcher3/CellParams;->iconScale:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    .line 95
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mInheritViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->setControlsEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mOnInheritChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method

.method private limitIconScale(F)I
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mIconSizeViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getMax()I

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mIconSizeViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getMin()I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    .line 201
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private updateIconScaleLimits()V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mIconSizeViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getProgress()I

    move-result v0

    .line 183
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mParamType:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v1, v2, v3}, Lcom/voxel/launcher3/DeviceProfile;->getMaxIconScaleForType(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 187
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mIconSizeViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {v3}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMin(I)V

    .line 188
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mIconSizeViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMax(I)V

    int-to-float v1, v0

    .line 190
    invoke-direct {p0, v1}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->limitIconScale(F)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mIconSizeViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCellParams()Lcom/voxel/launcher3/CellParams;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    return-object v0
.end method

.method public getColumnsViewHolder()Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mColumnsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    return-object v0
.end method

.method public getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    return-object v0
.end method

.method public getErrorText()Landroid/widget/TextView;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getIconSizeViewHolder()Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mIconSizeViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    return-object v0
.end method

.method public getInheritViewHolder()Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mInheritViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    return-object v0
.end method

.method public getOnInheritChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mOnInheritChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method public getOnProgressChangeListener()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mOnProgressChangeListener:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

    return-object v0
.end method

.method public getParamType()Lcom/voxel/launcher3/DeviceProfile$ParamType;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mParamType:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    return-object v0
.end method

.method public getRowsViewHolder()Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mRowsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    return-object v0
.end method

.method public hideErrorText()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mErrorText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 68
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a00e5

    .line 71
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mErrorText:Landroid/widget/TextView;

    .line 72
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    const v1, 0x7f0a016a

    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mInheritViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    .line 73
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    const v1, 0x7f0a00a2

    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mColumnsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    .line 74
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    const v1, 0x7f0a0223

    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mRowsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    .line 75
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    const v1, 0x7f0a0162

    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mIconSizeViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    .line 77
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mInheritViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->getLabel()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1200b6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mInheritViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->getSubLabel()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1200b5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 79
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mInheritViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->getSubLabel()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mColumnsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getLabel()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12005d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mRowsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getLabel()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12005f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mIconSizeViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getLabel()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12005e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mInheritViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->getSwitch()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/gridsettings/-$$Lambda$GridSettingsView$q_IY9iNyp6rHS6kHT7-bfswMXGQ;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/-$$Lambda$GridSettingsView$q_IY9iNyp6rHS6kHT7-bfswMXGQ;-><init>(Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView$1;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView$1;-><init>(Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;)V

    .line 133
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mRowsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setOnProgressChangeListener(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 134
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mColumnsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setOnProgressChangeListener(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 135
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mIconSizeViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setOnProgressChangeListener(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;)V

    return-void
.end method

.method public setControlsEnabled(Z)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mInheritViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mInheritViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mInheritViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->getSwitch()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    and-int/2addr p1, v0

    .line 217
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mRowsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->setEnabled(Z)V

    .line 218
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mColumnsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->setEnabled(Z)V

    .line 219
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mIconSizeViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->setEnabled(Z)V

    return-void
.end method

.method public setOnInheritChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mOnInheritChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setOnProgressChangeListener(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mOnProgressChangeListener:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

    return-void
.end method

.method public setParameters(Lcom/voxel/launcher3/DeviceProfile;Lcom/voxel/launcher3/DeviceProfile$ParamType;)V
    .locals 2

    .line 161
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    .line 162
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mParamType:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    .line 163
    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    .line 165
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mInheritViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->getSwitch()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget-boolean p2, p2, Lcom/voxel/launcher3/CellParams;->inheritWorkspace:Z

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 167
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mColumnsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object p1

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    iget p2, p2, Lcom/voxel/launcher3/DeviceProfile;->numBaseColumns:F

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMin(I)V

    .line 168
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mColumnsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMax(I)V

    .line 169
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mColumnsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v0, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    .line 171
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mRowsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    iget v0, v0, Lcom/voxel/launcher3/DeviceProfile;->numBaseRows:F

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMin(I)V

    .line 172
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mRowsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMax(I)V

    .line 173
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mRowsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object p1

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget p2, p2, Lcom/voxel/launcher3/CellParams;->numRows:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    .line 175
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->updateIconScaleLimits()V

    .line 176
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget p1, p1, Lcom/voxel/launcher3/CellParams;->iconScale:F

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->limitIconScale(F)I

    move-result p1

    .line 177
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mIconSizeViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    return-void
.end method

.method public showErrorText(I)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public updateGrid()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mRowsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getProgress()I

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mColumnsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getProgress()I

    move-result v1

    .line 142
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    int-to-float v0, v0

    iput v0, v2, Lcom/voxel/launcher3/CellParams;->numRows:F

    int-to-float v0, v1

    .line 143
    iput v0, v2, Lcom/voxel/launcher3/CellParams;->numColumns:F

    .line 144
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mParamType:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/launcher3/DeviceProfile;->updateCellParams(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V

    .line 146
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->updateIconScaleLimits()V

    .line 147
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->updateIconSize()V

    return-void
.end method

.method public updateIconSize()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mIconSizeViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 154
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iput v0, v1, Lcom/voxel/launcher3/CellParams;->iconScale:F

    .line 155
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mParamType:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/launcher3/DeviceProfile;->updateCellParams(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V

    return-void
.end method
