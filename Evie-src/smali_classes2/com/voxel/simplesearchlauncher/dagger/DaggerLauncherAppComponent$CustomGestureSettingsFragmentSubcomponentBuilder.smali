.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$CustomGestureSettingsFragmentSubcomponentBuilder;
.super Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_CustomGestureSettingsFragment$CustomGestureSettingsFragmentSubcomponent$Builder;
.source "DaggerLauncherAppComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustomGestureSettingsFragmentSubcomponentBuilder"
.end annotation


# instance fields
.field private seedInstance:Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)V
    .locals 0

    .line 1703
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$CustomGestureSettingsFragmentSubcomponentBuilder;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_CustomGestureSettingsFragment$CustomGestureSettingsFragmentSubcomponent$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 1703
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$CustomGestureSettingsFragmentSubcomponentBuilder;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_CustomGestureSettingsFragment$CustomGestureSettingsFragmentSubcomponent;
    .locals 4

    .line 1717
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$CustomGestureSettingsFragmentSubcomponentBuilder;->seedInstance:Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;

    const-class v1, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1718
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$CustomGestureSettingsFragmentSubcomponentImpl;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$CustomGestureSettingsFragmentSubcomponentBuilder;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$CustomGestureSettingsFragmentSubcomponentBuilder;->seedInstance:Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$CustomGestureSettingsFragmentSubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ldagger/android/AndroidInjector;
    .locals 1

    .line 1703
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$CustomGestureSettingsFragmentSubcomponentBuilder;->build()Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_CustomGestureSettingsFragment$CustomGestureSettingsFragmentSubcomponent;

    move-result-object v0

    return-object v0
.end method

.method public seedInstance(Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;)V
    .locals 0

    .line 1710
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$CustomGestureSettingsFragmentSubcomponentBuilder;->seedInstance:Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;

    return-void
.end method

.method public bridge synthetic seedInstance(Ljava/lang/Object;)V
    .locals 0

    .line 1703
    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$CustomGestureSettingsFragmentSubcomponentBuilder;->seedInstance(Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;)V

    return-void
.end method
