.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$DesktopSettingsFragmentSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_DesktopSettingsFragment$DesktopSettingsFragmentSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DesktopSettingsFragmentSubcomponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)V
    .locals 0

    .line 1938
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$DesktopSettingsFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 1935
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$DesktopSettingsFragmentSubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)V

    return-void
.end method

.method private injectDesktopSettingsFragment(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;
    .locals 1

    .line 1947
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$DesktopSettingsFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1948
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$4700(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    .line 1947
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment_MembersInjector;->injectMLayoutSettingsManager(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)V
    .locals 0

    .line 1942
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$DesktopSettingsFragmentSubcomponentImpl;->injectDesktopSettingsFragment(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 1935
    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$DesktopSettingsFragmentSubcomponentImpl;->inject(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)V

    return-void
.end method
