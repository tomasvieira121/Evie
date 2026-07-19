.class final Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$PersonalizeFragmentSubcomponentBuilder;
.super Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_PersonalizeFragment$PersonalizeFragmentSubcomponent$Builder;
.source "DaggerSideScreenBaseComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersonalizeFragmentSubcomponentBuilder"
.end annotation


# instance fields
.field private seedInstance:Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;

.field final synthetic this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;


# direct methods
.method private constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)V
    .locals 0

    .line 2408
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$PersonalizeFragmentSubcomponentBuilder;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_PersonalizeFragment$PersonalizeFragmentSubcomponent$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V
    .locals 0

    .line 2408
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$PersonalizeFragmentSubcomponentBuilder;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_PersonalizeFragment$PersonalizeFragmentSubcomponent;
    .locals 4

    .line 2422
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$PersonalizeFragmentSubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;

    const-class v1, Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2423
    new-instance v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$PersonalizeFragmentSubcomponentImpl;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$PersonalizeFragmentSubcomponentBuilder;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$PersonalizeFragmentSubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$PersonalizeFragmentSubcomponentImpl;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ldagger/android/AndroidInjector;
    .locals 1

    .line 2408
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$PersonalizeFragmentSubcomponentBuilder;->build()Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_PersonalizeFragment$PersonalizeFragmentSubcomponent;

    move-result-object v0

    return-object v0
.end method

.method public seedInstance(Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;)V
    .locals 0

    .line 2415
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$PersonalizeFragmentSubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;

    return-void
.end method

.method public bridge synthetic seedInstance(Ljava/lang/Object;)V
    .locals 0

    .line 2408
    check-cast p1, Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$PersonalizeFragmentSubcomponentBuilder;->seedInstance(Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;)V

    return-void
.end method
