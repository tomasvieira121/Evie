.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TokenServiceSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesTokenServiceInjector$TokenServiceSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TokenServiceSubcomponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/sidescreen/firebase/TokenService;)V
    .locals 0

    .line 2561
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TokenServiceSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/sidescreen/firebase/TokenService;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 2558
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TokenServiceSubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/sidescreen/firebase/TokenService;)V

    return-void
.end method

.method private injectTokenService(Lcom/evie/sidescreen/firebase/TokenService;)Lcom/evie/sidescreen/firebase/TokenService;
    .locals 1

    .line 2569
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TokenServiceSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 2570
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$6900(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Lcom/evie/sidescreen/SideScreenSharedDependencies;

    move-result-object v0

    .line 2569
    invoke-static {p1, v0}, Lcom/evie/sidescreen/firebase/TokenService_MembersInjector;->injectMSideScreenSharedDependencies(Lcom/evie/sidescreen/firebase/TokenService;Lcom/evie/sidescreen/SideScreenSharedDependencies;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/evie/sidescreen/firebase/TokenService;)V
    .locals 0

    .line 2565
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TokenServiceSubcomponentImpl;->injectTokenService(Lcom/evie/sidescreen/firebase/TokenService;)Lcom/evie/sidescreen/firebase/TokenService;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 2558
    check-cast p1, Lcom/evie/sidescreen/firebase/TokenService;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TokenServiceSubcomponentImpl;->inject(Lcom/evie/sidescreen/firebase/TokenService;)V

    return-void
.end method
