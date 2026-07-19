.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$MessagingServiceSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesMessagingServiceInjector$MessagingServiceSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessagingServiceSubcomponentImpl"
.end annotation


# instance fields
.field private providesPromptStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/PromptStoreModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/sidescreen/firebase/MessagingService;)V
    .locals 0

    .line 2599
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$MessagingServiceSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2601
    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$MessagingServiceSubcomponentImpl;->initialize(Lcom/evie/sidescreen/firebase/MessagingService;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/sidescreen/firebase/MessagingService;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 2594
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$MessagingServiceSubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/sidescreen/firebase/MessagingService;)V

    return-void
.end method

.method private initialize(Lcom/evie/sidescreen/firebase/MessagingService;)V
    .locals 1

    .line 2606
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$MessagingServiceSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 2609
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$3500(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$MessagingServiceSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 2610
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$7900(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 2608
    invoke-static {p1, v0}, Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory;

    move-result-object p1

    .line 2607
    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$MessagingServiceSubcomponentImpl;->providesPromptStoreProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectMessagingService(Lcom/evie/sidescreen/firebase/MessagingService;)Lcom/evie/sidescreen/firebase/MessagingService;
    .locals 1

    .line 2619
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$MessagingServiceSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 2620
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$6900(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Lcom/evie/sidescreen/SideScreenSharedDependencies;

    move-result-object v0

    .line 2619
    invoke-static {p1, v0}, Lcom/evie/sidescreen/firebase/MessagingService_MembersInjector;->injectMSideScreenSharedDependencies(Lcom/evie/sidescreen/firebase/MessagingService;Lcom/evie/sidescreen/SideScreenSharedDependencies;)V

    .line 2621
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$MessagingServiceSubcomponentImpl;->providesPromptStoreProvider:Ljavax/inject/Provider;

    .line 2622
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/models/PromptStoreModel;

    .line 2621
    invoke-static {p1, v0}, Lcom/evie/sidescreen/firebase/MessagingService_MembersInjector;->injectMPromptStoreModel(Lcom/evie/sidescreen/firebase/MessagingService;Lcom/evie/models/PromptStoreModel;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/evie/sidescreen/firebase/MessagingService;)V
    .locals 0

    .line 2615
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$MessagingServiceSubcomponentImpl;->injectMessagingService(Lcom/evie/sidescreen/firebase/MessagingService;)Lcom/evie/sidescreen/firebase/MessagingService;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 2594
    check-cast p1, Lcom/evie/sidescreen/firebase/MessagingService;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$MessagingServiceSubcomponentImpl;->inject(Lcom/evie/sidescreen/firebase/MessagingService;)V

    return-void
.end method
