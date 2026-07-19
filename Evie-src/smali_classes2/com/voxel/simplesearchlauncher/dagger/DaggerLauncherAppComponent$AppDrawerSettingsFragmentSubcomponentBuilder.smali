.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppDrawerSettingsFragmentSubcomponentBuilder;
.super Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_AppDrawerSettingsFragment$AppDrawerSettingsFragmentSubcomponent$Builder;
.source "DaggerLauncherAppComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDrawerSettingsFragmentSubcomponentBuilder"
.end annotation


# instance fields
.field private seedInstance:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)V
    .locals 0

    .line 2062
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppDrawerSettingsFragmentSubcomponentBuilder;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_AppDrawerSettingsFragment$AppDrawerSettingsFragmentSubcomponent$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 2062
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppDrawerSettingsFragmentSubcomponentBuilder;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_AppDrawerSettingsFragment$AppDrawerSettingsFragmentSubcomponent;
    .locals 4

    .line 2076
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppDrawerSettingsFragmentSubcomponentBuilder;->seedInstance:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    const-class v1, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2077
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppDrawerSettingsFragmentSubcomponentImpl;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppDrawerSettingsFragmentSubcomponentBuilder;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppDrawerSettingsFragmentSubcomponentBuilder;->seedInstance:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppDrawerSettingsFragmentSubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ldagger/android/AndroidInjector;
    .locals 1

    .line 2062
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppDrawerSettingsFragmentSubcomponentBuilder;->build()Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_AppDrawerSettingsFragment$AppDrawerSettingsFragmentSubcomponent;

    move-result-object v0

    return-object v0
.end method

.method public seedInstance(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)V
    .locals 0

    .line 2069
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppDrawerSettingsFragmentSubcomponentBuilder;->seedInstance:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    return-void
.end method

.method public bridge synthetic seedInstance(Ljava/lang/Object;)V
    .locals 0

    .line 2062
    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppDrawerSettingsFragmentSubcomponentBuilder;->seedInstance(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)V

    return-void
.end method
