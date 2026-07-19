.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$CustomGestureSettingsFragmentSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_CustomGestureSettingsFragment$CustomGestureSettingsFragmentSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustomGestureSettingsFragmentSubcomponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;)V
    .locals 0

    .line 1726
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$CustomGestureSettingsFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 1722
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$CustomGestureSettingsFragmentSubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;)V

    return-void
.end method

.method private injectCustomGestureSettingsFragment(Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;)Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;
    .locals 1

    .line 1735
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$CustomGestureSettingsFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1736
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$4500(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    .line 1735
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment_MembersInjector;->injectLocalAppsManager(Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;)V
    .locals 0

    .line 1730
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$CustomGestureSettingsFragmentSubcomponentImpl;->injectCustomGestureSettingsFragment(Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;)Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 1722
    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$CustomGestureSettingsFragmentSubcomponentImpl;->inject(Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;)V

    return-void
.end method
