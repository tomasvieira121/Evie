.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$IconPackSettingsFragmentSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_IconPackSettingsFragment$IconPackSettingsFragmentSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IconPackSettingsFragmentSubcomponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;)V
    .locals 0

    .line 2010
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$IconPackSettingsFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 2007
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$IconPackSettingsFragmentSubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;)V

    return-void
.end method

.method private injectIconPackSettingsFragment(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;)Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;
    .locals 1

    .line 2019
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$IconPackSettingsFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 2020
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$4500(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    .line 2019
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment_MembersInjector;->injectMLocalAppsManager(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V

    .line 2021
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$IconPackSettingsFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 2022
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$4600(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    .line 2021
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment_MembersInjector;->injectMIconPackManager(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;)V
    .locals 0

    .line 2014
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$IconPackSettingsFragmentSubcomponentImpl;->injectIconPackSettingsFragment(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;)Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 2007
    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$IconPackSettingsFragmentSubcomponentImpl;->inject(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;)V

    return-void
.end method
