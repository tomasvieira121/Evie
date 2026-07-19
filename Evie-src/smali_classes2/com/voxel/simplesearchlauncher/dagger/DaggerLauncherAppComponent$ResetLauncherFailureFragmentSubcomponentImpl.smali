.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ResetLauncherFailureFragmentSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_ResetLauncherFailureFragment$ResetLauncherFailureFragmentSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResetLauncherFailureFragmentSubcomponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;)V
    .locals 0

    .line 1764
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ResetLauncherFailureFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 1760
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ResetLauncherFailureFragmentSubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;)V

    return-void
.end method

.method private injectResetLauncherFailureFragment(Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;)Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;
    .locals 1

    .line 1773
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ResetLauncherFailureFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1774
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$3800(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    .line 1773
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment_MembersInjector;->injectMAnalyticsHandler(Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;)V
    .locals 0

    .line 1768
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ResetLauncherFailureFragmentSubcomponentImpl;->injectResetLauncherFailureFragment(Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;)Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 1760
    check-cast p1, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ResetLauncherFailureFragmentSubcomponentImpl;->inject(Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;)V

    return-void
.end method
