.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ResetLauncherPromptFragmentSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_ResetLauncherPromptFragment$ResetLauncherPromptFragmentSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResetLauncherPromptFragmentSubcomponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;)V
    .locals 0

    .line 1801
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ResetLauncherPromptFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 1798
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ResetLauncherPromptFragmentSubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;)V

    return-void
.end method

.method private injectResetLauncherPromptFragment(Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;)Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;
    .locals 1

    .line 1810
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ResetLauncherPromptFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1811
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$3800(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    .line 1810
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment_MembersInjector;->injectMAnalyticsHandler(Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;)V
    .locals 0

    .line 1805
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ResetLauncherPromptFragmentSubcomponentImpl;->injectResetLauncherPromptFragment(Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;)Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 1798
    check-cast p1, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ResetLauncherPromptFragmentSubcomponentImpl;->inject(Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;)V

    return-void
.end method
