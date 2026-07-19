.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PersonalizeSearchActivitySubcomponentBuilder;
.super Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesPersonalizeSearchActivityInjector$PersonalizeSearchActivitySubcomponent$Builder;
.source "DaggerLauncherAppComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersonalizeSearchActivitySubcomponentBuilder"
.end annotation


# instance fields
.field private seedInstance:Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)V
    .locals 0

    .line 2288
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PersonalizeSearchActivitySubcomponentBuilder;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesPersonalizeSearchActivityInjector$PersonalizeSearchActivitySubcomponent$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 2288
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PersonalizeSearchActivitySubcomponentBuilder;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesPersonalizeSearchActivityInjector$PersonalizeSearchActivitySubcomponent;
    .locals 4

    .line 2302
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PersonalizeSearchActivitySubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;

    const-class v1, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2303
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PersonalizeSearchActivitySubcomponentImpl;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PersonalizeSearchActivitySubcomponentBuilder;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PersonalizeSearchActivitySubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PersonalizeSearchActivitySubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ldagger/android/AndroidInjector;
    .locals 1

    .line 2288
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PersonalizeSearchActivitySubcomponentBuilder;->build()Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesPersonalizeSearchActivityInjector$PersonalizeSearchActivitySubcomponent;

    move-result-object v0

    return-object v0
.end method

.method public seedInstance(Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;)V
    .locals 0

    .line 2295
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PersonalizeSearchActivitySubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;

    return-void
.end method

.method public bridge synthetic seedInstance(Ljava/lang/Object;)V
    .locals 0

    .line 2288
    check-cast p1, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PersonalizeSearchActivitySubcomponentBuilder;->seedInstance(Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;)V

    return-void
.end method
