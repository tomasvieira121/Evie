.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$WidgetsFragmentSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/dagger/module/CommonAndroidInjectionModule_WidgetsFragment$WidgetsFragmentSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WidgetsFragmentSubcomponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;)V
    .locals 0

    .line 1573
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$WidgetsFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 1571
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$WidgetsFragmentSubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;)V

    return-void
.end method

.method private injectWidgetsFragment(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;)Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;
    .locals 1

    .line 1581
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$WidgetsFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1582
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$4600(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    .line 1581
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment_MembersInjector;->injectMIconPackManager(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;)V
    .locals 0

    .line 1577
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$WidgetsFragmentSubcomponentImpl;->injectWidgetsFragment(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;)Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 1571
    check-cast p1, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$WidgetsFragmentSubcomponentImpl;->inject(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;)V

    return-void
.end method
