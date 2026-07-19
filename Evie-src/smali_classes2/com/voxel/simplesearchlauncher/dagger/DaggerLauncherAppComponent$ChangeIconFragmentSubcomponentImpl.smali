.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ChangeIconFragmentSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_ChangeIconFragment$ChangeIconFragmentSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChangeIconFragmentSubcomponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)V
    .locals 0

    .line 2046
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ChangeIconFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 2044
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ChangeIconFragmentSubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)V

    return-void
.end method

.method private injectChangeIconFragment(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;
    .locals 1

    .line 2054
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ChangeIconFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 2055
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$4500(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    .line 2054
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment_MembersInjector;->injectMLocalAppsManager(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V

    .line 2056
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ChangeIconFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 2057
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$4600(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    .line 2056
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment_MembersInjector;->injectMIconPackManager(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)V
    .locals 0

    .line 2050
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ChangeIconFragmentSubcomponentImpl;->injectChangeIconFragment(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 2044
    check-cast p1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ChangeIconFragmentSubcomponentImpl;->inject(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)V

    return-void
.end method
