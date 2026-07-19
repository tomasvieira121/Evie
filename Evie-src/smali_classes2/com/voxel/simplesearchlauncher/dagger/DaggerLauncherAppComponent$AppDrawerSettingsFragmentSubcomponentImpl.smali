.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppDrawerSettingsFragmentSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_AppDrawerSettingsFragment$AppDrawerSettingsFragmentSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDrawerSettingsFragmentSubcomponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)V
    .locals 0

    .line 2084
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppDrawerSettingsFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 2081
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppDrawerSettingsFragmentSubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)V

    return-void
.end method

.method private injectAppDrawerSettingsFragment(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;
    .locals 1

    .line 2093
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppDrawerSettingsFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 2094
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$4700(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    .line 2093
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment_MembersInjector;->injectMLayoutSettingsManager(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)V
    .locals 0

    .line 2088
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppDrawerSettingsFragmentSubcomponentImpl;->injectAppDrawerSettingsFragment(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 2081
    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppDrawerSettingsFragmentSubcomponentImpl;->inject(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)V

    return-void
.end method
