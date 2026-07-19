.class public Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;
.super Ljava/lang/Object;
.source "BackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;,
        Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$GoogleApiConnectionCallbacks;
    }
.end annotation


# static fields
.field public static final CPK_DEVICE_ID:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

.field public static final CPK_DEVICE_NAME:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

.field public static final CPK_WORKAROUND:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

.field private static final DB_BACKUP_FILES:[Ljava/lang/String;

.field public static final KEY_LAUNCHER_RESTORED:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BackupRestoreManager"

.field private static instance:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;


# instance fields
.field private defaultUICallbacks:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

.field private mAccountEmail:Ljava/lang/String;

.field private mConnectionCallbacks:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$GoogleApiConnectionCallbacks;

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

.field mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

.field mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

.field private mRestoreAvailable:Z

.field mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

.field private mUICallbacks:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".launcher_restored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->KEY_LAUNCHER_RESTORED:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    const-string v1, "device_id"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->CPK_DEVICE_ID:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    .line 83
    new-instance v0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    const-string v1, "device_name"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->CPK_DEVICE_NAME:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    .line 84
    new-instance v0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    const-string v1, "workaround"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->CPK_WORKAROUND:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    const-string v0, "apps_info.db"

    const-string v1, "launcher.db"

    const-string v2, "search_item_data.db"

    .line 94
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->DB_BACKUP_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {p1}, Lcom/voxel/launcher3/LauncherApplication;->getInjector(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/dagger/Injector;

    move-result-object v0

    invoke-interface {v0}, Lcom/voxel/simplesearchlauncher/dagger/Injector;->getLauncherAppComponent()Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;->inject(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;)V

    .line 117
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;

    invoke-direct {v0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->defaultUICallbacks:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    .line 118
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->defaultUICallbacks:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->setUICallbacks(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;)V

    .line 119
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$GoogleApiConnectionCallbacks;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$GoogleApiConnectionCallbacks;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mConnectionCallbacks:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$GoogleApiConnectionCallbacks;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->setSignedOut()V

    return-void
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mAccountEmail:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mAccountEmail:Ljava/lang/String;

    return-object p1
.end method

.method private addFileToZip(Landroid/content/Context;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    invoke-direct {p0, p1, p3}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->dBfileNameToLocation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 357
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 359
    new-instance p1, Ljava/util/zip/ZipEntry;

    invoke-direct {p1, p3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 360
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 361
    new-instance p3, Ljava/io/BufferedInputStream;

    const/16 v0, 0x400

    invoke-direct {p3, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 362
    new-array p1, v0, [B

    :goto_0
    const/4 v1, 0x0

    .line 364
    invoke-virtual {p3, p1, v1, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 365
    invoke-virtual {p2, p1, v1, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {p3}, Ljava/io/BufferedInputStream;->close()V

    .line 368
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_1
    return-void
.end method

.method private capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    .line 412
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 415
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 416
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    .line 419
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method private closeDb(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 345
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x763f330f

    if-eq v0, v1, :cond_1

    const v1, -0xd63fa74

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "launcher.db"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "apps_info.db"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 350
    :pswitch_0
    invoke-static {p1}, Lcom/voxel/launcher3/LauncherProvider;->closeDB(Landroid/content/Context;)V

    goto :goto_2

    .line 347
    :pswitch_1
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->closeDB(Landroid/content/Context;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dBfileNameToLocation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 335
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x763f330f

    if-eq v0, v1, :cond_1

    const v1, -0xd63fa74

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "launcher.db"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "apps_info.db"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    const-string p1, ""

    return-object p1

    .line 339
    :pswitch_0
    invoke-static {p1}, Lcom/voxel/launcher3/LauncherProvider;->getDbPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 337
    :pswitch_1
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getDbPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized deinit()V
    .locals 2

    const-class v0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    monitor-enter v0

    .line 149
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->instance:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 150
    monitor-exit v0

    return-void

    .line 152
    :cond_0
    :try_start_1
    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->instance:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->deconstruct()V

    const/4 v1, 0x0

    .line 153
    sput-object v1, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->instance:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getAvailableRestoreData(Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback<",
            "Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;",
            ">;)V"
        }
    .end annotation

    .line 556
    new-instance v0, Lcom/google/android/gms/drive/query/SortOrder$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/SortOrder$Builder;-><init>()V

    sget-object v1, Lcom/google/android/gms/drive/query/SortableField;->TITLE:Lcom/google/android/gms/drive/metadata/SortableMetadataField;

    .line 557
    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/query/SortOrder$Builder;->addSortAscending(Lcom/google/android/gms/drive/metadata/SortableMetadataField;)Lcom/google/android/gms/drive/query/SortOrder$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/drive/query/SortableField;->MODIFIED_DATE:Lcom/google/android/gms/drive/metadata/SortableMetadataField;

    .line 558
    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/query/SortOrder$Builder;->addSortDescending(Lcom/google/android/gms/drive/metadata/SortableMetadataField;)Lcom/google/android/gms/drive/query/SortOrder$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/query/SortOrder$Builder;->build()Lcom/google/android/gms/drive/query/SortOrder;

    move-result-object v0

    .line 559
    new-instance v1, Lcom/google/android/gms/drive/query/Query$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/drive/query/Query$Builder;-><init>()V

    sget-object v2, Lcom/google/android/gms/drive/query/SearchableField;->TITLE:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;

    const-string v3, "backup.zip"

    .line 560
    invoke-static {v2, v3}, Lcom/google/android/gms/drive/query/Filters;->eq(Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/query/Filter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/drive/query/Query$Builder;->addFilter(Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Query$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/drive/query/SearchableField;->MIME_TYPE:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;

    const-string v3, "application/zip"

    .line 561
    invoke-static {v2, v3}, Lcom/google/android/gms/drive/query/Filters;->eq(Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/query/Filter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/drive/query/Query$Builder;->addFilter(Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Query$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/drive/query/SearchableField;->TRASHED:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;

    const/4 v3, 0x0

    .line 562
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/drive/query/Filters;->eq(Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/query/Filter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/drive/query/Query$Builder;->addFilter(Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Query$Builder;

    move-result-object v1

    .line 563
    invoke-virtual {v1, v0}, Lcom/google/android/gms/drive/query/Query$Builder;->setSortOrder(Lcom/google/android/gms/drive/query/SortOrder;)Lcom/google/android/gms/drive/query/Query$Builder;

    move-result-object v0

    .line 564
    invoke-virtual {v0}, Lcom/google/android/gms/drive/query/Query$Builder;->build()Lcom/google/android/gms/drive/query/Query;

    move-result-object v0

    .line 568
    :try_start_0
    sget-object v1, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/drive/DriveApi;->getAppFolder(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/drive/DriveFolder;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 570
    sget-object v2, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v3, "getAvailableRestoreData called, but not actually connected"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    .line 573
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->setSignedOut()V

    return-void

    .line 576
    :cond_0
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/drive/DriveFolder;->queryChildren(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 577
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method private getDeviceName()Ljava/lang/String;
    .locals 3

    .line 402
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 403
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 404
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    invoke-direct {p0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 407
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;
    .locals 3

    const-class v0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    monitor-enter v0

    .line 157
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->instance:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    if-eqz v1, :cond_0

    .line 160
    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->instance:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 158
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Instance must be initialized before trying to use."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;
    .locals 1

    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mUICallbacks:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->defaultUICallbacks:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 176
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->defaultUICallbacks:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 178
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mUICallbacks:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized init(Landroidx/fragment/app/FragmentActivity;)V
    .locals 5

    const-class v0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->instance:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 131
    monitor-exit v0

    return-void

    .line 133
    :cond_0
    :try_start_1
    new-instance v1, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;-><init>(Landroid/app/Activity;)V

    sput-object v1, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->instance:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    .line 135
    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    sget-object v2, Lcom/google/android/gms/drive/Drive;->SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    .line 136
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v1

    .line 140
    sget-object v2, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->instance:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    new-instance v3, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v3, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->instance:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    iget-object v4, v4, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mConnectionCallbacks:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$GoogleApiConnectionCallbacks;

    .line 141
    invoke-virtual {v3, p0, v4}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->enableAutoManage(Landroidx/fragment/app/FragmentActivity;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p0

    sget-object v3, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->instance:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    iget-object v3, v3, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mConnectionCallbacks:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$GoogleApiConnectionCallbacks;

    .line 142
    invoke-virtual {p0, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p0

    sget-object v3, Lcom/google/android/gms/auth/api/Auth;->GOOGLE_SIGN_IN_API:Lcom/google/android/gms/common/api/Api;

    .line 143
    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/drive/Drive;->API:Lcom/google/android/gms/common/api/Api;

    .line 144
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p0

    .line 145
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p0

    iput-object p0, v2, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic lambda$deleteBackup$11(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;)V
    .locals 3

    .line 713
    invoke-interface {p2}, Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;->getMetadataBuffer()Lcom/google/android/gms/drive/MetadataBuffer;

    move-result-object p2

    .line 714
    invoke-virtual {p2}, Lcom/google/android/gms/drive/MetadataBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/drive/Metadata;

    .line 715
    invoke-virtual {v2}, Lcom/google/android/gms/drive/Metadata;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/drive/DriveId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 721
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/drive/MetadataBuffer;->release()V

    .line 723
    invoke-virtual {p1}, Lcom/google/android/gms/drive/DriveId;->asDriveFile()Lcom/google/android/gms/drive/DriveFile;

    move-result-object p1

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, p2}, Lcom/google/android/gms/drive/DriveFile;->delete(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$nYbyDxgKnXy7fndIm6p4_xUO-PQ;

    invoke-direct {p2, p0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$nYbyDxgKnXy7fndIm6p4_xUO-PQ;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Z)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public static synthetic lambda$null$0(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;)V
    .locals 2

    .line 312
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 313
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    move-result-object p1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getAccountEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->isRestoreAvailable()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;->updateUI(Ljava/lang/String;Z)V

    goto :goto_0

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;->onBackupFailure()V

    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->pruneOldBackups()V

    .line 322
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;->onBackupSuccess()V

    .line 323
    sget-object p1, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v0, "User backup completed."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$null$10(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;ZLcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 724
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 725
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    move-result-object p2

    invoke-interface {p2}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;->onDeleteSuccess()V

    .line 726
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mRestoreAvailable:Z

    goto :goto_0

    .line 728
    :cond_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;->onDeleteFailure()V

    .line 730
    :goto_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    move-result-object p1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getAccountEmail()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->isRestoreAvailable()Z

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;->updateUI(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$null$8(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;)V
    .locals 2

    .line 632
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 633
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;->getMetadataBuffer()Lcom/google/android/gms/drive/MetadataBuffer;

    move-result-object p1

    if-nez p1, :cond_0

    .line 635
    iput-boolean v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mRestoreAvailable:Z

    goto :goto_0

    .line 637
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/drive/MetadataBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mRestoreAvailable:Z

    .line 638
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->missingCustomPropertiesWorkaround(Lcom/google/android/gms/drive/MetadataBuffer;)V

    .line 639
    invoke-virtual {p1}, Lcom/google/android/gms/drive/MetadataBuffer;->release()V

    goto :goto_0

    .line 642
    :cond_2
    iput-boolean v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mRestoreAvailable:Z

    .line 644
    :goto_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    move-result-object p1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getAccountEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->isRestoreAvailable()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;->updateUI(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$pruneOldBackups$2(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;)V
    .locals 11

    .line 375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 376
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;->getMetadataBuffer()Lcom/google/android/gms/drive/MetadataBuffer;

    move-result-object p1

    .line 377
    invoke-virtual {p1}, Lcom/google/android/gms/drive/MetadataBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/drive/Metadata;

    .line 378
    invoke-virtual {v5}, Lcom/google/android/gms/drive/Metadata;->getCustomProperties()Ljava/util/Map;

    move-result-object v6

    sget-object v7, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->CPK_DEVICE_ID:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 380
    invoke-virtual {v5}, Lcom/google/android/gms/drive/Metadata;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/drive/DriveId;->asDriveFile()Lcom/google/android/gms/drive/DriveFile;

    move-result-object v5

    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v5, v6}, Lcom/google/android/gms/drive/DriveFile;->delete(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    .line 383
    :cond_0
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_1

    .line 385
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 387
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_2

    .line 388
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_0

    .line 392
    :cond_2
    invoke-virtual {v5}, Lcom/google/android/gms/drive/Metadata;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/drive/DriveId;->asDriveFile()Lcom/google/android/gms/drive/DriveFile;

    move-result-object v5

    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v5, v6}, Lcom/google/android/gms/drive/DriveFile;->delete(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    .line 394
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/drive/MetadataBuffer;->release()V

    .line 395
    iput-boolean v4, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mRestoreAvailable:Z

    .line 396
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    move-result-object p1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getAccountEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->isRestoreAvailable()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;->updateUI(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$refreshRestoreAvailable$9(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 631
    new-instance p1, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$I16kqn4ISzeXIpT7hslC2rofyj0;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$I16kqn4ISzeXIpT7hslC2rofyj0;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;)V

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getAvailableRestoreData(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public static synthetic lambda$requestAvailableRestoreData$3(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;ILcom/google/android/gms/drive/DriveApi$MetadataBufferResult;)V
    .locals 1

    .line 429
    invoke-interface {p2}, Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-interface {p2}, Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;->getMetadataBuffer()Lcom/google/android/gms/drive/MetadataBuffer;

    move-result-object p2

    .line 431
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;->handleAvailableRestoreData(Lcom/google/android/gms/drive/MetadataBuffer;I)V

    goto :goto_0

    .line 433
    :cond_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;->onRestoreFailure()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$requestBackup$1(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Landroid/content/Context;Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;)V
    .locals 4

    .line 260
    invoke-interface {p2}, Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->setSignedOut()V

    .line 262
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;->onBackupFailure()V

    .line 263
    sget-object p1, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string p2, "Failed to create new contents."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    new-instance v2, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;-><init>()V

    const-string v3, "application/zip"

    .line 270
    invoke-virtual {v2, v3}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    move-result-object v2

    const-string v3, "backup.zip"

    .line 271
    invoke-virtual {v2, v3}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->setTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    move-result-object v2

    sget-object v3, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->CPK_DEVICE_NAME:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    .line 272
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->setCustomProperty(Lcom/google/android/gms/drive/metadata/CustomPropertyKey;Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    move-result-object v0

    sget-object v2, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->CPK_DEVICE_ID:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    .line 273
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->setCustomProperty(Lcom/google/android/gms/drive/metadata/CustomPropertyKey;Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    move-result-object v0

    .line 274
    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->build()Lcom/google/android/gms/drive/MetadataChangeSet;

    move-result-object v0

    .line 289
    invoke-interface {p2}, Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;->getDriveContents()Lcom/google/android/gms/drive/DriveContents;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/drive/DriveContents;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 292
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->createBackup(Landroid/content/Context;Ljava/io/OutputStream;)Ljava/util/zip/ZipOutputStream;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 303
    sget-object v1, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/drive/DriveApi;->getAppFolder(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/drive/DriveFolder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 305
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->setSignedOut()V

    .line 306
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;->onBackupFailure()V

    return-void

    .line 310
    :cond_1
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p2}, Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;->getDriveContents()Lcom/google/android/gms/drive/DriveContents;

    move-result-object p2

    invoke-interface {v1, v2, v0, p2}, Lcom/google/android/gms/drive/DriveFolder;->createFile(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p2

    new-instance v0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$_qFa6bDx11ajG14Kyvd-4D_jOVg;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$_qFa6bDx11ajG14Kyvd-4D_jOVg;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;)V

    .line 311
    invoke-virtual {p2, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 327
    :try_start_1
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    sget-object p1, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string p2, "Could not close backup zip"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 298
    :catch_1
    sget-object p1, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string p2, "Could not finish backup zip"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;->onBackupFailure()V

    return-void

    :catch_2
    move-exception p1

    .line 294
    sget-object p2, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v0, "Could not generate backup user data."

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;->onBackupFailure()V

    return-void
.end method

.method public static synthetic lambda$restoreFromDriveId$5(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Landroid/app/Activity;Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;)V
    .locals 1

    .line 505
    invoke-interface {p2}, Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;->getDriveContents()Lcom/google/android/gms/drive/DriveContents;

    move-result-object p2

    if-nez p2, :cond_0

    .line 507
    sget-object p1, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string p2, "Error trying to restore, drive contents null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;->onRestoreFailure()V

    return-void

    .line 512
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/drive/DriveContents;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->restoreFromZipInputStream(Landroid/app/Activity;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;->onRestoreSuccess()V

    return-void

    :catch_0
    move-exception p1

    .line 518
    sget-object p2, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v0, "Restore error while reading shared prefs. "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;->onRestoreFailure()V

    return-void

    :catch_1
    move-exception p1

    .line 514
    sget-object p2, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v0, "Restore error while reading zip file. "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;->onRestoreFailure()V

    return-void
.end method

.method public static synthetic lambda$restoreFromZipInputStream$4(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Landroid/app/Activity;)V
    .locals 3

    .line 479
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->restart()V

    .line 480
    invoke-static {p1}, Lcom/voxel/launcher3/LauncherBackupHelper;->postRestoreWidgets(Landroid/content/Context;)V

    .line 481
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getInstance()Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    move-result-object v0

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->dispatchChange(ZLandroid/net/Uri;)V

    .line 482
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->verifyAndReload()Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    .line 483
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->refreshDeviceProfile(Landroid/content/Context;)V

    .line 486
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->upgradeIfNeeded()V

    .line 487
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->upgradeIfNeeded()V

    .line 488
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->upgradeIfNeeded()V

    .line 492
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherModel;->forceReload()V

    return-void
.end method

.method public static synthetic lambda$signOut$6(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 598
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->setSignedOut()V

    return-void
.end method

.method private missingCustomPropertiesWorkaround(Lcom/google/android/gms/drive/MetadataBuffer;)V
    .locals 5

    .line 650
    invoke-virtual {p1}, Lcom/google/android/gms/drive/MetadataBuffer;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/Metadata;

    .line 651
    invoke-virtual {v0}, Lcom/google/android/gms/drive/Metadata;->getCustomProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    invoke-virtual {v0}, Lcom/google/android/gms/drive/Metadata;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/DriveId;->asDriveResource()Lcom/google/android/gms/drive/DriveResource;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v2, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;-><init>()V

    sget-object v3, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->CPK_WORKAROUND:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    .line 654
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->setCustomProperty(Lcom/google/android/gms/drive/metadata/CustomPropertyKey;Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    move-result-object v2

    .line 655
    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->build()Lcom/google/android/gms/drive/MetadataChangeSet;

    move-result-object v2

    .line 652
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/DriveResource;->updateMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    const/4 v1, 0x0

    .line 656
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private pruneOldBackups()V
    .locals 1

    .line 373
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$ZoOhvc9jdSXUIjphlRzmP9KtfK4;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$ZoOhvc9jdSXUIjphlRzmP9KtfK4;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;)V

    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getAvailableRestoreData(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method private restorePrefs(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 545
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "dataList"

    .line 546
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 547
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 548
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 549
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 550
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->saveRestoredUserData(Lorg/json/JSONObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setSignedIn(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 2

    .line 607
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mAccountEmail:Ljava/lang/String;

    .line 608
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->setGoogleAccount(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 609
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    move-result-object p1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getAccountEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->isRestoreAvailable()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;->updateUI(Ljava/lang/String;Z)V

    return-void
.end method

.method private setSignedOut()V
    .locals 3

    const/4 v0, 0x0

    .line 613
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mAccountEmail:Ljava/lang/String;

    const/4 v1, 0x0

    .line 614
    iput-boolean v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mRestoreAvailable:Z

    .line 615
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->setGoogleAccount(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 616
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getAccountEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->isRestoreAvailable()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;->updateUI(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public declared-synchronized connect()Z
    .locals 1

    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 190
    monitor-exit p0

    return v0

    .line 192
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 193
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createBackup(Landroid/content/Context;Ljava/io/OutputStream;)Ljava/util/zip/ZipOutputStream;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    move-result-object v0

    .line 198
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 199
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 200
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getRestorableUserDataTypeIds()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    .line 201
    invoke-virtual {v0, v7}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getBackupUserData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 203
    sget-object v9, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding user data to backup: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 206
    :cond_0
    sget-object v8, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not backup data type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "dataList"

    .line 209
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, p2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 214
    :try_start_0
    new-instance p2, Ljava/util/zip/ZipEntry;

    const-string v2, "prefs.json"

    invoke-direct {p2, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 215
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 216
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 218
    :catch_0
    sget-object p2, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "Could not back up shared prefs"

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_2
    sget-object p2, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->DB_BACKUP_FILES:[Ljava/lang/String;

    array-length v1, p2

    :goto_3
    if-ge v5, v1, :cond_2

    aget-object v2, p2, v5

    .line 223
    :try_start_1
    invoke-direct {p0, p1, v0, v2}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->addFileToZip(Landroid/content/Context;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 225
    :catch_1
    sget-object v2, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not read apps_info.db file for backup"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 229
    :cond_2
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->finish()V

    return-object v0
.end method

.method public createLocalBackup(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 236
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p2

    .line 237
    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->createBackup(Landroid/content/Context;Ljava/io/OutputStream;)Ljava/util/zip/ZipOutputStream;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 246
    :catch_0
    sget-object p1, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string p2, "Could not finish local backup zip"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_1
    move-exception p1

    .line 243
    sget-object p2, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "Could not generate local backup user data."

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :catch_2
    move-exception p1

    .line 240
    sget-object p2, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "Could not create local backup file"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public declared-synchronized deconstruct()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 123
    :try_start_0
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 124
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mConnectionCallbacks:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$GoogleApiConnectionCallbacks;

    .line 125
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->defaultUICallbacks:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    .line 126
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mUICallbacks:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteBackup(Lcom/google/android/gms/drive/DriveId;)V
    .locals 1

    .line 711
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$_0KKu1__FXikO8oxTHwaKuHuypk;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$_0KKu1__FXikO8oxTHwaKuHuypk;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Lcom/google/android/gms/drive/DriveId;)V

    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getAvailableRestoreData(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public getAccountEmail()Ljava/lang/String;
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mAccountEmail:Ljava/lang/String;

    return-object v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 698
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {p1, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object p1

    .line 699
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 700
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    .line 701
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->setSignedIn(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 702
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->refreshRestoreAvailable()V

    goto :goto_0

    .line 704
    :cond_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->setSignedOut()V

    goto :goto_0

    :pswitch_1
    if-ne p2, v0, :cond_2

    const-string p1, "response_drive_id"

    .line 684
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/drive/DriveId;

    .line 686
    invoke-virtual {p0, p4, p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->restoreFromDriveId(Landroid/app/Activity;Lcom/google/android/gms/drive/DriveId;)V

    goto :goto_0

    :pswitch_2
    if-ne p2, v0, :cond_1

    .line 675
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;->onBackupSuccess()V

    .line 676
    sget-object p1, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string p2, "User backup completed."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 678
    :cond_1
    sget-object p1, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string p2, "User backup cancelled."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 183
    monitor-exit p0

    return v0

    .line 185
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRestoreAvailable()Z
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mAccountEmail:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 666
    :cond_0
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mRestoreAvailable:Z

    return v0
.end method

.method public refreshRestoreAvailable()V
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mAccountEmail:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    sget-object v0, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/drive/DriveApi;->requestSync(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$lSD-31Ie3wC2_NbV-CZt3iI17Sk;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$lSD-31Ie3wC2_NbV-CZt3iI17Sk;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;)V

    .line 630
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 625
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mRestoreAvailable:Z

    return-void
.end method

.method public requestAvailableRestoreData(I)V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$4O3Q1F7JwPSllsJjt11YbMpR4Q8;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$4O3Q1F7JwPSllsJjt11YbMpR4Q8;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;I)V

    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getAvailableRestoreData(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void

    .line 425
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->setSignedOut()V

    return-void
.end method

.method public requestBackup(Landroid/content/Context;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    sget-object v0, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/drive/DriveApi;->newDriveContents(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$cunaWN85F6rQfXiU_OE-3r219GE;

    invoke-direct {v1, p0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$cunaWN85F6rQfXiU_OE-3r219GE;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Landroid/content/Context;)V

    .line 259
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void

    .line 255
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->setSignedOut()V

    return-void
.end method

.method public restoreFromDriveId(Landroid/app/Activity;Lcom/google/android/gms/drive/DriveId;)V
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/drive/DriveId;->asDriveFile()Lcom/google/android/gms/drive/DriveFile;

    move-result-object p2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/high16 v1, 0x10000000

    const/4 v2, 0x0

    .line 503
    invoke-interface {p2, v0, v1, v2}, Lcom/google/android/gms/drive/DriveFile;->open(Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p2

    new-instance v0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$TYV2s0UfNLvS5dJRdEyjrgZpePg;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$TYV2s0UfNLvS5dJRdEyjrgZpePg;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Landroid/app/Activity;)V

    .line 504
    invoke-virtual {p2, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void

    .line 498
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getUICallbacks()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;->onRestoreFailure()V

    .line 499
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->setSignedOut()V

    return-void
.end method

.method public restoreFromLocalBackup(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 528
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p2

    .line 529
    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->restoreFromZipInputStream(Landroid/app/Activity;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 537
    :catch_0
    sget-object p1, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string p2, "Could not read local backup db file"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_1
    move-exception p1

    .line 534
    sget-object p2, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "Could not read local backup user data."

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :catch_2
    move-exception p1

    .line 531
    sget-object p2, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "Could not find local backup file"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public restoreFromZipInputStream(Landroid/app/Activity;Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 439
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 441
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 442
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x400

    .line 447
    new-array v2, v1, [B

    .line 449
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x42db4e9a

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "prefs.json"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, -0x1

    :goto_2
    if-eqz v3, :cond_5

    .line 458
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->dBfileNameToLocation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 459
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 462
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-direct {v4, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 463
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 464
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 465
    :goto_3
    invoke-virtual {v0, v2, v6, v1}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v3

    if-eq v3, v5, :cond_4

    .line 466
    invoke-virtual {v4, v2, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3

    .line 468
    :cond_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 469
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 472
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->closeDb(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_5
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 452
    :goto_4
    invoke-virtual {v0, v2, v6, v1}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v3

    if-eq v3, v5, :cond_6

    .line 453
    invoke-virtual {p2, v2, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    .line 455
    :cond_6
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->restorePrefs(Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :cond_7
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 477
    sget-object p2, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v0, "User data successfully restored."

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance p2, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$1duhM9BN_LhOUzZrRHF5NFIoP0k;

    invoke-direct {p2, p0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$1duhM9BN_LhOUzZrRHF5NFIoP0k;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Landroid/app/Activity;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized setUICallbacks(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    .line 165
    :try_start_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->defaultUICallbacks:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mUICallbacks:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;

    goto :goto_0

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mUICallbacks:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public signIn(Landroid/app/Activity;)V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 582
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->setSignedOut()V

    return-void

    .line 585
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 588
    :cond_1
    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xbbc

    .line 589
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public signOut()V
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 597
    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$foBTBW4OhjHfRiud6RFPTosiiqk;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$foBTBW4OhjHfRiud6RFPTosiiqk;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void

    .line 594
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->setSignedOut()V

    return-void
.end method
