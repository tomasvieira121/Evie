.class public Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;
.super Ljava/lang/Object;
.source "IconPackManager.java"


# static fields
.field private static final ICON_PACK_PREF_NAME:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataSetObservable:Landroid/database/DataSetObservable;

.field private mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mSystemDefault:Lcom/voxel/simplesearchlauncher/iconpack/IconPack;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".pref"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->ICON_PACK_PREF_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    .line 55
    sget-object p2, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->ICON_PACK_PREF_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 56
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->upgradeIfNeeded()V

    .line 57
    new-instance p1, Landroid/database/DataSetObservable;

    invoke-direct {p1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 59
    new-instance p1, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    invoke-direct {p1}, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->mSystemDefault:Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    .line 60
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->mSystemDefault:Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    const-string p2, "System"

    iput-object p2, p1, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->label:Ljava/lang/String;

    .line 61
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/high16 v1, 0x7f0f0000

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p1, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->icon:Landroid/graphics/drawable/Drawable;

    .line 62
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->mSystemDefault:Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->packageName:Ljava/lang/String;

    .line 63
    iput v0, p1, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->versionCode:I

    return-void
.end method

.method private getIconPackForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Z)Lcom/voxel/simplesearchlauncher/iconpack/IconPack;
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getAppByPackageName(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 225
    new-instance p2, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    invoke-direct {p2}, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;-><init>()V

    .line 226
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getLabel()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->label:Ljava/lang/String;

    .line 227
    iput-object v1, p2, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->icon:Landroid/graphics/drawable/Drawable;

    .line 228
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object p1, p2, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->packageName:Ljava/lang/String;

    .line 229
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getVersionCode()I

    move-result p1

    iput p1, p2, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->versionCode:I

    goto :goto_1

    .line 233
    :cond_0
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 234
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    invoke-virtual {p1, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz p3, :cond_1

    .line 242
    invoke-virtual {p1, p2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 245
    :cond_1
    new-instance p2, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    invoke-direct {p2}, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;-><init>()V

    if-eqz v2, :cond_2

    .line 246
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    const-string p3, ""

    :goto_0
    iput-object p3, p2, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->label:Ljava/lang/String;

    .line 247
    iput-object v1, p2, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->icon:Landroid/graphics/drawable/Drawable;

    .line 248
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object p1, p2, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->packageName:Ljava/lang/String;

    .line 249
    iput v0, p2, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->versionCode:I

    :goto_1
    return-object p2

    :catch_0
    return-object v1
.end method

.method public static getSharedPreferencesKey()Ljava/lang/String;
    .locals 1

    .line 261
    sget-object v0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->ICON_PACK_PREF_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getAllIconPacks$0(Lcom/voxel/simplesearchlauncher/iconpack/IconPack;Lcom/voxel/simplesearchlauncher/iconpack/IconPack;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 97
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->label:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 98
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->label:Ljava/lang/String;

    .line 99
    :cond_1
    sget-object p1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-interface {p1, p0, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getAllIconPacks()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/iconpack/IconPack;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 77
    invoke-static {}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;->values()[Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    aget-object v7, v3, v6

    .line 79
    invoke-virtual {v7}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;->makeIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v0, v7, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 80
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v9, v9, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v9, :cond_0

    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    .line 83
    :cond_1
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    const/4 v4, 0x1

    .line 89
    invoke-direct {p0, v3, v0, v4}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->getIconPackForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Z)Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 91
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 95
    :cond_5
    sget-object v0, Lcom/voxel/simplesearchlauncher/iconpack/-$$Lambda$IconPackManager$448sd6S4wcwjjceJ6xxAeoeiI6w;->INSTANCE:Lcom/voxel/simplesearchlauncher/iconpack/-$$Lambda$IconPackManager$448sd6S4wcwjjceJ6xxAeoeiI6w;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 102
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->mSystemDefault:Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    invoke-interface {v1, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object v1
.end method

.method public getCurrentIconPackPackageName()Ljava/lang/String;
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "package_name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentIconPackVersionCode()I
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "version_code"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMarketSearchIntent()Landroid/content/Intent;
    .locals 3

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://search?q=icon%20pack&c=apps"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public notifyDataChanged()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setCurrentIconPack(Lcom/voxel/simplesearchlauncher/iconpack/IconPack;)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "label"

    .line 124
    iget-object v2, p1, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->label:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "package_name"

    .line 125
    iget-object v2, p1, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "version_code"

    .line 126
    iget p1, p1, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->versionCode:I

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->getCurrentIconPackPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 131
    new-instance p1, Lcom/evie/common/iconpack/IconPackFilter;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->getCurrentIconPackPackageName()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->getCurrentIconPackVersionCode()I

    move-result v2

    invoke-direct {p1, v0, v1, v2}, Lcom/evie/common/iconpack/IconPackFilter;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 135
    :goto_0
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/IconCache;->setIconPackFilter(Lcom/evie/common/iconpack/IconPackFilter;)V

    .line 136
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->clearCaches()V

    .line 137
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherModel;->forceReload()V

    .line 139
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->notifyDataChanged()V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public upgradeIfNeeded()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil;->processUpgrade(Landroid/content/SharedPreferences;Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil$UpgradableComponent;I)Z

    return-void
.end method

.method public verifyAndReload()Lcom/voxel/simplesearchlauncher/iconpack/IconPack;
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->mSystemDefault:Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    .line 148
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->getCurrentIconPackPackageName()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->getAllIconPacks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    .line 150
    invoke-virtual {v3}, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->setCurrentIconPack(Lcom/voxel/simplesearchlauncher/iconpack/IconPack;)V

    return-object v0
.end method
