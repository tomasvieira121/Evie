.class final Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentBuilder;
.super Ljava/lang/Object;
.source "DaggerSideScreenBaseComponent.java"

# interfaces
.implements Lcom/evie/sidescreen/dagger/SideScreenSubcomponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SideScreenSubcomponentBuilder"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private sideScreenDependenciesModule:Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;

.field private sideScreenModule:Lcom/evie/sidescreen/dagger/SideScreenModule;

.field final synthetic this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;


# direct methods
.method private constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)V
    .locals 0

    .line 986
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentBuilder;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V
    .locals 0

    .line 986
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentBuilder;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)V

    return-void
.end method


# virtual methods
.method public activity(Landroid/app/Activity;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentBuilder;
    .locals 0

    .line 995
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentBuilder;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public bridge synthetic activity(Landroid/app/Activity;)Lcom/evie/sidescreen/dagger/SideScreenSubcomponent$Builder;
    .locals 0

    .line 986
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentBuilder;->activity(Landroid/app/Activity;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;
    .locals 7

    .line 1008
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentBuilder;->sideScreenDependenciesModule:Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;

    const-class v1, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1010
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentBuilder;->sideScreenModule:Lcom/evie/sidescreen/dagger/SideScreenModule;

    if-nez v0, :cond_0

    .line 1011
    new-instance v0, Lcom/evie/sidescreen/dagger/SideScreenModule;

    invoke-direct {v0}, Lcom/evie/sidescreen/dagger/SideScreenModule;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentBuilder;->sideScreenModule:Lcom/evie/sidescreen/dagger/SideScreenModule;

    .line 1013
    :cond_0
    new-instance v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentBuilder;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentBuilder;->sideScreenDependenciesModule:Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentBuilder;->sideScreenModule:Lcom/evie/sidescreen/dagger/SideScreenModule;

    iget-object v5, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentBuilder;->activity:Landroid/app/Activity;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;Lcom/evie/sidescreen/dagger/SideScreenModule;Landroid/app/Activity;Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V

    return-object v0
.end method

.method public sideScreenDependenciesModule(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentBuilder;
    .locals 0

    .line 1002
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentBuilder;->sideScreenDependenciesModule:Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;

    return-object p0
.end method

.method public bridge synthetic sideScreenDependenciesModule(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)Lcom/evie/sidescreen/dagger/SideScreenSubcomponent$Builder;
    .locals 0

    .line 986
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentBuilder;->sideScreenDependenciesModule(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentBuilder;

    move-result-object p1

    return-object p1
.end method
