.class public Lcom/voxel/launcher3/Hotseat;
.super Landroid/widget/FrameLayout;
.source "Hotseat.java"


# instance fields
.field private mAllAppsButtonRank:I

.field private mBackgroundView:Landroid/view/View;

.field private mContent:Lcom/voxel/launcher3/CellLayout;

.field private mIsLandscape:Z

.field private mLauncher:Lcom/voxel/launcher3/Launcher;

.field private mTransposeLayoutWithOrientation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/launcher3/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f050011

    .line 60
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/voxel/launcher3/Hotseat;->mTransposeLayoutWithOrientation:Z

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/voxel/launcher3/Hotseat;->mIsLandscape:Z

    return-void
.end method

.method private hasVerticalHotseat()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/voxel/launcher3/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/voxel/launcher3/Hotseat;->mTransposeLayoutWithOrientation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getBackgroundView()Landroid/view/View;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/voxel/launcher3/Hotseat;->mBackgroundView:Landroid/view/View;

    return-object v0
.end method

.method public getCellParams()Lcom/voxel/launcher3/CellParams;
    .locals 2

    .line 172
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    .line 174
    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->HOTSEAT:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    return-object v0
.end method

.method getCellXFromOrder(I)I
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/voxel/launcher3/Hotseat;->hasVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method getCellYFromOrder(I)I
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/voxel/launcher3/Hotseat;->hasVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/launcher3/Hotseat;->mContent:Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->getCountY()I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getLayout()Lcom/voxel/launcher3/CellLayout;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/voxel/launcher3/Hotseat;->mContent:Lcom/voxel/launcher3/CellLayout;

    return-object v0
.end method

.method getOrderInHotseat(II)I
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/voxel/launcher3/Hotseat;->hasVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/voxel/launcher3/Hotseat;->mContent:Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->getCountY()I

    move-result p1

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method public hasIcons()Z
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/voxel/launcher3/Hotseat;->mContent:Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isAllAppsButtonRank(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 146
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 147
    invoke-virtual {p0}, Lcom/voxel/launcher3/Hotseat;->refreshLayout()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 181
    iget-object p1, p0, Lcom/voxel/launcher3/Hotseat;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getWorkspace()Lcom/voxel/launcher3/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/Workspace;->workspaceInModalState()Z

    move-result p1

    return p1
.end method

.method public refreshLayout()V
    .locals 4

    .line 151
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    .line 153
    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->HOTSEAT:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    .line 155
    iget v2, v0, Lcom/voxel/launcher3/DeviceProfile;->hotseatAllAppsRank:I

    iput v2, p0, Lcom/voxel/launcher3/Hotseat;->mAllAppsButtonRank:I

    const v2, 0x7f0a0178

    .line 156
    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/CellLayout;

    iput-object v2, p0, Lcom/voxel/launcher3/Hotseat;->mContent:Lcom/voxel/launcher3/CellLayout;

    .line 157
    iget-boolean v2, v0, Lcom/voxel/launcher3/DeviceProfile;->isLandscape:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DeviceProfile;->isLargeTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/voxel/launcher3/Hotseat;->mContent:Lcom/voxel/launcher3/CellLayout;

    iget v2, v1, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int v2, v2

    invoke-virtual {v0, v3, v2}, Lcom/voxel/launcher3/CellLayout;->setGridSize(II)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Hotseat;->mContent:Lcom/voxel/launcher3/CellLayout;

    iget v2, v1, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/voxel/launcher3/CellLayout;->setGridSize(II)V

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/voxel/launcher3/Hotseat;->mContent:Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/CellLayout;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    .line 164
    invoke-virtual {p0}, Lcom/voxel/launcher3/Hotseat;->resetLayout()V

    return-void
.end method

.method resetLayout()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/voxel/launcher3/Hotseat;->mContent:Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->removeAllViewsInLayout()V

    return-void
.end method

.method public setBackgroundView(Landroid/view/View;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/voxel/launcher3/Hotseat;->mBackgroundView:Landroid/view/View;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/voxel/launcher3/Hotseat;->mContent:Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setup(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/voxel/launcher3/Hotseat;->mLauncher:Lcom/voxel/launcher3/Launcher;

    return-void
.end method
