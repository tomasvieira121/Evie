.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PersonalizeActivitySubcomponentBuilder;
.super Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesPersonalizeActivityInjector$PersonalizeActivitySubcomponent$Builder;
.source "DaggerLauncherAppComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersonalizeActivitySubcomponentBuilder"
.end annotation


# instance fields
.field private seedInstance:Lcom/evie/sidescreen/personalize/PersonalizeActivity;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)V
    .locals 0

    .line 2186
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PersonalizeActivitySubcomponentBuilder;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesPersonalizeActivityInjector$PersonalizeActivitySubcomponent$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 2186
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PersonalizeActivitySubcomponentBuilder;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesPersonalizeActivityInjector$PersonalizeActivitySubcomponent;
    .locals 4

    .line 2200
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PersonalizeActivitySubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/personalize/PersonalizeActivity;

    const-class v1, Lcom/evie/sidescreen/personalize/PersonalizeActivity;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2201
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PersonalizeActivitySubcomponentImpl;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PersonalizeActivitySubcomponentBuilder;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PersonalizeActivitySubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/personalize/PersonalizeActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PersonalizeActivitySubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/sidescreen/personalize/PersonalizeActivity;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ldagger/android/AndroidInjector;
    .locals 1

    .line 2186
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PersonalizeActivitySubcomponentBuilder;->build()Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesPersonalizeActivityInjector$PersonalizeActivitySubcomponent;

    move-result-object v0

    return-object v0
.end method

.method public seedInstance(Lcom/evie/sidescreen/personalize/PersonalizeActivity;)V
    .locals 0

    .line 2193
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/personalize/PersonalizeActivity;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PersonalizeActivitySubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/personalize/PersonalizeActivity;

    return-void
.end method

.method public bridge synthetic seedInstance(Ljava/lang/Object;)V
    .locals 0

    .line 2186
    check-cast p1, Lcom/evie/sidescreen/personalize/PersonalizeActivity;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PersonalizeActivitySubcomponentBuilder;->seedInstance(Lcom/evie/sidescreen/personalize/PersonalizeActivity;)V

    return-void
.end method
