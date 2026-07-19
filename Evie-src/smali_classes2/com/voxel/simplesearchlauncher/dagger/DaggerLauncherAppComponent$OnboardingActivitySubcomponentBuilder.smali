.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$OnboardingActivitySubcomponentBuilder;
.super Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_OnboardingActivity$OnboardingActivitySubcomponent$Builder;
.source "DaggerLauncherAppComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnboardingActivitySubcomponentBuilder"
.end annotation


# instance fields
.field private seedInstance:Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)V
    .locals 0

    .line 1587
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$OnboardingActivitySubcomponentBuilder;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_OnboardingActivity$OnboardingActivitySubcomponent$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 1587
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$OnboardingActivitySubcomponentBuilder;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_OnboardingActivity$OnboardingActivitySubcomponent;
    .locals 4

    .line 1599
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$OnboardingActivitySubcomponentBuilder;->seedInstance:Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;

    const-class v1, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1600
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$OnboardingActivitySubcomponentImpl;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$OnboardingActivitySubcomponentBuilder;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$OnboardingActivitySubcomponentBuilder;->seedInstance:Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$OnboardingActivitySubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ldagger/android/AndroidInjector;
    .locals 1

    .line 1587
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$OnboardingActivitySubcomponentBuilder;->build()Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_OnboardingActivity$OnboardingActivitySubcomponent;

    move-result-object v0

    return-object v0
.end method

.method public seedInstance(Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;)V
    .locals 0

    .line 1594
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$OnboardingActivitySubcomponentBuilder;->seedInstance:Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;

    return-void
.end method

.method public bridge synthetic seedInstance(Ljava/lang/Object;)V
    .locals 0

    .line 1587
    check-cast p1, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$OnboardingActivitySubcomponentBuilder;->seedInstance(Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;)V

    return-void
.end method
