.class Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;
.super Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;

.field private mMaxItemId:J

.field private mMaxScreenId:J

.field private mNewDbCreated:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/16 v2, 0x17

    .line 458
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-wide/16 v0, -0x1

    .line 452
    iput-wide v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 453
    iput-wide v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    const/4 v2, 0x0

    .line 455
    iput-boolean v2, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mNewDbCreated:Z

    .line 459
    iput-object p1, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 460
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 461
    new-instance v2, Landroid/appwidget/AppWidgetHost;

    const/16 v3, 0x400

    invoke-direct {v2, p1, v3}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 465
    iget-wide v2, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 468
    :cond_0
    iget-wide v2, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_1

    .line 469
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxScreenId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/content/ContentValues;)Z
    .locals 0

    .line 418
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->initializeExternalAdd(Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Lcom/voxel/launcher3/LauncherProvider$WorkspaceLoader;)I
    .locals 0

    .line 418
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/voxel/launcher3/LauncherProvider$WorkspaceLoader;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;ILjava/util/ArrayList;)I
    .locals 0

    .line 418
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->loadFavoritesRecursive(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;ILjava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)V
    .locals 0

    .line 418
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->migrateLauncher2Shortcuts(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)V

    return-void
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/XmlResourceParser;)J
    .locals 6

    const-string v0, "packageName"

    .line 1830
    invoke-static {p3, v0}, Lcom/voxel/launcher3/LauncherProvider;->access$900(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "className"

    .line 1831
    invoke-static {p3, v1}, Lcom/voxel/launcher3/LauncherProvider;->access$900(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "uri"

    .line 1832
    invoke-static {p3, v2}, Lcom/voxel/launcher3/LauncherProvider;->access$900(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1834
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p3, 0x0

    .line 1839
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    iget-object v5, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v2, p3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1842
    :catch_0
    :try_start_1
    iget-object v2, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v0, v5, p3

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1844
    new-instance v5, Landroid/content/ComponentName;

    aget-object v2, v2, p3

    invoke-direct {v5, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    iget-object v2, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5, p3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p3

    move-object v2, v5

    .line 1847
    :goto_0
    invoke-static {}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->buildMainIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1848
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x10200000

    .line 1849
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1852
    iget-object v2, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p3, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, v5}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/Intent;)J

    move-result-wide p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide p1

    :catch_1
    move-exception p1

    const-string p2, "LauncherProvider"

    .line 1855
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to add favorite: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v3

    .line 1859
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1861
    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->addAppShortcutByUri(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1

    :cond_1
    const-string p1, "LauncherProvider"

    const-string p2, "Skipping invalid <favorite> with no component or uri"

    .line 1863
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v3
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/Intent;)J
    .locals 4

    .line 1870
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->generateNewItemId()J

    move-result-wide v0

    const-string v2, "intent"

    const/4 v3, 0x0

    .line 1871
    invoke-virtual {p4, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "title"

    .line 1872
    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "itemType"

    .line 1873
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "spanX"

    const/4 p4, 0x1

    .line 1874
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "spanY"

    .line 1875
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "_id"

    .line 1876
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "favorites"

    const/4 p4, 0x0

    .line 1877
    invoke-static {p0, p1, p3, p4, p2}, Lcom/voxel/launcher3/LauncherProvider;->access$400(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long v2, p1, p3

    if-gez v2, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    return-wide v0
.end method

.method private addAppShortcutByUri(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    .line 1756
    :try_start_0
    invoke-static {p3, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p3
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1762
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v3, 0x10000

    invoke-virtual {v0, p3, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1764
    iget-object v4, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p3, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1769
    invoke-direct {p0, v0, v3}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1771
    invoke-direct {p0, v3}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->getSingleSystemActivity(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "LauncherProvider"

    .line 1775
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No preference or single system activity found for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1775
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    .line 1781
    :cond_0
    iget-object p3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1782
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    const/high16 v1, 0x10200000

    .line 1786
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1789
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p3, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/Intent;)J

    move-result-wide p1

    return-wide p1

    :catch_0
    move-exception p1

    const-string p2, "LauncherProvider"

    .line 1758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add meta-favorite: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v1
.end method

.method private addAppWidget(Landroid/content/res/XmlResourceParser;ILandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "packageName"

    .line 1927
    invoke-static {p1, p2}, Lcom/voxel/launcher3/LauncherProvider;->access$900(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "className"

    .line 1928
    invoke-static {p1, v0}, Lcom/voxel/launcher3/LauncherProvider;->access$900(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1935
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 1937
    :try_start_0
    iget-object v4, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v2, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1939
    :catch_0
    iget-object v2, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    new-array v4, v3, [Ljava/lang/String;

    aput-object p2, v4, v1

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1941
    new-instance v2, Landroid/content/ComponentName;

    aget-object p2, p2, v1

    invoke-direct {v2, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    :try_start_1
    iget-object p2, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1945
    :catch_1
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find widget provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_6

    const-string p2, "spanX"

    .line 1951
    invoke-static {p1, p2}, Lcom/voxel/launcher3/LauncherProvider;->access$900(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "spanY"

    .line 1952
    invoke-static {p1, v0}, Lcom/voxel/launcher3/LauncherProvider;->access$900(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "spanX"

    .line 1954
    invoke-virtual {p4, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "spanY"

    .line 1955
    invoke-virtual {p4, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1959
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 1960
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 1961
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_1

    goto :goto_2

    .line 1979
    :cond_1
    invoke-direct {p0, p3, p4, v2, p2}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_2
    :goto_2
    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "extra"

    .line 1966
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "key"

    .line 1967
    invoke-static {p1, v1}, Lcom/voxel/launcher3/LauncherProvider;->access$900(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "value"

    .line 1968
    invoke-static {p1, v3}, Lcom/voxel/launcher3/LauncherProvider;->access$900(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 1970
    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1972
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Widget extras must have a key and value"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1975
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Widgets can contain only extras"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return v1

    :cond_7
    :goto_3
    return v1
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 6

    .line 1988
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 1991
    :try_start_0
    iget-object v2, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v2

    const-string v3, "itemType"

    const/4 v4, 0x4

    .line 1993
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "appWidgetId"

    .line 1994
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "appWidgetProvider"

    .line 1995
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_id"

    .line 1996
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->generateNewItemId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "favorites"

    const/4 v4, 0x0

    .line 1997
    invoke-static {p0, p1, v3, v4, p2}, Lcom/voxel/launcher3/LauncherProvider;->access$400(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 v1, 0x1

    .line 2002
    invoke-virtual {v0, v2, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    if-eqz p4, :cond_0

    .line 2005
    invoke-virtual {p4}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2006
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2007
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2008
    invoke-virtual {p1, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p2, "appWidgetId"

    .line 2009
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2010
    iget-object p2, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "LauncherProvider"

    const-string p3, "Problem allocating appWidgetId"

    .line 2013
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v1
.end method

.method private addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 5

    const-string v0, "itemType"

    const/4 v1, 0x2

    .line 1885
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "spanX"

    const/4 v1, 0x1

    .line 1886
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "spanY"

    .line 1887
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1888
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->generateNewItemId()J

    move-result-wide v0

    const-string v2, "_id"

    .line 1889
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "favorites"

    const/4 v3, 0x0

    .line 1890
    invoke-static {p0, p1, v2, v3, p2}, Lcom/voxel/launcher3/LauncherProvider;->access$400(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-gtz v4, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    return-wide v0
.end method

.method private addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z
    .locals 2

    .line 1049
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1051
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE favorites ADD COLUMN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " INTEGER NOT NULL DEFAULT "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_1
    const-string p3, "LauncherProvider"

    .line 1055
    invoke-virtual {p2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, 0x0

    .line 1058
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return p2

    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1059
    throw p2
.end method

.method private addProfileColumn(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    .line 1040
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object v0

    .line 1044
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v1

    .line 1043
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/voxel/launcher3/compat/UserHandleCompat;)J

    move-result-wide v0

    const-string v2, "profileId"

    .line 1045
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method private addScreenIdIfNecessary(J)Z
    .locals 4

    .line 1421
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->hasScreenId(J)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1422
    invoke-direct {p0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->getMaxScreenRank()I

    move-result v0

    add-int/2addr v0, v1

    .line 1424
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "_id"

    .line 1425
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "screenRank"

    .line 1426
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1427
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "workspaceScreens"

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v2}, Lcom/voxel/launcher3/LauncherProvider;->access$400(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method private addToFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/util/ArrayList;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1667
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 1668
    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1669
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 1673
    :cond_3
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1675
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "container"

    .line 1676
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "favorite"

    .line 1685
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_4

    cmp-long v3, p5, v4

    if-ltz v3, :cond_4

    .line 1686
    invoke-direct {p0, p1, v2, p3}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/XmlResourceParser;)J

    move-result-wide v1

    cmp-long v3, v1, v4

    if-ltz v3, :cond_0

    .line 1688
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v3, "shortcut"

    .line 1690
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    cmp-long v3, p5, v4

    if-ltz v3, :cond_5

    .line 1691
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)J

    move-result-wide v1

    cmp-long v3, v1, v4

    if-ltz v3, :cond_0

    .line 1693
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string v2, "include"

    .line 1695
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    cmp-long v1, p5, v4

    if-ltz v1, :cond_6

    .line 1696
    invoke-direct/range {p0 .. p6}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->addToFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/util/ArrayList;J)V

    goto :goto_0

    .line 1698
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Folders can contain only shortcuts"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method private addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)J
    .locals 9

    const-string v0, "icon"

    const/4 v1, 0x0

    .line 2021
    invoke-static {p4, v0, v1}, Lcom/voxel/launcher3/LauncherProvider;->access$800(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "title"

    .line 2022
    invoke-static {p4, v2, v1}, Lcom/voxel/launcher3/LauncherProvider;->access$800(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    :try_start_0
    const-string v6, "uri"

    .line 2027
    invoke-static {p4, v6}, Lcom/voxel/launcher3/LauncherProvider;->access$900(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2028
    :try_start_1
    invoke-static {p4, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p4
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2039
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->generateNewItemId()J

    move-result-wide v6

    const/high16 v8, 0x10000000

    .line 2040
    invoke-virtual {p4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v8, "intent"

    .line 2041
    invoke-virtual {p4, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, v8, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "title"

    .line 2042
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "itemType"

    const/4 v2, 0x1

    .line 2043
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, p4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p4, "spanX"

    .line 2044
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, p4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p4, "spanY"

    .line 2045
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, p4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p4, "iconType"

    .line 2046
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p4, "iconPackage"

    .line 2047
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "iconResource"

    .line 2048
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "_id"

    .line 2049
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "favorites"

    .line 2051
    invoke-static {p0, p1, p3, v3, p2}, Lcom/voxel/launcher3/LauncherProvider;->access$400(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    return-wide v4

    :cond_1
    return-wide v6

    :cond_2
    :goto_0
    const-string p1, "LauncherProvider"

    const-string p2, "Shortcut is missing title or icon resource ID"

    .line 2035
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :catch_0
    move-object v3, p4

    :catch_1
    const-string p1, "LauncherProvider"

    .line 2030
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Shortcut has malformed uri: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4
.end method

.method private addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE workspaceScreens (_id INTEGER PRIMARY KEY,screenRank INTEGER,modified INTEGER NOT NULL DEFAULT 0);"

    .line 567
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1467
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_2

    .line 1475
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1476
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected start tag: found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", expected "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1472
    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    return-void
.end method

.method private static buildMainIntent()Landroid/content/Intent;
    .locals 3

    .line 1482
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 1483
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private convertDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Lcom/voxel/launcher3/LauncherProvider$ContentValuesCallback;Z)Z
    .locals 8

    .line 638
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p2

    .line 642
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v7

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 650
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 651
    invoke-direct {p0, p1, v1, p3}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Lcom/voxel/launcher3/LauncherProvider$ContentValuesCallback;)I

    move-result p3

    if-lez p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    if-eqz p4, :cond_1

    .line 653
    invoke-virtual {v0, p2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 658
    throw p1

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 664
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 667
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    :cond_3
    return v2
.end method

.method private convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    .line 1299
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    const/4 v1, 0x3

    .line 1300
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-string v2, "itemType"

    .line 1306
    invoke-static {v2, v1}, Lcom/voxel/launcher3/LauncherProvider;->access$700(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v6

    .line 1310
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x0

    :try_start_0
    const-string v4, "favorites"

    const-string v2, "_id"

    const-string v3, "itemType"

    .line 1313
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1318
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 1319
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 1320
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    .line 1321
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1325
    :try_start_2
    iget-object v8, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v8}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v8

    .line 1331
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    const-string v9, "itemType"

    const/4 v10, 0x4

    .line 1332
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "appWidgetId"

    .line 1333
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v9, 0x3e9

    if-ne v7, v9, :cond_1

    const-string v11, "spanX"

    .line 1337
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "spanY"

    .line 1338
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_1
    const-string v6, "spanX"

    const/4 v10, 0x2

    .line 1340
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "spanY"

    .line 1341
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1344
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "favorites"

    .line 1345
    invoke-virtual {p1, v5, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v4, 0x3e8

    if-ne v7, v4, :cond_2

    .line 1349
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.alarmclock"

    const-string v6, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    goto :goto_0

    :cond_2
    const/16 v4, 0x3ea

    if-ne v7, v4, :cond_3

    .line 1354
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.camera"

    const-string v6, "com.android.camera.PhotoAppWidgetProvider"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    goto/16 :goto_0

    :cond_3
    if-ne v7, v9, :cond_0

    .line 1360
    invoke-direct {p0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->getSearchWidgetProvider()Landroid/content/ComponentName;

    move-result-object v4

    .line 1359
    invoke-virtual {v0, v8, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "LauncherProvider"

    const-string v6, "Problem allocating appWidgetId"

    .line 1363
    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1367
    :cond_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1371
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v2, :cond_5

    .line 1373
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_2
    :try_start_4
    const-string v2, "LauncherProvider"

    const-string v3, "Problem while allocating appWidgetIds for existing widgets"

    .line 1369
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1371
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v1, :cond_5

    .line 1373
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1378
    :cond_5
    :goto_3
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    return-void

    .line 1371
    :goto_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v2, :cond_6

    .line 1373
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1375
    :cond_6
    throw v0

    return-void

    nop

    :array_0
    .array-data 4
        0x3e8
        0x3ea
        0x3e9
    .end array-data
.end method

.method private copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Lcom/voxel/launcher3/LauncherProvider$ContentValuesCallback;)I
    .locals 23

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "_id"

    .line 675
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "intent"

    .line 676
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "title"

    .line 677
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "iconType"

    .line 678
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "icon"

    .line 679
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "iconPackage"

    .line 680
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "iconResource"

    .line 681
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "container"

    .line 682
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "itemType"

    .line 683
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "screen"

    .line 684
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "cellX"

    .line 685
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "cellY"

    .line 686
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "uri"

    .line 687
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "displayMode"

    .line 688
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 690
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [Landroid/content/ContentValues;

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 692
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v18, v1

    .line 693
    new-instance v1, Landroid/content/ContentValues;

    move/from16 v19, v15

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v15

    invoke-direct {v1, v15}, Landroid/content/ContentValues;-><init>(I)V

    const-string v15, "_id"

    .line 694
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move/from16 v22, v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "intent"

    .line 695
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title"

    .line 696
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "iconType"

    .line 697
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "icon"

    .line 698
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "iconPackage"

    .line 699
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "iconResource"

    .line 700
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "container"

    .line 701
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "itemType"

    .line 702
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "appWidgetId"

    const/4 v15, -0x1

    .line 703
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "screen"

    .line 704
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cellX"

    .line 705
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cellY"

    .line 706
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "uri"

    .line 707
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "displayMode"

    move/from16 v15, v19

    .line 708
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p3

    if-eqz v0, :cond_0

    .line 710
    invoke-interface {v0, v1}, Lcom/voxel/launcher3/LauncherProvider$ContentValuesCallback;->onRow(Landroid/content/ContentValues;)V

    :cond_0
    add-int/lit8 v2, v17, 0x1

    .line 712
    aput-object v1, v18, v17

    move/from16 v17, v2

    move-object/from16 v1, v18

    move/from16 v2, v22

    move-object/from16 v0, p2

    goto/16 :goto_0

    :cond_1
    move-object/from16 v18, v1

    if-lez v17, :cond_4

    .line 717
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move-object/from16 v0, v18

    .line 719
    :try_start_0
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    const-string v4, "favorites"

    const/4 v5, 0x0

    .line 721
    aget-object v6, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    :try_start_1
    invoke-static {v7, v8, v4, v5, v6}, Lcom/voxel/launcher3/LauncherProvider;->access$400(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-gez v6, :cond_2

    .line 729
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v16

    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 727
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 729
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move/from16 v16, v3

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 730
    throw v0

    :cond_4
    move-object/from16 v7, p0

    :goto_3
    return v16
.end method

.method private getMaxScreenRank()I
    .locals 3

    .line 1447
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT MAX(screenRank) FROM workspaceScreens"

    const/4 v2, 0x0

    .line 1448
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1454
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1455
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 1458
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v1
.end method

.method private getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 6

    .line 1910
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1911
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1913
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 1915
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    .line 1916
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getSearchWidgetProvider()Landroid/content/ComponentName;
    .locals 2

    .line 1898
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "search"

    .line 1899
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1900
    invoke-virtual {v0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1902
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private getSingleSystemActivity(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 1794
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 1797
    :try_start_0
    iget-object v5, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1798
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1797
    invoke-virtual {v5, v6, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 1799
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    if-eqz v4, :cond_0

    return-object v2

    .line 1803
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "LauncherProvider"

    const-string v1, "Unable to get info about fetch results"

    .line 1807
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :cond_2
    return-object v4
.end method

.method private hasScreenId(J)Z
    .locals 3

    .line 1434
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM workspaceScreens WHERE _id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1438
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1439
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-lez v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2

    :cond_1
    return p2
.end method

.method private initializeExternalAdd(Landroid/content/ContentValues;)Z
    .locals 6

    .line 1384
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->generateNewItemId()J

    move-result-wide v0

    const-string v2, "_id"

    .line 1385
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "itemType"

    .line 1389
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1391
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const-string v0, "appWidgetId"

    .line 1392
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1394
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    const-string v1, "appWidgetProvider"

    .line 1396
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1395
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1400
    :try_start_0
    iget-object v3, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v3

    const-string v4, "appWidgetId"

    .line 1401
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1402
    invoke-virtual {v0, v3, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return v2

    :catch_0
    move-exception p1

    const-string v0, "LauncherProvider"

    const-string v1, "Failed to initialize external widget"

    .line 1406
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_0
    return v2

    :cond_1
    const-string v0, "screen"

    .line 1415
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1416
    invoke-direct {p0, v0, v1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->addScreenIdIfNecessary(J)Z

    move-result p1

    return p1
.end method

.method private initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4

    const-string v0, "SELECT MAX(_id) FROM favorites"

    const/4 v1, 0x0

    .line 1232
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_0

    .line 1237
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 1238
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 1241
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    return-wide v2

    .line 1245
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Error: could not query max item id"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initializeMaxScreenId(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4

    const-string v0, "SELECT MAX(_id) FROM workspaceScreens"

    const/4 v1, 0x0

    .line 1273
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_0

    .line 1278
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 1279
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 1282
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    const-string p1, "LauncherProvider"

    .line 1290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "11683562 - initializeMaxScreenId(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-wide v2

    .line 1286
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Error: could not query max screen id"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic lambda$onCreate$0(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "container"

    .line 537
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    const-string v0, "screen"

    .line 539
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 540
    invoke-direct {p0, v0, v1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->upgradeLauncherDb_permuteScreens(J)J

    move-result-wide v0

    long-to-int v0, v0

    const-string v1, "screen"

    .line 541
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/voxel/launcher3/LauncherProvider$WorkspaceLoader;)I
    .locals 8

    .line 1488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1490
    invoke-interface {p2, p1, v0}, Lcom/voxel/launcher3/LauncherProvider$WorkspaceLoader;->loadLayout(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I

    move-result p2

    .line 1493
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1495
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1496
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1497
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    const-string v4, "_id"

    .line 1498
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "screenRank"

    .line 1499
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "workspaceScreens"

    const/4 v4, 0x0

    .line 1500
    invoke-static {p0, p1, v3, v4, v1}, Lcom/voxel/launcher3/LauncherProvider;->access$400(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1501
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed initialize screen tablefrom default layout"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1508
    :cond_1
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 1509
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxScreenId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    return p2
.end method

.method private loadFavoritesRecursive(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;ILjava/util/ArrayList;)I
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 1524
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/4 v5, 0x0

    .line 1529
    :try_start_0
    invoke-virtual/range {p2 .. p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    const-string v7, "favorites"

    .line 1530
    invoke-static {v6, v7}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1532
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v8, 0x0

    .line 1535
    :goto_0
    :try_start_1
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 1536
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    if-le v11, v7, :cond_16

    :cond_0
    const/4 v11, 0x1

    if-eq v9, v11, :cond_16

    const/4 v12, 0x2

    if-eq v9, v12, :cond_1

    move/from16 v14, p3

    goto :goto_0

    .line 1543
    :cond_1
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "include"

    .line 1545
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string v9, "workspace"

    .line 1547
    invoke-static {v6, v9, v5}, Lcom/voxel/launcher3/LauncherProvider;->access$800(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_2

    move/from16 v14, p3

    if-eq v9, v14, :cond_3

    .line 1554
    invoke-direct {v1, v0, v2, v9, v3}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->loadFavoritesRecursive(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;ILjava/util/ArrayList;)I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_0

    :cond_2
    move/from16 v14, p3

    :cond_3
    const-string v10, "LauncherProvider"

    const-string v12, "Skipping <include workspace=0x%08x>"

    .line 1557
    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v11, v5

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move/from16 v14, p3

    const-string v15, "container"

    .line 1566
    invoke-static {v6, v15}, Lcom/voxel/launcher3/LauncherProvider;->access$900(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-wide/16 v16, -0x64

    if-eqz v15, :cond_5

    .line 1568
    invoke-static {v15}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    goto :goto_1

    :cond_5
    move-wide/from16 v18, v16

    :goto_1
    const-string v15, "screen"

    .line 1571
    invoke-static {v6, v15}, Lcom/voxel/launcher3/LauncherProvider;->access$900(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v5, "x"

    .line 1572
    invoke-static {v6, v5}, Lcom/voxel/launcher3/LauncherProvider;->access$900(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v11, "y"

    .line 1573
    invoke-static {v6, v11}, Lcom/voxel/launcher3/LauncherProvider;->access$900(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1575
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    const-string v12, "container"

    .line 1576
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "screen"

    .line 1577
    invoke-virtual {v4, v10, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "cellX"

    .line 1578
    invoke-virtual {v4, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "cellY"

    .line 1579
    invoke-virtual {v4, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "favorite"

    .line 1592
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v10, 0x0

    if-eqz v5, :cond_7

    .line 1593
    invoke-direct {v1, v0, v4, v6}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/XmlResourceParser;)J

    move-result-wide v12

    cmp-long v5, v12, v10

    if-ltz v5, :cond_6

    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_7
    const-string v5, "appwidget"

    .line 1595
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1596
    invoke-direct {v1, v6, v9, v0, v4}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/content/res/XmlResourceParser;ILandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v5

    goto/16 :goto_5

    :cond_8
    const-string v5, "shortcut"

    .line 1597
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1598
    invoke-direct {v1, v0, v4, v2, v6}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)J

    move-result-wide v12

    cmp-long v5, v12, v10

    if-ltz v5, :cond_9

    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_a
    const-string v5, "fetch"

    .line 1600
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1605
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    const/4 v9, 0x0

    .line 1606
    :goto_2
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_c

    .line 1607
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v5, :cond_b

    const/4 v13, 0x2

    goto :goto_3

    :cond_b
    move v5, v9

    goto/16 :goto_5

    :cond_c
    const/4 v13, 0x2

    :goto_3
    if-eq v12, v13, :cond_d

    goto :goto_2

    .line 1611
    :cond_d
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    if-nez v9, :cond_10

    const-string v13, "favorite"

    .line 1613
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 1614
    invoke-direct {v1, v0, v4, v6}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/XmlResourceParser;)J

    move-result-wide v12

    cmp-long v9, v12, v10

    if-ltz v9, :cond_e

    const/4 v9, 0x1

    goto :goto_4

    :cond_e
    const/4 v9, 0x0

    goto :goto_4

    :cond_f
    const-string v13, "LauncherProvider"

    .line 1617
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fallback groups can contain only favorites, found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_4
    const-wide/16 v10, 0x0

    goto :goto_2

    :cond_11
    const-string v5, "folder"

    .line 1622
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1624
    invoke-direct {v1, v0, v4, v2, v6}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->loadFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v5

    goto :goto_5

    :cond_12
    const-string v5, "partner-folder"

    .line 1626
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1628
    iget-object v5, v1, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v5}, Lcom/voxel/launcher3/Partner;->get(Landroid/content/pm/PackageManager;)Lcom/voxel/launcher3/Partner;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 1630
    invoke-virtual {v5}, Lcom/voxel/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "partner_folder"

    const-string v11, "xml"

    .line 1632
    invoke-virtual {v5}, Lcom/voxel/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1631
    invoke-virtual {v9, v10, v11, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_13

    .line 1634
    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    const-string v10, "folder"

    .line 1635
    invoke-static {v5, v10}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1636
    invoke-direct {v1, v0, v4, v9, v5}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->loadFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v5

    goto :goto_5

    :cond_13
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_15

    .line 1641
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1643
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    cmp-long v5, v18, v16

    if-nez v5, :cond_14

    .line 1645
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_14
    add-int/lit8 v8, v8, 0x1

    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    const/4 v8, 0x0

    :goto_6
    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    .line 1655
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catch_4
    move-exception v0

    const/4 v8, 0x0

    :goto_7
    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    .line 1653
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catch_5
    move-exception v0

    const/4 v8, 0x0

    :goto_8
    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    .line 1651
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    :goto_9
    return v8
.end method

.method private loadFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v0, "title"

    const/4 v9, 0x0

    move-object/from16 v3, p4

    .line 1709
    invoke-static {v3, v0, v9}, Lcom/voxel/launcher3/LauncherProvider;->access$800(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v2, p3

    .line 1711
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v10, p0

    goto :goto_0

    :cond_0
    move-object/from16 v10, p0

    move-object/from16 v2, p3

    .line 1713
    iget-object v0, v10, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "title"

    .line 1716
    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    invoke-direct/range {p0 .. p2}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v11

    const/4 v13, 0x1

    const-wide/16 v14, 0x0

    cmp-long v0, v11, v14

    if-ltz v0, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    .line 1720
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v5

    move-object/from16 p3, v5

    move-wide v5, v11

    .line 1721
    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->addToFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/util/ArrayList;J)V

    .line 1726
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    cmp-long v0, v11, v14

    if-ltz v0, :cond_3

    .line 1728
    invoke-static {v7, v11, v12}, Lcom/voxel/launcher3/LauncherProvider;->access$1000(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1732
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v13, :cond_2

    .line 1733
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "container"

    .line 1734
    invoke-static {v8, v0, v1}, Lcom/voxel/launcher3/LauncherProvider;->access$1100(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "screen"

    .line 1735
    invoke-static {v8, v0, v1}, Lcom/voxel/launcher3/LauncherProvider;->access$1100(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "cellX"

    .line 1736
    invoke-static {v8, v0, v1}, Lcom/voxel/launcher3/LauncherProvider;->access$1100(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "cellY"

    .line 1737
    invoke-static {v8, v0, v1}, Lcom/voxel/launcher3/LauncherProvider;->access$1100(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    move-object/from16 v1, p3

    .line 1739
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "favorites"

    .line 1740
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v7, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const/16 v16, 0x0

    :cond_3
    :goto_2
    return v16
.end method

.method private migrateLauncher2Shortcuts(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)V
    .locals 39

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2058
    iget-object v0, v1, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    const-string v8, "title ASC"

    move-object/from16 v4, p2

    .line 2064
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1d

    .line 2072
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1c

    const-string v6, "_id"

    .line 2073
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "intent"

    .line 2075
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "title"

    .line 2077
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "iconType"

    .line 2079
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "icon"

    .line 2081
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "iconPackage"

    .line 2083
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "iconResource"

    .line 2085
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "container"

    .line 2087
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "itemType"

    .line 2089
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "screen"

    .line 2091
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v0, "cellX"

    .line 2093
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v4, "cellY"

    .line 2095
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "uri"

    .line 2097
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v2, "displayMode"

    .line 2099
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "profileId"

    .line 2101
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2107
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v17

    .line 2108
    invoke-virtual/range {v17 .. v17}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v17

    move/from16 v18, v5

    invoke-virtual/range {v17 .. v17}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v5

    move/from16 v17, v12

    .line 2109
    sget-object v12, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v5, v12}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v12

    iget v12, v12, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int v12, v12

    move/from16 v19, v12

    .line 2110
    sget-object v12, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v5, v12}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v12

    iget v12, v12, Lcom/voxel/launcher3/CellParams;->numRows:F

    float-to-int v12, v12

    move/from16 v20, v12

    .line 2111
    sget-object v12, Lcom/voxel/launcher3/DeviceProfile$ParamType;->HOTSEAT:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v5, v12}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v12

    iget v12, v12, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int v12, v12

    move/from16 v21, v12

    .line 2113
    new-instance v12, Ljava/util/HashSet;

    move-object/from16 v22, v5

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v12, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 2115
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v23, v5

    .line 2116
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v24, v5

    .line 2117
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 2119
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    move-object/from16 v26, v5

    if-eqz v25, :cond_c

    .line 2120
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move/from16 v27, v14

    const/4 v14, 0x2

    if-eqz v5, :cond_0

    move/from16 v28, v11

    const/4 v11, 0x1

    if-eq v5, v11, :cond_1

    if-eq v5, v14, :cond_1

    move-object/from16 v5, v26

    move/from16 v14, v27

    move/from16 v11, v28

    goto :goto_1

    :cond_0
    move/from16 v28, v11

    .line 2127
    :cond_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 2128
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move/from16 v29, v0

    .line 2129
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v30, v4

    .line 2130
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move/from16 v31, v13

    .line 2131
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move/from16 v32, v7

    .line 2133
    iget-object v7, v1, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object v7

    move/from16 v33, v15

    const/4 v15, -0x1

    if-eq v2, v15, :cond_2

    .line 2136
    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-nez v34, :cond_2

    .line 2137
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move/from16 v35, v9

    move/from16 v36, v10

    int-to-long v9, v15

    .line 2138
    invoke-virtual {v7, v9, v10}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v7

    move-wide/from16 v37, v9

    goto :goto_2

    :cond_2
    move/from16 v35, v9

    move/from16 v36, v10

    .line 2142
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v9

    .line 2143
    invoke-virtual {v7, v9}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/voxel/launcher3/compat/UserHandleCompat;)J

    move-result-wide v37

    move-object v7, v9

    :goto_2
    const-string v9, "LauncherProvider"

    .line 2145
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "migrating \""

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2146
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\" ("

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ","

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "@"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2148
    invoke-static {v4}, Lcom/voxel/launcher3/LauncherSettings$Favorites;->containerToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "): "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x1

    .line 2145
    invoke-static {v9, v10, v15}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v9, 0x2

    if-eq v5, v9, :cond_8

    const/4 v9, 0x0

    .line 2157
    :try_start_2
    invoke-static {v13, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2165
    :try_start_3
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 2166
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v0, "LauncherProvider"

    const-string v4, "skipping empty intent"

    const/4 v5, 0x1

    .line 2168
    invoke-static {v0, v4, v5}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v5, v26

    move/from16 v14, v27

    move/from16 v11, v28

    move/from16 v0, v29

    move/from16 v4, v30

    move/from16 v13, v31

    move/from16 v7, v32

    move/from16 v15, v33

    move/from16 v9, v35

    move/from16 v10, v36

    goto/16 :goto_1

    :cond_3
    if-eqz v9, :cond_5

    .line 2170
    iget-object v15, v1, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 2171
    invoke-static {v15, v9, v7}, Lcom/voxel/launcher3/LauncherModel;->isValidPackageActivity(Landroid/content/Context;Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v0, "LauncherProvider"

    const-string v4, "skipping item whose component no longer exists."

    const/4 v5, 0x1

    .line 2174
    invoke-static {v0, v4, v5}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v5, v26

    move/from16 v14, v27

    move/from16 v11, v28

    move/from16 v0, v29

    move/from16 v4, v30

    move/from16 v13, v31

    move/from16 v7, v32

    move/from16 v15, v33

    move/from16 v9, v35

    move/from16 v10, v36

    goto/16 :goto_1

    :cond_4
    const/16 v7, -0x64

    goto :goto_3

    :cond_5
    const/16 v7, -0x64

    :goto_3
    if-ne v4, v7, :cond_7

    const/4 v7, 0x0

    .line 2184
    invoke-virtual {v10, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v9, 0x0

    .line 2185
    invoke-virtual {v10, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    .line 2186
    invoke-virtual {v12, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v0, "LauncherProvider"

    const-string v4, "skipping duplicate"

    const/4 v5, 0x1

    .line 2187
    invoke-static {v0, v4, v5}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v5, v26

    move/from16 v14, v27

    move/from16 v11, v28

    move/from16 v0, v29

    move/from16 v4, v30

    move/from16 v13, v31

    move/from16 v7, v32

    move/from16 v15, v33

    move/from16 v9, v35

    move/from16 v10, v36

    goto/16 :goto_1

    .line 2190
    :cond_6
    invoke-virtual {v12, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    goto :goto_4

    :catch_1
    const-string v0, "LauncherProvider"

    const-string v4, "skipping invalid intent uri"

    const/4 v5, 0x1

    .line 2160
    invoke-static {v0, v4, v5}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v5, v26

    move/from16 v14, v27

    move/from16 v11, v28

    move/from16 v0, v29

    move/from16 v4, v30

    move/from16 v13, v31

    move/from16 v7, v32

    move/from16 v15, v33

    move/from16 v9, v35

    move/from16 v10, v36

    goto/16 :goto_1

    :cond_8
    const/4 v9, 0x0

    .line 2195
    :goto_4
    new-instance v7, Landroid/content/ContentValues;

    invoke-interface {v3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v10

    invoke-direct {v7, v10}, Landroid/content/ContentValues;-><init>(I)V

    const-string v10, "_id"

    .line 2196
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v10, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "intent"

    .line 2197
    invoke-virtual {v7, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "title"

    .line 2198
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "iconType"

    move/from16 v13, v35

    .line 2200
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 2199
    invoke-virtual {v7, v10, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "icon"

    move/from16 v15, v36

    .line 2201
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    invoke-virtual {v7, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v9, "iconPackage"

    move/from16 v10, v28

    move/from16 v28, v2

    .line 2203
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2202
    invoke-virtual {v7, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "iconResource"

    move/from16 v9, v17

    move/from16 v17, v6

    .line 2205
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2204
    invoke-virtual {v7, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "itemType"

    .line 2206
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "appWidgetId"

    const/4 v6, -0x1

    .line 2207
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "uri"

    move/from16 v6, v18

    move/from16 v18, v8

    .line 2208
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "displayMode"

    move/from16 v8, v16

    .line 2210
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v34, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2209
    invoke-virtual {v7, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "profileId"

    .line 2211
    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v2, -0x65

    if-ne v4, v2, :cond_9

    move-object/from16 v2, v26

    .line 2214
    invoke-virtual {v2, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v6, -0x64

    goto :goto_5

    :cond_9
    move-object/from16 v2, v26

    const/16 v6, -0x64

    :goto_5
    if-eq v4, v6, :cond_a

    const-string v6, "screen"

    .line 2219
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cellX"

    .line 2220
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cellY"

    .line 2221
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_a
    const-string v0, "container"

    .line 2227
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x2

    if-eq v5, v0, :cond_b

    move-object/from16 v0, v23

    .line 2230
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v24

    goto :goto_6

    :cond_b
    move-object/from16 v0, v23

    move-object/from16 v4, v24

    .line 2232
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    move-object/from16 v23, v0

    move-object v5, v2

    move-object/from16 v24, v4

    move/from16 v16, v8

    move v11, v10

    move v10, v15

    move/from16 v6, v17

    move/from16 v8, v18

    move/from16 v14, v27

    move/from16 v2, v28

    move/from16 v0, v29

    move/from16 v4, v30

    move/from16 v7, v32

    move/from16 v15, v33

    move/from16 v18, v34

    move/from16 v17, v9

    move v9, v13

    move/from16 v13, v31

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, v23

    move-object/from16 v4, v24

    move-object/from16 v2, v26

    .line 2238
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_11

    .line 2240
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 2241
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    move-object/from16 v9, v22

    .line 2243
    iget v10, v9, Lcom/voxel/launcher3/DeviceProfile;->hotseatAllAppsRank:I

    if-ne v7, v10, :cond_e

    const/4 v10, 0x1

    :goto_8
    add-int/2addr v7, v10

    move/from16 v10, v21

    if-ge v7, v10, :cond_f

    .line 2246
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_d

    const-string v11, "screen"

    .line 2249
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 2248
    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_9

    :cond_d
    move/from16 v21, v10

    const/4 v10, 0x1

    goto :goto_8

    :cond_e
    move/from16 v10, v21

    :cond_f
    :goto_9
    if-lt v7, v10, :cond_10

    const-string v7, "container"

    const/16 v11, -0x64

    .line 2257
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 2256
    invoke-virtual {v8, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_10
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v22, v9

    move/from16 v21, v10

    goto :goto_7

    .line 2261
    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2263
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2265
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2268
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_12
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    const-string v8, "container"

    .line 2269
    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, -0x64

    if-eq v8, v9, :cond_13

    goto :goto_a

    :cond_13
    const-string v8, "screen"

    .line 2275
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "cellX"

    .line 2276
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "cellY"

    .line 2277
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    add-int/lit8 v5, v5, 0x1

    .line 2278
    rem-int v5, v5, v19

    if-nez v5, :cond_14

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    goto :goto_b

    :cond_14
    const/4 v7, 0x1

    :goto_b
    add-int/lit8 v12, v20, -0x1

    if-ne v6, v12, :cond_12

    .line 2284
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->generateNewScreenId()J

    move-result-wide v6

    long-to-int v4, v6

    const/4 v6, 0x0

    goto :goto_a

    .line 2289
    :cond_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v5, 0x0

    if-lez v0, :cond_19

    .line 2290
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2292
    :try_start_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    if-nez v7, :cond_16

    goto :goto_c

    :cond_16
    const-string v8, "favorites"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v9, p1

    const/4 v10, 0x0

    .line 2294
    :try_start_5
    invoke-static {v1, v9, v8, v10, v7}, Lcom/voxel/launcher3/LauncherProvider;->access$400(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    cmp-long v10, v7, v5

    if-gez v10, :cond_17

    .line 2303
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2325
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_18
    move-object/from16 v9, p1

    .line 2301
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2303
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_e

    :catchall_0
    move-exception v0

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object/from16 v9, p1

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2304
    throw v0

    :cond_19
    move-object/from16 v9, p1

    const/4 v2, 0x0

    .line 2307
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const/4 v0, 0x0

    :goto_f
    if-gt v0, v4, :cond_1b

    .line 2310
    :try_start_9
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "_id"

    .line 2311
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "screenRank"

    .line 2312
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "workspaceScreens"

    const/4 v10, 0x0

    .line 2313
    invoke-static {v1, v9, v8, v10, v7}, Lcom/voxel/launcher3/LauncherProvider;->access$400(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    cmp-long v11, v7, v5

    if-gez v11, :cond_1a

    .line 2320
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 2325
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 2318
    :cond_1b
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 2320
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v4

    move v4, v2

    goto :goto_10

    :catchall_2
    move-exception v0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2321
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :cond_1c
    move-object v9, v2

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 2325
    :goto_10
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_11

    :catchall_3
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2326
    throw v0

    :cond_1d
    move-object v9, v2

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_11
    const-string v2, "LauncherProvider"

    .line 2329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "migrated "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " icons from Launcher2 into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " screens"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2333
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->setFlagJustLoadedOldDb()V

    .line 2336
    invoke-direct/range {p0 .. p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 2337
    invoke-direct/range {p0 .. p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxScreenId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    return-void
.end method

.method private normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    const-string v0, "LauncherProvider"

    const-string v1, "normalizing icons"

    .line 1144
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UPDATE favorites SET icon=? WHERE _id=?"

    .line 1151
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "SELECT _id, icon FROM favorites WHERE iconType=1"

    .line 1154
    invoke-virtual {p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v2, "_id"

    .line 1157
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "icon"

    .line 1158
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1160
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1161
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1162
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x1

    .line 1164
    :try_start_2
    array-length v10, v8

    .line 1165
    invoke-static {v8, v4, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v10, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 1164
    invoke-static {v8, v10}, Lcom/voxel/launcher3/Utilities;->resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1168
    invoke-virtual {v1, v9, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1169
    invoke-static {v8}, Lcom/voxel/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v10

    if-eqz v10, :cond_1

    const/4 v11, 0x2

    .line 1171
    invoke-virtual {v1, v11, v10}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 1172
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1174
    :cond_1
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v8

    if-nez v5, :cond_2

    :try_start_3
    const-string v5, "LauncherProvider"

    .line 1178
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed normalizing icon "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    const-string v5, "LauncherProvider"

    .line 1180
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Also failed normalizing icon "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 1185
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1189
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v1, :cond_4

    .line 1191
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    if-eqz v0, :cond_6

    .line 1194
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v1, v0

    :goto_2
    :try_start_4
    const-string v3, "LauncherProvider"

    const-string v4, "Problem while allocating appWidgetIds for existing widgets"

    .line 1187
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1189
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v0, :cond_5

    .line 1191
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5
    if-eqz v1, :cond_6

    .line 1194
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    return-void

    :catchall_2
    move-exception v2

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    .line 1189
    :goto_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v1, :cond_7

    .line 1191
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_7
    if-eqz v0, :cond_8

    .line 1194
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1196
    :cond_8
    throw v2

    return-void
.end method

.method private removeOrphanedItems(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DELETE FROM favorites WHERE screen NOT IN (SELECT _id FROM workspaceScreens) AND container = -100"

    .line 585
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE FROM favorites WHERE container <> -100 AND container <> -101 AND container NOT IN (SELECT _id FROM favorites WHERE itemType = 2)"

    .line 602
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private sendAppWidgetResetNotify()V
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 485
    sget-object v1, Lcom/voxel/launcher3/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private setFlagEmptyDbCreated()V
    .locals 4

    .line 615
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 616
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 617
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EMPTY_DATABASE_CREATED"

    const/4 v3, 0x1

    .line 618
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "UPGRADED_FROM_OLD_DATABASE"

    .line 619
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 620
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setFlagJustLoadedOldDb()V
    .locals 4

    .line 606
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 607
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 608
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "UPGRADED_FROM_OLD_DATABASE"

    const/4 v3, 0x1

    .line 609
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "EMPTY_DATABASE_CREATED"

    .line 610
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 611
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 13

    const-string v0, "itemType"

    const/4 v1, 0x1

    .line 1064
    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    invoke-static {v0, v2}, Lcom/voxel/launcher3/LauncherProvider;->access$700(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v7

    .line 1069
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    :try_start_0
    const-string v5, "favorites"

    const-string v2, "_id"

    const-string v4, "intent"

    .line 1072
    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 1134
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v2, :cond_0

    .line 1136
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return v3

    :cond_1
    :try_start_1
    const-string v4, "_id"

    .line 1079
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "intent"

    .line 1080
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1082
    :cond_2
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1083
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1084
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_2

    .line 1087
    :try_start_2
    invoke-static {v8, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "Home"

    .line 1088
    invoke-virtual {v8}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1091
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.intent.action.VIEW"

    .line 1092
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "com.android.contacts.action.QUICK_CONTACT"

    .line 1093
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_3
    const-string v8, "content://contacts/people/"

    .line 1094
    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "content://com.android.contacts/contacts/lookup/"

    .line 1095
    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1098
    :cond_4
    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v10, 0x10008000

    .line 1104
    invoke-virtual {v8, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v10, "com.voxel.launcher3.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    .line 1106
    invoke-virtual {v8, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1108
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1111
    iget-object v10, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v10}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1113
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "intent"

    .line 1115
    invoke-virtual {v8, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    .line 1114
    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "favorites"

    .line 1118
    invoke-virtual {p1, v7, v9, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    :catch_0
    move-exception v6

    :try_start_3
    const-string v7, "LauncherProvider"

    const-string v8, "Problem upgrading shortcut"

    .line 1124
    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v6

    const-string v7, "LauncherProvider"

    const-string v8, "Problem upgrading shortcut"

    .line 1122
    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1129
    :cond_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1134
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v2, :cond_6

    .line 1136
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    return v1

    :catch_2
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_1
    :try_start_4
    const-string v1, "LauncherProvider"

    const-string v4, "Problem while upgrading contacts"

    .line 1131
    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1134
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v2, :cond_7

    .line 1136
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    return v3

    :catchall_1
    move-exception v0

    .line 1134
    :goto_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v2, :cond_8

    .line 1136
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1138
    :cond_8
    throw v0

    return-void
.end method

.method private upgradeLauncherDb_permuteScreens(J)J
    .locals 3

    const-wide/16 v0, 0x2

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    sub-long/2addr p1, v0

    return-wide p1

    :cond_0
    const-wide/16 v0, 0x3

    add-long/2addr p1, v0

    return-wide p1
.end method

.method private wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1818
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1819
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1820
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1821
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public checkId(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "_id"

    .line 1223
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string p2, "workspaceScreens"

    .line 1224
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1225
    iget-wide p1, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    goto :goto_0

    .line 1227
    :cond_0
    iget-wide p1, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    :goto_0
    return-void
.end method

.method public createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS favorites"

    .line 956
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS workspaceScreens"

    .line 957
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 958
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public generateNewItemId()J
    .locals 5

    .line 1206
    iget-wide v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 1209
    iput-wide v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 1210
    iget-wide v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    return-wide v0

    .line 1207
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max item id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateNewScreenId()J
    .locals 5

    .line 1257
    iget-wide v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 1260
    iput-wide v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    const-string v0, "LauncherProvider"

    .line 1262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "11683562 - generateNewScreenId(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1263
    iget-wide v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    return-wide v0

    .line 1258
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max screen id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    const-wide/16 v0, 0x1

    .line 492
    iput-wide v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    const-wide/16 v0, 0x0

    .line 493
    iput-wide v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    const/4 v0, 0x1

    .line 494
    iput-boolean v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mNewDbCreated:Z

    .line 496
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object v1

    .line 498
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v2

    .line 497
    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/voxel/launcher3/compat/UserHandleCompat;)J

    move-result-wide v1

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER,appWidgetProvider TEXT,modified INTEGER NOT NULL DEFAULT 0,restored INTEGER NOT NULL DEFAULT 0,profileId INTEGER DEFAULT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",rank INTEGER NOT NULL DEFAULT 0,options INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 526
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 529
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v1, :cond_0

    .line 530
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 531
    invoke-direct {p0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/voxel/launcher3/LauncherProvider;->access$300(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 536
    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$LauncherProvider$DatabaseHelper$icEm6b-ppPfF6oXlgbCKJ5wlgKI;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/-$$Lambda$LauncherProvider$DatabaseHelper$icEm6b-ppPfF6oXlgbCKJ5wlgKI;-><init>(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;)V

    const-string v2, "content://settings/old_favorites?notify=true"

    .line 544
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 546
    invoke-direct {p0, p1, v2, v1, v0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->convertDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Lcom/voxel/launcher3/LauncherProvider$ContentValuesCallback;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f120189

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    .line 549
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->convertDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Lcom/voxel/launcher3/LauncherProvider$ContentValuesCallback;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 551
    invoke-direct {p0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->setFlagEmptyDbCreated()V

    return-void

    .line 558
    :cond_1
    invoke-direct {p0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->setFlagJustLoadedOldDb()V

    goto :goto_0

    .line 561
    :cond_2
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 562
    invoke-direct {p0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->setFlagEmptyDbCreated()V

    :goto_0
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string v0, "LauncherProvider"

    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database version downgrade from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". Wiping databse."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    const/4 p3, 0x3

    if-ge p2, p3, :cond_0

    .line 743
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "ALTER TABLE favorites ADD COLUMN appWidgetId INTEGER NOT NULL DEFAULT -1;"

    .line 746
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p2, 0x3

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "LauncherProvider"

    .line 752
    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 754
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_0
    if-ne p2, p3, :cond_0

    .line 759
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    .line 754
    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 755
    throw p2

    :cond_0
    :goto_2
    const/4 p3, 0x4

    if-ge p2, p3, :cond_1

    const/4 p2, 0x4

    :cond_1
    const/4 p3, 0x6

    if-ge p2, p3, :cond_2

    .line 777
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_2
    const-string v0, "UPDATE favorites SET screen=(screen + 1);"

    .line 779
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 785
    :goto_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_4

    :catchall_1
    move-exception p2

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "LauncherProvider"

    .line 783
    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 789
    :goto_4
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x6

    goto :goto_6

    .line 785
    :goto_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 786
    throw p2

    :cond_2
    :goto_6
    const/4 p3, 0x7

    if-ge p2, p3, :cond_3

    .line 796
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 p2, 0x7

    :cond_3
    const/16 p3, 0x8

    if-ge p2, p3, :cond_4

    .line 804
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 p2, 0x8

    :cond_4
    const/16 p3, 0x9

    if-ge p2, p3, :cond_6

    .line 811
    iget-wide v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    if-nez p2, :cond_5

    .line 812
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 816
    :cond_5
    new-instance p2, Lcom/voxel/launcher3/LauncherProvider$SimpleWorkspaceLoader;

    iget-object v0, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f15000a

    invoke-direct {p2, p0, v0, v1}, Lcom/voxel/launcher3/LauncherProvider$SimpleWorkspaceLoader;-><init>(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/content/res/Resources;I)V

    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/voxel/launcher3/LauncherProvider$WorkspaceLoader;)I

    const/16 p2, 0x9

    :cond_6
    const/16 p3, 0xc

    if-ge p2, p3, :cond_7

    .line 828
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z

    const/16 p2, 0xc

    :cond_7
    const/4 p3, 0x1

    const/16 v0, 0xd

    const-wide/16 v1, 0x0

    if-ge p2, v0, :cond_8

    .line 835
    iput-wide v1, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 839
    invoke-static {p3}, Lcom/voxel/launcher3/LauncherProvider;->access$502(Z)Z

    .line 841
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 p2, 0xd

    :cond_8
    const/16 v0, 0xe

    if-ge p2, v0, :cond_9

    .line 846
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_4
    const-string v3, "ALTER TABLE favorites ADD COLUMN appWidgetProvider TEXT;"

    .line 849
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 851
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 857
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 p2, 0xe

    goto :goto_8

    :catchall_2
    move-exception p2

    goto :goto_7

    :catch_2
    move-exception v0

    :try_start_5
    const-string v3, "LauncherProvider"

    .line 855
    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 857
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_8

    :goto_7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 858
    throw p2

    :cond_9
    :goto_8
    const/16 v0, 0xf

    if-ge p2, v0, :cond_a

    .line 862
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_6
    const-string v3, "ALTER TABLE favorites ADD COLUMN modified INTEGER NOT NULL DEFAULT 0;"

    .line 865
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "ALTER TABLE workspaceScreens ADD COLUMN modified INTEGER NOT NULL DEFAULT 0;"

    .line 867
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 875
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 p2, 0xf

    goto :goto_a

    :catchall_3
    move-exception p2

    goto :goto_9

    :catch_3
    move-exception v0

    :try_start_7
    const-string v3, "LauncherProvider"

    .line 873
    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 875
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_a

    :goto_9
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 876
    throw p2

    :cond_a
    :goto_a
    const/16 v0, 0x10

    if-ge p2, v0, :cond_b

    const-string v3, "restored"

    .line 881
    invoke-direct {p0, p1, v3, v1, v2}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 p2, 0x10

    :cond_b
    const/16 v0, 0x11

    if-ge p2, v0, :cond_c

    const/16 p2, 0x11

    :cond_c
    const/16 v0, 0x12

    if-ge p2, v0, :cond_d

    const/16 p2, 0x12

    :cond_d
    const/16 v0, 0x13

    if-ge p2, v0, :cond_e

    .line 902
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->removeOrphanedItems(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 p2, 0x13

    :cond_e
    const/16 v0, 0x14

    if-ge p2, v0, :cond_f

    .line 908
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->addProfileColumn(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 p2, 0x14

    :cond_f
    const/16 v0, 0x15

    if-ge p2, v0, :cond_10

    .line 916
    invoke-virtual {p0, p1, p3}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->updateFolderItemsRank(Landroid/database/sqlite/SQLiteDatabase;Z)Z

    move-result p3

    if-eqz p3, :cond_10

    const/16 p2, 0x15

    :cond_10
    const/16 p3, 0x16

    if-ge p2, p3, :cond_11

    .line 923
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->recreateWorkspaceTable(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result p3

    if-eqz p3, :cond_11

    const/16 p2, 0x16

    :cond_11
    const/16 p3, 0x17

    if-ge p2, p3, :cond_12

    const-string v0, "options"

    .line 929
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 p2, 0x17

    :cond_12
    if-eq p2, p3, :cond_13

    const-string p2, "LauncherProvider"

    const-string p3, "Destroying all old data."

    .line 935
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "DROP TABLE IF EXISTS favorites"

    .line 936
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS workspaceScreens"

    .line 937
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_13
    return-void
.end method

.method public recreateWorkspaceTable(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 9

    .line 965
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "workspaceScreens"

    const-string v1, "_id"

    .line 967
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "screenRank"

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 971
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v3, 0x0

    .line 974
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 975
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 976
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 977
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 982
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v1, "DROP TABLE IF EXISTS workspaceScreens"

    .line 984
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 985
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 987
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_2

    .line 989
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "_id"

    .line 990
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "screenRank"

    .line 991
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 992
    invoke-static {v6}, Lcom/voxel/launcher3/LauncherProvider;->access$600(Landroid/content/ContentValues;)V

    const-string v7, "workspaceScreens"

    const/4 v8, 0x0

    .line 993
    invoke-virtual {p1, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 995
    :cond_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 996
    iput-wide v3, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1002
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v2

    .line 982
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 983
    throw v2
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_4
    const-string v2, "LauncherProvider"

    .line 999
    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1002
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    :goto_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1003
    throw v0

    return-void
.end method

.method updateFolderItemsRank(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    .locals 9

    .line 1008
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    const-string p2, "ALTER TABLE favorites ADD COLUMN rank INTEGER NOT NULL DEFAULT 0;"

    .line 1012
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const-string p2, "SELECT container, MAX(cellX) FROM favorites WHERE container IN (SELECT _id FROM favorites WHERE itemType = ?) GROUP BY container;"

    const/4 v1, 0x1

    .line 1016
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x2

    .line 1019
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 1016
    invoke-virtual {p1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 1021
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "UPDATE favorites SET rank=cellX+(cellY*?) WHERE container=? AND cellX IS NOT NULL AND cellY IS NOT NULL;"

    .line 1022
    new-array v4, v3, [Ljava/lang/Object;

    .line 1024
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1022
    invoke-virtual {p1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1027
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1028
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v1

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    const-string v1, "LauncherProvider"

    .line 1031
    invoke-virtual {p2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1034
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1035
    throw p2

    return-void
.end method

.method public updateMaxItemId(J)V
    .locals 2

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    .line 1219
    iput-wide p1, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    return-void
.end method

.method public updateMaxScreenId(J)V
    .locals 3

    const-string v0, "LauncherProvider"

    .line 1268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "11683562 - updateMaxScreenId(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1269
    iput-wide p1, p0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    return-void
.end method
