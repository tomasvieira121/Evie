.class Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;
.super Landroid/os/AsyncTask;
.source "IntroSlide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private findDefaultItemInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    .line 118
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    .line 119
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-direct {v0, v12, v1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->getDefaultAppInfoForAction(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    const-string v1, "123456789"

    .line 122
    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getLaunchTextIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->getDefaultAppInfoForAction(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 124
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    .line 125
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10008000

    .line 126
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    invoke-direct {v0, v12, v1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->getDefaultAppInfoForAction(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "http://www.google.com"

    .line 131
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 133
    invoke-direct {v0, v12, v1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->getDefaultAppInfoForAction(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 136
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 137
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 138
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    const-string v4, "window"

    .line 139
    invoke-virtual {v12, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 140
    invoke-virtual {v4, v1, v2}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 141
    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 142
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 143
    invoke-virtual {v4, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 146
    new-instance v16, Lcom/voxel/launcher3/DynamicGrid;

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 148
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 149
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v8, v3, Landroid/graphics/Point;->x:I

    iget v9, v3, Landroid/graphics/Point;->y:I

    iget v10, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 151
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSearchBarDesktopEnabled()Z

    move-result v18

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object v3, v4

    move v4, v6

    move/from16 v19, v5

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move/from16 v9, v19

    move-object/from16 v10, v17

    move-object/from16 v20, v11

    move/from16 v11, v18

    invoke-direct/range {v1 .. v11}, Lcom/voxel/launcher3/DynamicGrid;-><init>(Landroid/content/Context;Landroid/content/res/Resources;IIIIIILjava/util/Map;Z)V

    .line 153
    invoke-virtual/range {v16 .. v16}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v1

    sget-object v2, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    iget v1, v1, Lcom/voxel/launcher3/CellParams;->numRows:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v13, :cond_0

    .line 159
    invoke-direct {v0, v12, v13}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->makeShortcutInfoForResolveInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/voxel/launcher3/ShortcutInfo;

    move-result-object v4

    const/4 v5, 0x0

    .line 160
    iput v5, v4, Lcom/voxel/launcher3/ShortcutInfo;->cellX:I

    .line 161
    iput v1, v4, Lcom/voxel/launcher3/ShortcutInfo;->cellY:I

    .line 162
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v14, :cond_1

    .line 165
    invoke-direct {v0, v12, v14}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->makeShortcutInfoForResolveInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/voxel/launcher3/ShortcutInfo;

    move-result-object v4

    .line 166
    iput v2, v4, Lcom/voxel/launcher3/ShortcutInfo;->cellX:I

    .line 167
    iput v1, v4, Lcom/voxel/launcher3/ShortcutInfo;->cellY:I

    .line 168
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v15, :cond_2

    .line 171
    invoke-direct {v0, v12, v15}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->makeShortcutInfoForResolveInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/voxel/launcher3/ShortcutInfo;

    move-result-object v2

    const/4 v4, 0x2

    .line 172
    iput v4, v2, Lcom/voxel/launcher3/ShortcutInfo;->cellX:I

    .line 173
    iput v1, v2, Lcom/voxel/launcher3/ShortcutInfo;->cellY:I

    .line 174
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v20

    goto :goto_0

    :cond_2
    move-object/from16 v2, v20

    :goto_0
    if-eqz v2, :cond_3

    .line 177
    invoke-direct {v0, v12, v2}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->makeShortcutInfoForResolveInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/voxel/launcher3/ShortcutInfo;

    move-result-object v2

    const/4 v4, 0x3

    .line 178
    iput v4, v2, Lcom/voxel/launcher3/ShortcutInfo;->cellX:I

    .line 179
    iput v1, v2, Lcom/voxel/launcher3/ShortcutInfo;->cellY:I

    .line 180
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v3
.end method

.method private getDefaultAppInfoForAction(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 5

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 193
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 194
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "com.android.internal.app.ResolverActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 195
    invoke-direct {p0, p1, v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->getLaunchableAppInfoForResolveInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_2

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 202
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 203
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 204
    invoke-direct {p0, p1, v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->getLaunchableAppInfoForResolveInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_2
    return-object v2
.end method

.method private getLaunchableAppInfoForResolveInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;
    .locals 3

    .line 219
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 224
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 228
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 229
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method private makeShortcutInfoForResolveInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/voxel/launcher3/ShortcutInfo;
    .locals 5

    .line 235
    new-instance v0, Lcom/voxel/launcher3/ShortcutInfo;

    invoke-direct {v0}, Lcom/voxel/launcher3/ShortcutInfo;-><init>()V

    const/4 v1, 0x0

    .line 236
    iput v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->itemType:I

    .line 237
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 238
    iget-object v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    iget-object v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 240
    iget-object v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-wide/16 v1, -0x64

    .line 241
    iput-wide v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->container:J

    const-wide/16 v1, 0x1

    .line 242
    iput-wide v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->screenId:J

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$Result;
    .locals 7

    const/4 v0, 0x0

    .line 88
    aget-object p1, p1, v0

    .line 90
    new-instance v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$Result;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$Result;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;)V

    .line 91
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/importer/LauncherImportHelper;->getAvailableImporters(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;

    .line 95
    iget-object v4, v3, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;->importerInterface:Lcom/voxel/simplesearchlauncher/importer/ImporterInterface;

    invoke-static {v4, p1}, Lcom/voxel/simplesearchlauncher/importer/LauncherImportHelper;->getMainScreenItems(Lcom/voxel/simplesearchlauncher/importer/ImporterInterface;Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/importer/ImportData;

    move-result-object v4

    .line 97
    iget-object v5, v4, Lcom/voxel/simplesearchlauncher/importer/ImportData;->itemInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/voxel/simplesearchlauncher/importer/ImportData;->screens:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    new-instance v5, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;

    invoke-direct {v5}, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;-><init>()V

    .line 102
    iget-object v6, v3, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;->label:Ljava/lang/String;

    iput-object v6, v5, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;->label:Ljava/lang/String;

    .line 103
    iget-object v6, v3, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v6, v5, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 104
    iget-object v3, v3, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;->importerInterface:Lcom/voxel/simplesearchlauncher/importer/ImporterInterface;

    iput-object v3, v5, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;->importerInterface:Lcom/voxel/simplesearchlauncher/importer/ImporterInterface;

    .line 105
    iput-object v4, v5, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;->importData:Lcom/voxel/simplesearchlauncher/importer/ImportData;

    .line 107
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_2
    iput-object v2, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$Result;->importerInfos:Ljava/util/List;

    .line 112
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->findDefaultItemInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$Result;->defaultItemInfos:Ljava/util/List;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->doInBackground([Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$Result;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$Result;)V
    .locals 5

    .line 250
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$Result;->importerInfos:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$102(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;Ljava/util/List;)Ljava/util/List;

    .line 252
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    new-instance v1, Lcom/voxel/simplesearchlauncher/importer/ImportData;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/importer/ImportData;-><init>()V

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$202(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;Lcom/voxel/simplesearchlauncher/importer/ImportData;)Lcom/voxel/simplesearchlauncher/importer/ImportData;

    .line 253
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$200(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Lcom/voxel/simplesearchlauncher/importer/ImportData;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/importer/ImportData;->screens:Ljava/util/Set;

    .line 254
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$200(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Lcom/voxel/simplesearchlauncher/importer/ImportData;

    move-result-object v0

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/importer/ImportData;->screens:Ljava/util/Set;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$200(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Lcom/voxel/simplesearchlauncher/importer/ImportData;

    move-result-object v0

    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$Result;->defaultItemInfos:Ljava/util/List;

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/importer/ImportData;->itemInfos:Ljava/util/List;

    .line 257
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$100(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$Result;->defaultItemInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$Result;->defaultItemInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 258
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$300(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$200(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Lcom/voxel/simplesearchlauncher/importer/ImportData;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$400(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/importer/LauncherImportHelper;->importItems(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/importer/ImportData;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;)V

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {p1, v2}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$502(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;Z)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p1, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$Result;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;->onPostExecute(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$Result;)V

    return-void
.end method
