.class final Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedVideosFragmentSubcomponentBuilder;
.super Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributeRelatedVideosFragmentInjector$RelatedVideosFragmentSubcomponent$Builder;
.source "DaggerSideScreenBaseComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RelatedVideosFragmentSubcomponentBuilder"
.end annotation


# instance fields
.field private seedInstance:Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;

.field final synthetic this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;


# direct methods
.method private constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)V
    .locals 0

    .line 2997
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedVideosFragmentSubcomponentBuilder;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributeRelatedVideosFragmentInjector$RelatedVideosFragmentSubcomponent$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V
    .locals 0

    .line 2997
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedVideosFragmentSubcomponentBuilder;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributeRelatedVideosFragmentInjector$RelatedVideosFragmentSubcomponent;
    .locals 4

    .line 3011
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedVideosFragmentSubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;

    const-class v1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3012
    new-instance v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedVideosFragmentSubcomponentImpl;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedVideosFragmentSubcomponentBuilder;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedVideosFragmentSubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedVideosFragmentSubcomponentImpl;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ldagger/android/AndroidInjector;
    .locals 1

    .line 2997
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedVideosFragmentSubcomponentBuilder;->build()Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributeRelatedVideosFragmentInjector$RelatedVideosFragmentSubcomponent;

    move-result-object v0

    return-object v0
.end method

.method public seedInstance(Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;)V
    .locals 0

    .line 3004
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedVideosFragmentSubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;

    return-void
.end method

.method public bridge synthetic seedInstance(Ljava/lang/Object;)V
    .locals 0

    .line 2997
    check-cast p1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedVideosFragmentSubcomponentBuilder;->seedInstance(Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;)V

    return-void
.end method
