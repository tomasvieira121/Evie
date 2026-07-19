.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Builder"
.end annotation


# instance fields
.field private application:Landroid/app/Application;

.field private context:Landroid/content/Context;

.field private deepShortcutManagerModule:Lcom/voxel/simplesearchlauncher/dagger/module/DeepShortcutManagerModule;

.field private frequentlyUsedModule:Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;

.field private hideAppsModule:Lcom/voxel/simplesearchlauncher/dagger/module/HideAppsModule;

.field private jigsawModule:Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;

.field private launcherConfigModelModule:Lcom/voxel/simplesearchlauncher/dagger/module/LauncherConfigModelModule;

.field private memoryRegistryModule:Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule;

.field private memoryWatcher:Lcom/evie/common/utils/MemoryWatcher;

.field private oathPlayerModule:Lcom/evie/sidescreen/dagger/external/OathPlayerModule;

.field private okHttpModule:Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule;

.field private retrofitModule:Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;

.field private serverUrlModule:Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule;

.field private sideScreenContentModule:Lcom/evie/sidescreen/dagger/SideScreenContentModule;

.field private singletonsModule:Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;

.field private tileSettingsModule:Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 1266
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public application(Landroid/app/Application;)Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;
    .locals 0

    .line 1301
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->application:Landroid/app/Application;

    return-object p0
.end method

