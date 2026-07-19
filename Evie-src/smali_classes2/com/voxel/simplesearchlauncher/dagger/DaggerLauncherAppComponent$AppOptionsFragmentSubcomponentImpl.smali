.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppOptionsFragmentSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_AppOptionsFragment$AppOptionsFragmentSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppOptionsFragmentSubcomponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)V
    .locals 0

    .line 1903
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppOptionsFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 1901
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppOptionsFragmentSubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)V

    return-void
.end method

.method private injectAppOptionsFragment(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;
    .locals 1

    .line 1911
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppOptionsFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1912
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$4500(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    .line 1911
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment_MembersInjector;->injectMLocalAppsManager(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)V
    .locals 0

    .line 1907
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppOptionsFragmentSubcomponentImpl;->injectAppOptionsFragment(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 1901
    check-cast p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$AppOptionsFragmentSubcomponentImpl;->inject(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)V

    return-void
.end method
