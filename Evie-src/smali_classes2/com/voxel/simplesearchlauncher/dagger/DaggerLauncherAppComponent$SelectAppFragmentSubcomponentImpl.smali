.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SelectAppFragmentSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_SelectAppFragment$SelectAppFragmentSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectAppFragmentSubcomponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;)V
    .locals 0

    .line 1689
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SelectAppFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 1687
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SelectAppFragmentSubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;)V

    return-void
.end method

.method private injectSelectAppFragment(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;)Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;
    .locals 1

    .line 1697
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SelectAppFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1698
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$4500(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    .line 1697
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment_MembersInjector;->injectMLocalAppsManager(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;)V
    .locals 0

    .line 1693
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SelectAppFragmentSubcomponentImpl;->injectSelectAppFragment(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;)Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 1687
    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SelectAppFragmentSubcomponentImpl;->inject(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;)V

    return-void
.end method
