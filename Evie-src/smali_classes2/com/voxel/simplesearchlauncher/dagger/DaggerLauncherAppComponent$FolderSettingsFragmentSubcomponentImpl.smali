.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$FolderSettingsFragmentSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_FolderSettingsFragment$FolderSettingsFragmentSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FolderSettingsFragmentSubcomponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;)V
    .locals 0

    .line 2120
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$FolderSettingsFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 2117
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$FolderSettingsFragmentSubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;)V

    return-void
.end method

.method private injectFolderSettingsFragment(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;)Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;
    .locals 1

    .line 2128
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$FolderSettingsFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 2129
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$4500(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    .line 2128
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment_MembersInjector;->injectMLocalAppsManager(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V

    .line 2130
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$FolderSettingsFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 2131
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$4700(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    .line 2130
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment_MembersInjector;->injectMLayoutSettingsManager(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;)V
    .locals 0

    .line 2124
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$FolderSettingsFragmentSubcomponentImpl;->injectFolderSettingsFragment(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;)Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 2117
    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$FolderSettingsFragmentSubcomponentImpl;->inject(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;)V

    return-void
.end method