.method public bridge synthetic application(Landroid/app/Application;)Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent$Builder;
    .locals 0

    .line 1266
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->application(Landroid/app/Application;)Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;
    .locals 21

    move-object/from16 v0, p0

    .line 1319
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->singletonsModule:Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;

    if-nez v1, :cond_0

    .line 1320
    new-instance v1, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;-><init>()V

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->singletonsModule:Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;

    .line 1322
    :cond_0
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->launcherConfigModelModule:Lcom/voxel/simplesearchlauncher/dagger/module/LauncherConfigModelModule;

    if-nez v1, :cond_1

    .line 1323
    new-instance v1, Lcom/voxel/simplesearchlauncher/dagger/module/LauncherConfigModelModule;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/dagger/module/LauncherConfigModelModule;-><init>()V

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->launcherConfigModelModule:Lcom/voxel/simplesearchlauncher/dagger/module/LauncherConfigModelModule;

    .line 1325
    :cond_1
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->retrofitModule:Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;

    if-nez v1, :cond_2

    .line 1326
    new-instance v1, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;-><init>()V

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->retrofitModule:Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;

    .line 1328
    :cond_2
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->okHttpModule:Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule;

    if-nez v1, :cond_3

    .line 1329
    new-instance v1, Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule;-><init>()V

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->okHttpModule:Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule;

    .line 1331
    :cond_3
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->serverUrlModule:Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule;

    if-nez v1, :cond_4

    .line 1332
    new-instance v1, Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule;-><init>()V

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->serverUrlModule:Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule;

    .line 1334
    :cond_4
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->frequentlyUsedModule:Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;

    if-nez v1, :cond_5

    .line 1335
    new-instance v1, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;-><init>()V

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->frequentlyUsedModule:Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;

    .line 1337
    :cond_5
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->tileSettingsModule:Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;

    if-nez v1, :cond_6

    .line 1338
    new-instance v1, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;-><init>()V

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->tileSettingsModule:Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;

    .line 1340
    :cond_6
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->oathPlayerModule:Lcom/evie/sidescreen/dagger/external/OathPlayerModule;

    if-nez v1, :cond_7

    .line 1341
    new-instance v1, Lcom/evie/sidescreen/dagger/external/OathPlayerModule;

    invoke-direct {v1}, Lcom/evie/sidescreen/dagger/external/OathPlayerModule;-><init>()V

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->oathPlayerModule:Lcom/evie/sidescreen/dagger/external/OathPlayerModule;

    .line 1343
    :cond_7
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->jigsawModule:Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;

    if-nez v1, :cond_8

    .line 1344
    new-instance v1, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;-><init>()V

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->jigsawModule:Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;

    .line 1346
    :cond_8
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->memoryRegistryModule:Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule;

    if-nez v1, :cond_9

    .line 1347
    new-instance v1, Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule;-><init>()V

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->memoryRegistryModule:Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule;

    .line 1349
    :cond_9
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->deepShortcutManagerModule:Lcom/voxel/simplesearchlauncher/dagger/module/DeepShortcutManagerModule;

    if-nez v1, :cond_a

    .line 1350
    new-instance v1, Lcom/voxel/simplesearchlauncher/dagger/module/DeepShortcutManagerModule;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/dagger/module/DeepShortcutManagerModule;-><init>()V

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->deepShortcutManagerModule:Lcom/voxel/simplesearchlauncher/dagger/module/DeepShortcutManagerModule;

    .line 1352
    :cond_a
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->sideScreenContentModule:Lcom/evie/sidescreen/dagger/SideScreenContentModule;

    if-nez v1, :cond_b

    .line 1353
    new-instance v1, Lcom/evie/sidescreen/dagger/SideScreenContentModule;

    invoke-direct {v1}, Lcom/evie/sidescreen/dagger/SideScreenContentModule;-><init>()V

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->sideScreenContentModule:Lcom/evie/sidescreen/dagger/SideScreenContentModule;

    .line 1355
    :cond_b
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->hideAppsModule:Lcom/voxel/simplesearchlauncher/dagger/module/HideAppsModule;

    if-nez v1, :cond_c

    .line 1356
    new-instance v1, Lcom/voxel/simplesearchlauncher/dagger/module/HideAppsModule;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/dagger/module/HideAppsModule;-><init>()V

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->hideAppsModule:Lcom/voxel/simplesearchlauncher/dagger/module/HideAppsModule;

    .line 1358
    :cond_c
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->application:Landroid/app/Application;

    const-class v2, Landroid/app/Application;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1359
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->context:Landroid/content/Context;

    const-class v2, Landroid/content/Context;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1360
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->memoryWatcher:Lcom/evie/common/utils/MemoryWatcher;

    const-class v2, Lcom/evie/common/utils/MemoryWatcher;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1361
    new-instance v1, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    move-object v3, v1

    iget-object v4, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->singletonsModule:Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;

    iget-object v5, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->launcherConfigModelModule:Lcom/voxel/simplesearchlauncher/dagger/module/LauncherConfigModelModule;

    iget-object v6, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->retrofitModule:Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;

    iget-object v7, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->okHttpModule:Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule;

    iget-object v8, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->serverUrlModule:Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule;

    iget-object v9, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->frequentlyUsedModule:Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;

    iget-object v10, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->tileSettingsModule:Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;

    iget-object v11, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->oathPlayerModule:Lcom/evie/sidescreen/dagger/external/OathPlayerModule;

    iget-object v12, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->jigsawModule:Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;

    iget-object v13, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->memoryRegistryModule:Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule;

    iget-object v14, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->deepShortcutManagerModule:Lcom/voxel/simplesearchlauncher/dagger/module/DeepShortcutManagerModule;

    iget-object v15, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->sideScreenContentModule:Lcom/evie/sidescreen/dagger/SideScreenContentModule;

    iget-object v2, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->hideAppsModule:Lcom/voxel/simplesearchlauncher/dagger/module/HideAppsModule;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->application:Landroid/app/Application;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->context:Landroid/content/Context;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->memoryWatcher:Lcom/evie/common/utils/MemoryWatcher;

    move-object/from16 v19, v2

    const/16 v20, 0x0

    invoke-direct/range {v3 .. v20}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;-><init>(Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;Lcom/voxel/simplesearchlauncher/dagger/module/LauncherConfigModelModule;Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule;Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule;Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;Lcom/evie/sidescreen/dagger/external/OathPlayerModule;Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule;Lcom/voxel/simplesearchlauncher/dagger/module/DeepShortcutManagerModule;Lcom/evie/sidescreen/dagger/SideScreenContentModule;Lcom/voxel/simplesearchlauncher/dagger/module/HideAppsModule;Landroid/app/Application;Landroid/content/Context;Lcom/evie/common/utils/MemoryWatcher;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V

    return-object v1
.end method

.method public context(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;
    .locals 0

    .line 1307
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public bridge synthetic context(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent$Builder;
    .locals 0

    .line 1266
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->context(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public memoryWatcher(Lcom/evie/common/utils/MemoryWatcher;)Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;
    .locals 0

    .line 1313
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/common/utils/MemoryWatcher;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->memoryWatcher:Lcom/evie/common/utils/MemoryWatcher;

    return-object p0
.end method

.method public bridge synthetic memoryWatcher(Lcom/evie/common/utils/MemoryWatcher;)Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent$Builder;
    .locals 0

    .line 1266
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;->memoryWatcher(Lcom/evie/common/utils/MemoryWatcher;)Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$Builder;

    move-result-object p1

    return-object p1
.end method
