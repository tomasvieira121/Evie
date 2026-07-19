.class Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$5;
.super Ljava/lang/Object;
.source "DaggerSideScreenBaseComponent.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->initialize(Landroid/app/Activity;Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributeRelatedContentFragmentInjector$RelatedArticlesFragmentSubcomponent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)V
    .locals 0

    .line 1741
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$5;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributeRelatedContentFragmentInjector$RelatedArticlesFragmentSubcomponent$Builder;
    .locals 3

    .line 1746
    new-instance v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentBuilder;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$5;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentBuilder;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1741
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$5;->get()Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributeRelatedContentFragmentInjector$RelatedArticlesFragmentSubcomponent$Builder;

    move-result-object v0

    return-object v0
.end method
