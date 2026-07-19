.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedVideosActivitySubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesRelatedVideosActivityInjector$RelatedVideosActivitySubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RelatedVideosActivitySubcomponentImpl"
.end annotation


# instance fields
.field private oathPlayerObservableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)V
    .locals 0

    .line 2514
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedVideosActivitySubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2516
    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedVideosActivitySubcomponentImpl;->initialize(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 2509
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedVideosActivitySubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)V

    return-void
.end method

.method private initialize(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)V
    .locals 0

    .line 2521
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedVideosActivitySubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 2523
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$6800(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object p1

    .line 2522
    invoke-static {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable_Factory;->create(Ljavax/inject/Provider;)Lcom/evie/sidescreen/oathplayer/OathPlayerObservable_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedVideosActivitySubcomponentImpl;->oathPlayerObservableProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectRelatedVideosActivity(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;
    .locals 1

    .line 2532
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedVideosActivitySubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 2533
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$6900(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Lcom/evie/sidescreen/SideScreenSharedDependencies;

    move-result-object v0

    .line 2532
    invoke-static {p1, v0}, Lcom/evie/sidescreen/SideScreenActivity_MembersInjector;->injectMSideScreenSharedDependencies(Lcom/evie/sidescreen/SideScreenActivity;Lcom/evie/sidescreen/SideScreenSharedDependencies;)V

    .line 2534
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedVideosActivitySubcomponentImpl;->oathPlayerObservableProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/evie/sidescreen/SideScreenActivity_MembersInjector;->injectMOathPlayerObservableProvider(Lcom/evie/sidescreen/SideScreenActivity;Ljavax/inject/Provider;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)V
    .locals 0

    .line 2528
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedVideosActivitySubcomponentImpl;->injectRelatedVideosActivity(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 2509
    check-cast p1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedVideosActivitySubcomponentImpl;->inject(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)V

    return-void
.end method
