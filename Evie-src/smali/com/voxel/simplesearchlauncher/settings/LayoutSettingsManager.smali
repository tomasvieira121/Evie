.class public Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;
.super Ljava/lang/Object;
.source "LayoutSettingsManager.java"


# static fields
.field private static final ICON_PREF_NAME:Ljava/lang/String;


# instance fields
.field private mDataSetObservable:Landroid/database/DataSetObservable;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mUpgradeComponent:Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil$UpgradableComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".pref"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->ICON_PREF_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$LayoutSettingsManager$SbY0NVEv4pQbMcIu41vrz5lfGn0;->INSTANCE:Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$LayoutSettingsManager$SbY0NVEv4pQbMcIu41vrz5lfGn0;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mUpgradeComponent:Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil$UpgradableComponent;

    .line 52
    sget-object v0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->ICON_PREF_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 53
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->upgradeIfNeeded()V

    .line 54
    new-instance p1, Landroid/database/DataSetObservable;

    invoke-direct {p1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 56
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->migrateOldLayoutSettingsIfAny()V

    return-void
.end method

.method private getPrefixForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Ljava/lang/String;
    .locals 1

    .line 267
    sget-object v0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager$1;->$SwitchMap$com$voxel$launcher3$DeviceProfile$ParamType:[I

    invoke-virtual {p1}, Lcom/voxel/launcher3/DeviceProfile$ParamType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 277
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const-string p1, "folder_"

    return-object p1

    :pswitch_1
    const-string p1, "allapps_"

    return-object p1

    :pswitch_2
    const-string p1, "desktop_"

    return-object p1

    :pswitch_3
    const-string p1, "dock_"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSharedPreferencesKey()Ljava/lang/String;
    .locals 1

    .line 302
    sget-object v0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->ICON_PREF_NAME:Ljava/lang/String;

    return-object v0
.end method

.method private internalSetBackgroundAlpha(Lcom/voxel/launcher3/DeviceProfile$ParamType;F)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getPrefixForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "background_alpha"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private internalSetBackgroundBlur(Lcom/voxel/launcher3/DeviceProfile$ParamType;Z)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getPrefixForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "background_blur"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private internalSetColCount(Lcom/voxel/launcher3/DeviceProfile$ParamType;I)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getPrefixForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "col"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private internalSetContainerEnabled(Lcom/voxel/launcher3/DeviceProfile$ParamType;Z)V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getPrefixForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "container_enabled"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private internalSetInheritDesktop(Lcom/voxel/launcher3/DeviceProfile$ParamType;Z)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getPrefixForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "inherit_desktop"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private internalSetRowCount(Lcom/voxel/launcher3/DeviceProfile$ParamType;I)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getPrefixForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "row"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private internalSetScale(Lcom/voxel/launcher3/DeviceProfile$ParamType;F)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getPrefixForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "scale"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private internalSetShowLabel(Lcom/voxel/launcher3/DeviceProfile$ParamType;Z)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getPrefixForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "show_label"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic lambda$new$0(II)V
    .locals 0

    return-void
.end method

.method private migrateOldLayoutSettingsIfAny()V
    .locals 7

    .line 69
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "row"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "col"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 71
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "scale"

    const/high16 v5, -0x40800000    # -1.0f

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    const/4 v4, 0x1

    if-eq v0, v2, :cond_0

    .line 74
    sget-object v6, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, v6}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getRowCount(Lcom/voxel/launcher3/DeviceProfile$ParamType;)I

    move-result v6

    if-ne v6, v2, :cond_0

    .line 75
    sget-object v6, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-direct {p0, v6, v0}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->internalSetRowCount(Lcom/voxel/launcher3/DeviceProfile$ParamType;I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v1, v2, :cond_1

    .line 78
    sget-object v6, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, v6}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getColCount(Lcom/voxel/launcher3/DeviceProfile$ParamType;)I

    move-result v6

    if-ne v6, v2, :cond_1

    .line 79
    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-direct {p0, v0, v1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->internalSetColCount(Lcom/voxel/launcher3/DeviceProfile$ParamType;I)V

    const/4 v0, 0x1

    :cond_1
    cmpl-float v1, v3, v5

    if-eqz v1, :cond_2

    .line 82
    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getScale(Lcom/voxel/launcher3/DeviceProfile$ParamType;)F

    move-result v1

    cmpl-float v1, v1, v5

    if-nez v1, :cond_2

    .line 83
    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-direct {p0, v0, v3}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->internalSetScale(Lcom/voxel/launcher3/DeviceProfile$ParamType;F)V

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "row"

    .line 89
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "col"

    .line 90
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "scale"

    .line 91
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return-void
.end method

.method private notifyDataChanged()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method private reload(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V
    .locals 1

    .line 165
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/voxel/launcher3/DeviceProfile;->updateCellParams(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V

    .line 166
    invoke-static {}, Lcom/voxel/launcher3/FolderIcon;->onDeviceProfileChanged()V

    .line 167
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherModel;->forceReload()V

    .line 168
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->notifyDataChanged()V

    return-void
.end method


# virtual methods
.method public getBackgroundAlpha(Lcom/voxel/launcher3/DeviceProfile$ParamType;)F
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getPrefixForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "background_alpha"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getBackgroundBlur(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Z
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getPrefixForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "background_blur"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getColCount(Lcom/voxel/launcher3/DeviceProfile$ParamType;)I
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getPrefixForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "col"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getContainerEnabled(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Z
    .locals 3

    .line 217
    sget-object v0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager$1;->$SwitchMap$com$voxel$launcher3$DeviceProfile$ParamType:[I

    invoke-virtual {p1}, Lcom/voxel/launcher3/DeviceProfile$ParamType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 224
    :goto_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getPrefixForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "container_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getInheritDesktop(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Z
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getPrefixForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "inherit_desktop"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;
    .locals 2

    .line 106
    new-instance v0, Lcom/voxel/launcher3/CellParams;

    invoke-direct {v0}, Lcom/voxel/launcher3/CellParams;-><init>()V

    .line 108
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getColCount(Lcom/voxel/launcher3/DeviceProfile$ParamType;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    .line 109
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getRowCount(Lcom/voxel/launcher3/DeviceProfile$ParamType;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/voxel/launcher3/CellParams;->numRows:F

    .line 110
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getScale(Lcom/voxel/launcher3/DeviceProfile$ParamType;)F

    move-result v1

    iput v1, v0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    .line 111
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getShowLabel(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    .line 112
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getContainerEnabled(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/voxel/launcher3/CellParams;->enabled:Z

    .line 113
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getBackgroundAlpha(Lcom/voxel/launcher3/DeviceProfile$ParamType;)F

    move-result v1

    iput v1, v0, Lcom/voxel/launcher3/CellParams;->backgroundAlpha:F

    .line 114
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getBackgroundBlur(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/voxel/launcher3/CellParams;->backgroundBlur:Z

    .line 115
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getInheritDesktop(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/voxel/launcher3/CellParams;->inheritWorkspace:Z

    return-object v0
.end method

.method public getRowCount(Lcom/voxel/launcher3/DeviceProfile$ParamType;)I
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getPrefixForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "row"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getScale(Lcom/voxel/launcher3/DeviceProfile$ParamType;)F
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getPrefixForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "scale"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getShowLabel(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Z
    .locals 3

    .line 199
    sget-object v0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager$1;->$SwitchMap$com$voxel$launcher3$DeviceProfile$ParamType:[I

    invoke-virtual {p1}, Lcom/voxel/launcher3/DeviceProfile$ParamType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getPrefixForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "show_label"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getStoredCellParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/voxel/launcher3/DeviceProfile$ParamType;",
            "Lcom/voxel/launcher3/CellParams;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    sget-object v2, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, v2}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->HOTSEAT:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    sget-object v2, Lcom/voxel/launcher3/DeviceProfile$ParamType;->HOTSEAT:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, v2}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->ALLAPPS:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    sget-object v2, Lcom/voxel/launcher3/DeviceProfile$ParamType;->ALLAPPS:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, v2}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->FOLDER:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    sget-object v2, Lcom/voxel/launcher3/DeviceProfile$ParamType;->FOLDER:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, v2}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public refreshDeviceProfile(Landroid/content/Context;)V
    .locals 3

    .line 172
    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    .line 173
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    .line 174
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/voxel/launcher3/DeviceProfile;->updateCellParams(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V

    .line 175
    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->HOTSEAT:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    .line 176
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    .line 177
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/voxel/launcher3/DeviceProfile;->updateCellParams(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V

    .line 179
    invoke-static {}, Lcom/voxel/launcher3/FolderIcon;->onDeviceProfileChanged()V

    .line 180
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherModel;->forceReload()V

    .line 181
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->notifyDataChanged()V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setLayout(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V
    .locals 5

    .line 124
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getRowCount(Lcom/voxel/launcher3/DeviceProfile$ParamType;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p3, Lcom/voxel/launcher3/CellParams;->numRows:F

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p3, Lcom/voxel/launcher3/CellParams;->numRows:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 125
    iget v0, p3, Lcom/voxel/launcher3/CellParams;->numRows:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->internalSetRowCount(Lcom/voxel/launcher3/DeviceProfile$ParamType;I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 128
    :goto_0
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getColCount(Lcom/voxel/launcher3/DeviceProfile$ParamType;)I

    move-result v1

    int-to-float v1, v1

    iget v4, p3, Lcom/voxel/launcher3/CellParams;->numColumns:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1

    iget v1, p3, Lcom/voxel/launcher3/CellParams;->numColumns:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 129
    iget v0, p3, Lcom/voxel/launcher3/CellParams;->numColumns:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->internalSetColCount(Lcom/voxel/launcher3/DeviceProfile$ParamType;I)V

    const/4 v0, 0x1

    .line 132
    :cond_1
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getScale(Lcom/voxel/launcher3/DeviceProfile$ParamType;)F

    move-result v1

    iget v4, p3, Lcom/voxel/launcher3/CellParams;->iconScale:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_2

    iget v1, p3, Lcom/voxel/launcher3/CellParams;->iconScale:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 133
    iget v0, p3, Lcom/voxel/launcher3/CellParams;->iconScale:F

    invoke-direct {p0, p2, v0}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->internalSetScale(Lcom/voxel/launcher3/DeviceProfile$ParamType;F)V

    const/4 v0, 0x1

    .line 136
    :cond_2
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getShowLabel(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Z

    move-result v1

    iget-boolean v2, p3, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    if-eq v1, v2, :cond_3

    .line 137
    iget-boolean v0, p3, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    invoke-direct {p0, p2, v0}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->internalSetShowLabel(Lcom/voxel/launcher3/DeviceProfile$ParamType;Z)V

    const/4 v0, 0x1

    .line 140
    :cond_3
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getContainerEnabled(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Z

    move-result v1

    iget-boolean v2, p3, Lcom/voxel/launcher3/CellParams;->enabled:Z

    if-eq v1, v2, :cond_4

    .line 141
    iget-boolean v0, p3, Lcom/voxel/launcher3/CellParams;->enabled:Z

    invoke-direct {p0, p2, v0}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->internalSetContainerEnabled(Lcom/voxel/launcher3/DeviceProfile$ParamType;Z)V

    const/4 v0, 0x1

    .line 144
    :cond_4
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getBackgroundAlpha(Lcom/voxel/launcher3/DeviceProfile$ParamType;)F

    move-result v1

    iget v2, p3, Lcom/voxel/launcher3/CellParams;->backgroundAlpha:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    .line 145
    iget v0, p3, Lcom/voxel/launcher3/CellParams;->backgroundAlpha:F

    invoke-direct {p0, p2, v0}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->internalSetBackgroundAlpha(Lcom/voxel/launcher3/DeviceProfile$ParamType;F)V

    const/4 v0, 0x1

    .line 149
    :cond_5
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getBackgroundBlur(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Z

    move-result v1

    iget-boolean v2, p3, Lcom/voxel/launcher3/CellParams;->backgroundBlur:Z

    if-eq v1, v2, :cond_6

    .line 150
    iget-boolean v0, p3, Lcom/voxel/launcher3/CellParams;->backgroundBlur:Z

    invoke-direct {p0, p2, v0}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->internalSetBackgroundBlur(Lcom/voxel/launcher3/DeviceProfile$ParamType;Z)V

    const/4 v0, 0x1

    .line 154
    :cond_6
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getInheritDesktop(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Z

    move-result v1

    iget-boolean v2, p3, Lcom/voxel/launcher3/CellParams;->inheritWorkspace:Z

    if-eq v1, v2, :cond_7

    .line 155
    iget-boolean v0, p3, Lcom/voxel/launcher3/CellParams;->inheritWorkspace:Z

    invoke-direct {p0, p2, v0}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->internalSetInheritDesktop(Lcom/voxel/launcher3/DeviceProfile$ParamType;Z)V

    const/4 v0, 0x1

    :cond_7
    if-eqz v0, :cond_8

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->reload(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V

    :cond_8
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public upgradeIfNeeded()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->mUpgradeComponent:Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil$UpgradableComponent;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil;->processUpgrade(Landroid/content/SharedPreferences;Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil$UpgradableComponent;I)Z

    return-void
.end method
