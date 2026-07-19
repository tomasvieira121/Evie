.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$HideAppsSettingsFragmentSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_HideAppSettingsFragment$HideAppsSettingsFragmentSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HideAppsSettingsFragmentSubcomponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)V
    .locals 0

    .line 1869
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$HideAppsSettingsFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 1866
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$HideAppsSettingsFragmentSubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)V

    return-void
.end method

.method private injectHideAppsSettingsFragment(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;
    .locals 1

    .line 1878
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$HideAppsSettingsFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1879
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$5300(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;

    .line 1878
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment_MembersInjector;->injectMHideAppsModel(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)V
    .locals 0

    .line 1873
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$HideAppsSettingsFragmentSubcomponentImpl;->injectHideAppsSettingsFragment(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 1866
    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$HideAppsSettingsFragmentSubcomponentImpl;->inject(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)V

    return-void
.end method
