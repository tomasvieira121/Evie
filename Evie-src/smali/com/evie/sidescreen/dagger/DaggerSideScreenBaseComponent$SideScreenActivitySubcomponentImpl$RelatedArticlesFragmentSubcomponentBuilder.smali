.class final Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentBuilder;
.super Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributeRelatedContentFragmentInjector$RelatedArticlesFragmentSubcomponent$Builder;
.source "DaggerSideScreenBaseComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RelatedArticlesFragmentSubcomponentBuilder"
.end annotation


# instance fields
.field private seedInstance:Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;

.field final synthetic this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;


# direct methods
.method private constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)V
    .locals 0

    .line 2523
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentBuilder;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributeRelatedContentFragmentInjector$RelatedArticlesFragmentSubcomponent$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V
    .locals 0

    .line 2523
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentBuilder;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributeRelatedContentFragmentInjector$RelatedArticlesFragmentSubcomponent;
    .locals 4

    .line 2537
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;

    const-class v1, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2538
    new-instance v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentBuilder;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ldagger/android/AndroidInjector;
    .locals 1

    .line 2523
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentBuilder;->build()Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributeRelatedContentFragmentInjector$RelatedArticlesFragmentSubcomponent;

    move-result-object v0

    return-object v0
.end method

.method public seedInstance(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;)V
    .locals 0

    .line 2530
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentBuilder;->seedInstance:Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;

    return-void
.end method

.method public bridge synthetic seedInstance(Ljava/lang/Object;)V
    .locals 0

    .line 2523
    check-cast p1, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentBuilder;->seedInstance(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;)V

    return-void
.end method
