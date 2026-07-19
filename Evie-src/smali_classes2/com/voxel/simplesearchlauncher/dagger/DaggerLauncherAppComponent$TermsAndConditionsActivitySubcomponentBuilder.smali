.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TermsAndConditionsActivitySubcomponentBuilder;
.super Lcom/voxel/simplesearchlauncher/dagger/module/CommonAndroidInjectionModule_TermsAndConditionsActivity$TermsAndConditionsActivitySubcomponent$Builder;
.source "DaggerLauncherAppComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TermsAndConditionsActivitySubcomponentBuilder"
.end annotation


# instance fields
.field private seedInstance:Lcom/evie/screen/TermsAndConditionsActivity;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)V
    .locals 0

    .line 1381
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TermsAndConditionsActivitySubcomponentBuilder;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/CommonAndroidInjectionModule_TermsAndConditionsActivity$TermsAndConditionsActivitySubcomponent$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 1381
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TermsAndConditionsActivitySubcomponentBuilder;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/voxel/simplesearchlauncher/dagger/module/CommonAndroidInjectionModule_TermsAndConditionsActivity$TermsAndConditionsActivitySubcomponent;
    .locals 4

    .line 1395
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TermsAndConditionsActivitySubcomponentBuilder;->seedInstance:Lcom/evie/screen/TermsAndConditionsActivity;

    const-class v1, Lcom/evie/screen/TermsAndConditionsActivity;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1396
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TermsAndConditionsActivitySubcomponentImpl;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TermsAndConditionsActivitySubcomponentBuilder;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TermsAndConditionsActivitySubcomponentBuilder;->seedInstance:Lcom/evie/screen/TermsAndConditionsActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TermsAndConditionsActivitySubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/screen/TermsAndConditionsActivity;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ldagger/android/AndroidInjector;
    .locals 1

    .line 1381
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TermsAndConditionsActivitySubcomponentBuilder;->build()Lcom/voxel/simplesearchlauncher/dagger/module/CommonAndroidInjectionModule_TermsAndConditionsActivity$TermsAndConditionsActivitySubcomponent;

    move-result-object v0

    return-object v0
.end method

.method public seedInstance(Lcom/evie/screen/TermsAndConditionsActivity;)V
    .locals 0

    .line 1388
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/screen/TermsAndConditionsActivity;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TermsAndConditionsActivitySubcomponentBuilder;->seedInstance:Lcom/evie/screen/TermsAndConditionsActivity;

    return-void
.end method

.method public bridge synthetic seedInstance(Ljava/lang/Object;)V
    .locals 0

    .line 1381
    check-cast p1, Lcom/evie/screen/TermsAndConditionsActivity;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TermsAndConditionsActivitySubcomponentBuilder;->seedInstance(Lcom/evie/screen/TermsAndConditionsActivity;)V

    return-void
.end method
