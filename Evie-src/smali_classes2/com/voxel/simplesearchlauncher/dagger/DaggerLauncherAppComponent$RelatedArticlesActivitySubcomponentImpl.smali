.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedArticlesActivitySubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesRelatedArticlesActivityInjector$RelatedArticlesActivitySubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RelatedArticlesActivitySubcomponentImpl"
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
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;)V
    .locals 0

    .line 2463
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedArticlesActivitySubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2465
    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedArticlesActivitySubcomponentImpl;->initialize(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 2458
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedArticlesActivitySubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;)V

    return-void
.end method

.method private initialize(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;)V
    .locals 0

    .line 2470
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedArticlesActivitySubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 2472
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$6800(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object p1

    .line 2471
    invoke-static {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable_Factory;->create(Ljavax/inject/Provider;)Lcom/evie/sidescreen/oathplayer/OathPlayerObservable_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedArticlesActivitySubcomponentImpl;->oathPlayerObservableProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectRelatedArticlesActivity(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;)Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;
    .locals 1

    .line 2482
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedArticlesActivitySubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 2483
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$6900(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Lcom/evie/sidescreen/SideScreenSharedDependencies;

    move-result-object v0

    .line 2482
    invoke-static {p1, v0}, Lcom/evie/sidescreen/SideScreenActivity_MembersInjector;->injectMSideScreenSharedDependencies(Lcom/evie/sidescreen/SideScreenActivity;Lcom/evie/sidescreen/SideScreenSharedDependencies;)V

    .line 2484
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedArticlesActivitySubcomponentImpl;->oathPlayerObservableProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/evie/sidescreen/SideScreenActivity_MembersInjector;->injectMOathPlayerObservableProvider(Lcom/evie/sidescreen/SideScreenActivity;Ljavax/inject/Provider;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;)V
    .locals 0

    .line 2477
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedArticlesActivitySubcomponentImpl;->injectRelatedArticlesActivity(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;)Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 2458
    check-cast p1, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$RelatedArticlesActivitySubcomponentImpl;->inject(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;)V

    return-void
.end method
