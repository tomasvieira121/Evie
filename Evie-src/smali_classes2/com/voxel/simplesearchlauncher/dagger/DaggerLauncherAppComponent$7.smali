.class Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$7;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->initialize(Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;Lcom/voxel/simplesearchlauncher/dagger/module/LauncherConfigModelModule;Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule;Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule;Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;Lcom/evie/sidescreen/dagger/external/OathPlayerModule;Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule;Lcom/voxel/simplesearchlauncher/dagger/module/DeepShortcutManagerModule;Lcom/evie/sidescreen/dagger/SideScreenContentModule;Lcom/voxel/simplesearchlauncher/dagger/module/HideAppsModule;Landroid/app/Application;Landroid/content/Context;Lcom/evie/common/utils/MemoryWatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_Launcher$LauncherSubcomponent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)V
    .locals 0

    .line 783
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$7;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_Launcher$LauncherSubcomponent$Builder;
    .locals 3

    .line 786
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$LauncherSubcomponentBuilder;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$7;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$LauncherSubcomponentBuilder;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 783
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$7;->get()Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_Launcher$LauncherSubcomponent$Builder;

    move-result-object v0

    return-object v0
.end method
