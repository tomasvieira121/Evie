.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedVideosActivitySubcomponentBuilder;
.super Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesRelatedVideosActivityInjector$RelatedVideosActivitySubcomponent$Builder;
.source "DaggerLauncherAppComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RelatedVideosActivitySubcomponentBuilder"
.end annotation


# instance fields
.field private seedInstance:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)V
    .locals 0

    .line 2490
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedVideosActivitySubcomponentBuilder;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesRelatedVideosActivityInjector$RelatedVideosActivitySubcomponent$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 2490
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedVideosActivitySubcomponentBuilder;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesRelatedVideosActivityInjector$RelatedVideosActivitySubcomponent;
    .locals 4

    .line 2504
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedVideosActivitySubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    const-class v1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2505
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedVideosActivitySubcomponentImpl;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedVideosActivitySubcomponentBuilder;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedVideosActivitySubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedVideosActivitySubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ldagger/android/AndroidInjector;
    .locals 1

    .line 2490
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedVideosActivitySubcomponentBuilder;->build()Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesRelatedVideosActivityInjector$RelatedVideosActivitySubcomponent;

    move-result-object v0

    return-object v0
.end method

.method public seedInstance(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)V
    .locals 0

    .line 2497
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedVideosActivitySubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    return-void
.end method

.method public bridge synthetic seedInstance(Ljava/lang/Object;)V
    .locals 0

    .line 2490
    check-cast p1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedVideosActivitySubcomponentBuilder;->seedInstance(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)V

    return-void
.end method
