.class Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NotificationSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigViewHolder"
.end annotation


# instance fields
.field mBadgeStyle:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

.field mIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;",
            ">;"
        }
    .end annotation
.end field

.field mSizeSeek:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .line 470
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;->mIcons:Ljava/util/List;

    const/4 v0, 0x4

    .line 473
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 480
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v1

    .line 481
    sget-object v2, Lcom/voxel/launcher3/DeviceProfile$ParamType;->ALLAPPS:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    .line 483
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v0, v3

    .line 484
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    .line 485
    invoke-virtual {v4, v1}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    .line 486
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;->mIcons:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 489
    :cond_0
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    const v1, 0x7f0a005f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;->mSizeSeek:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    .line 490
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    const v1, 0x7f0a0060

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;->mBadgeStyle:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    return-void

    :array_0
    .array-data 4
        0x7f0a0159
        0x7f0a015a
        0x7f0a015b
        0x7f0a015c
    .end array-data
.end method
