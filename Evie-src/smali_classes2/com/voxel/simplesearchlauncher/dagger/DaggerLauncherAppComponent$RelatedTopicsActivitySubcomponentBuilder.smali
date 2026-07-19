.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedTopicsActivitySubcomponentBuilder;
.super Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesRelatedTopicsActivityInjector$RelatedTopicsActivitySubcomponent$Builder;
.source "DaggerLauncherAppComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RelatedTopicsActivitySubcomponentBuilder"
.end annotation


# instance fields
.field private seedInstance:Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)V
    .locals 0

    .line 2339
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedTopicsActivitySubcomponentBuilder;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesRelatedTopicsActivityInjector$RelatedTopicsActivitySubcomponent$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 2339
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedTopicsActivitySubcomponentBuilder;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesRelatedTopicsActivityInjector$RelatedTopicsActivitySubcomponent;
    .locals 4

    .line 2353
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedTopicsActivitySubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;

    const-class v1, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2354
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedTopicsActivitySubcomponentImpl;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedTopicsActivitySubcomponentBuilder;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedTopicsActivitySubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedTopicsActivitySubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ldagger/android/AndroidInjector;
    .locals 1

    .line 2339
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedTopicsActivitySubcomponentBuilder;->build()Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesRelatedTopicsActivityInjector$RelatedTopicsActivitySubcomponent;

    move-result-object v0

    return-object v0
.end method

.method public seedInstance(Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;)V
    .locals 0

    .line 2346
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedTopicsActivitySubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;

    return-void
.end method

.method public bridge synthetic seedInstance(Ljava/lang/Object;)V
    .locals 0

    .line 2339
    check-cast p1, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedTopicsActivitySubcomponentBuilder;->seedInstance(Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;)V

    return-void
.end method
