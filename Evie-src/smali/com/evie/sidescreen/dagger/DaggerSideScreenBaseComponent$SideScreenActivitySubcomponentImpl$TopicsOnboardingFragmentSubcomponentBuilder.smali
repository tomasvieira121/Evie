.class final Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentBuilder;
.super Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributeTopicsOnboardingFragmentInjector$TopicsOnboardingFragmentSubcomponent$Builder;
.source "DaggerSideScreenBaseComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TopicsOnboardingFragmentSubcomponentBuilder"
.end annotation


# instance fields
.field private seedInstance:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;

.field final synthetic this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;


# direct methods
.method private constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)V
    .locals 0

    .line 2279
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentBuilder;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributeTopicsOnboardingFragmentInjector$TopicsOnboardingFragmentSubcomponent$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V
    .locals 0

    .line 2279
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentBuilder;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributeTopicsOnboardingFragmentInjector$TopicsOnboardingFragmentSubcomponent;
    .locals 4

    .line 2293
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;

    const-class v1, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2294
    new-instance v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentBuilder;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ldagger/android/AndroidInjector;
    .locals 1

    .line 2279
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentBuilder;->build()Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributeTopicsOnboardingFragmentInjector$TopicsOnboardingFragmentSubcomponent;

    move-result-object v0

    return-object v0
.end method

.method public seedInstance(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;)V
    .locals 0

    .line 2286
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;

    return-void
.end method

.method public bridge synthetic seedInstance(Ljava/lang/Object;)V
    .locals 0

    .line 2279
    check-cast p1, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentBuilder;->seedInstance(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;)V

    return-void
.end method
