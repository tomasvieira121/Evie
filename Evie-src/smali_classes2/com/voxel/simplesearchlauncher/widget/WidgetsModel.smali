.class public Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;
.super Ljava/lang/Object;
.source "WidgetsModel.java"


# instance fields
.field private final mAppNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppWidgetMgr:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

.field private final mIconCache:Lcom/voxel/launcher3/IconCache;

.field private final mIndexer:Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;

.field private final mPackageItemInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRawList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetAndShortcutNameComparator:Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;

.field private final mWidgetsList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxel/launcher3/IconCache;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mAppWidgetMgr:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    .line 60
    new-instance v0, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;

    invoke-direct {v0, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mWidgetAndShortcutNameComparator:Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;

    .line 61
    new-instance v0, Lcom/voxel/simplesearchlauncher/utils/AppNameComparator;

    invoke-direct {v0, p1}, Lcom/voxel/simplesearchlauncher/utils/AppNameComparator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/utils/AppNameComparator;->getAppInfoComparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mAppNameComparator:Ljava/util/Comparator;

    .line 62
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mIconCache:Lcom/voxel/launcher3/IconCache;

    .line 63
    new-instance p2, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;

    invoke-direct {p2, p1}, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mIndexer:Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mRawList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mAppWidgetMgr:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mAppWidgetMgr:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    .line 73
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    .line 74
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    .line 75
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mWidgetAndShortcutNameComparator:Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mWidgetAndShortcutNameComparator:Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;

    .line 76
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mAppNameComparator:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mAppNameComparator:Ljava/util/Comparator;

    .line 77
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mIconCache:Lcom/voxel/launcher3/IconCache;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mIconCache:Lcom/voxel/launcher3/IconCache;

    .line 78
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mIndexer:Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mIndexer:Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;

    .line 79
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mRawList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mRawList:Ljava/util/ArrayList;

    return-void
.end method

.method private getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 270
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private setWidgetsAndShortcuts(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 138
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mRawList:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 149
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 150
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mWidgetAndShortcutNameComparator:Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;->reset()V

    .line 152
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v1

    .line 153
    sget-object v2, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    .line 155
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 156
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 157
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 159
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    .line 164
    instance-of v7, v4, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    .line 165
    move-object v5, v4

    check-cast v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    .line 168
    iget v6, v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->spanX:I

    iget v9, v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 169
    iget v9, v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->spanY:I

    iget v10, v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 171
    iget v10, v1, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int v10, v10

    if-gt v6, v10, :cond_1

    iget v10, v1, Lcom/voxel/launcher3/CellParams;->numRows:F

    float-to-int v10, v10

    if-gt v9, v10, :cond_1

    .line 173
    iget-object v6, v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 174
    iget-object v9, v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 175
    iget-object v10, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mAppWidgetMgr:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v10, v5}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getUser(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v10

    goto :goto_2

    .line 177
    :cond_1
    iget v10, v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->minWidth:I

    if-gt v10, v3, :cond_0

    iget v10, v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->minHeight:I

    if-gt v10, v2, :cond_0

    .line 180
    iget v10, v1, Lcom/voxel/launcher3/CellParams;->numRows:F

    float-to-int v10, v10

    if-le v9, v10, :cond_2

    .line 181
    iget v6, v1, Lcom/voxel/launcher3/CellParams;->numRows:F

    int-to-float v9, v9

    div-float/2addr v6, v9

    float-to-double v9, v6

    .line 182
    iget v6, v1, Lcom/voxel/launcher3/CellParams;->numRows:F

    float-to-int v6, v6

    iput v6, v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->spanY:I

    .line 183
    iget v6, v1, Lcom/voxel/launcher3/CellParams;->numRows:F

    float-to-int v6, v6

    iput v6, v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    .line 184
    iget v6, v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->spanX:I

    int-to-double v11, v6

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v6, v9

    iget v9, v1, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int v9, v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->spanX:I

    .line 185
    iget v6, v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->spanX:I

    iput v6, v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    goto :goto_1

    .line 187
    :cond_2
    iget v9, v1, Lcom/voxel/launcher3/CellParams;->numColumns:F

    int-to-float v6, v6

    div-float/2addr v9, v6

    float-to-double v9, v9

    .line 188
    iget v6, v1, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int v6, v6

    iput v6, v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->spanX:I

    .line 189
    iget v6, v1, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int v6, v6

    iput v6, v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    .line 190
    iget v6, v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    int-to-double v11, v6

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v6, v9

    iget v9, v1, Lcom/voxel/launcher3/CellParams;->numRows:F

    float-to-int v9, v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->spanY:I

    .line 191
    iget v6, v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->spanY:I

    iput v6, v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    .line 193
    :goto_1
    iget-object v6, v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 194
    iget-object v9, v5, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 195
    iget-object v10, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mAppWidgetMgr:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v10, v5}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getUser(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v10

    .line 205
    :goto_2
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/voxel/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->loadLabel(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 207
    :cond_3
    instance-of v9, v4, Landroid/content/pm/ResolveInfo;

    if-eqz v9, :cond_4

    .line 208
    move-object v5, v4

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 209
    new-instance v6, Landroid/content/ComponentName;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 212
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v10

    .line 213
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/voxel/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    move-object v9, v5

    move-object v5, v6

    move-object v6, v8

    move-object v10, v6

    :goto_3
    if-eqz v6, :cond_9

    if-nez v10, :cond_5

    goto/16 :goto_5

    .line 221
    :cond_5
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;

    .line 222
    iget-object v10, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    .line 224
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 226
    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 227
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v10, Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;

    invoke-direct {v10, v9}, Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;-><init>(Ljava/lang/String;)V

    .line 229
    iput-object v5, v10, Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;->title:Ljava/lang/CharSequence;

    .line 230
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mIndexer:Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;

    iget-object v11, v10, Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v11}, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v10, Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;->titleSectionName:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 233
    check-cast v4, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    .line 234
    iget-object v5, v4, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 236
    iget v7, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 237
    iget-object v4, v4, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8, v7}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->getMagicResourceUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v10, Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;->iconUri:Landroid/net/Uri;

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v10, Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;->title:Ljava/lang/CharSequence;

    .line 240
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mIndexer:Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;

    iget-object v5, v10, Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;->titleSectionName:Ljava/lang/String;

    goto :goto_4

    .line 242
    :cond_7
    instance-of v5, v4, Landroid/content/pm/ResolveInfo;

    if-eqz v5, :cond_8

    .line 243
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 245
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 247
    iget v7, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 248
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v8, v4, v7}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->getMagicResourceUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v10, Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;->iconUri:Landroid/net/Uri;

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v10, Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;->title:Ljava/lang/CharSequence;

    .line 251
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mIndexer:Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;

    iget-object v5, v10, Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;->titleSectionName:Ljava/lang/String;

    .line 255
    :cond_8
    :goto_4
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    invoke-virtual {v4, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    :goto_5
    const-string v5, "WidgetsModel"

    const-string v6, "Widget cannot be set for %s."

    const/4 v7, 0x1

    .line 217
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 262
    :cond_a
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mAppNameComparator:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 263
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;

    .line 264
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mWidgetAndShortcutNameComparator:Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_6

    :cond_b
    return-void
.end method


# virtual methods
.method public clone()Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;
    .locals 1

    .line 283
    new-instance v0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;-><init>(Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->clone()Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;

    move-result-object v0

    return-object v0
.end method

.method public getPackageItemInfo(I)Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPackageSize()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSortedWidgets(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public updateAndClone(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;
    .locals 4

    .line 108
    invoke-static {}, Lcom/voxel/launcher3/Utilities;->assertWorkerThread()V

    .line 111
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    invoke-static {p1}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getAllProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 116
    invoke-static {p1, v2}, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v2

    .line 115
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 121
    invoke-direct {p0, p1, v0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->setWidgetsAndShortcuts(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 123
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->isDogfoodBuild()Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/os/TransactionTooLargeException;

    if-nez v0, :cond_1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_2

    .line 134
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->clone()Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;

    move-result-object p1

    return-object p1

    .line 131
    :cond_2
    throw p1

    return-void
.end method
