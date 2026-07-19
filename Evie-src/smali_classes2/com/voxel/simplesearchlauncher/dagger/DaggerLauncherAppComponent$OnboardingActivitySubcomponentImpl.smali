.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$OnboardingActivitySubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_OnboardingActivity$OnboardingActivitySubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnboardingActivitySubcomponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;)V
    .locals 0

    .line 1606
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$OnboardingActivitySubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 1604
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$OnboardingActivitySubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;)V

    return-void
.end method

.method private injectOnboardingActivity(Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;)Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;
    .locals 1

    .line 1614
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$OnboardingActivitySubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1615
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$4700(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    .line 1614
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity_MembersInjector;->injectMLayoutSettingsManager(Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;)V
    .locals 0

    .line 1610
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$OnboardingActivitySubcomponentImpl;->injectOnboardingActivity(Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;)Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 1604
    check-cast p1, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$OnboardingActivitySubcomponentImpl;->inject(Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;)V

    return-void
.end method
