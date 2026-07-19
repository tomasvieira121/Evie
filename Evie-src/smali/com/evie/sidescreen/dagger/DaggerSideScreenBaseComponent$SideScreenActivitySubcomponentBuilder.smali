.class final Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentBuilder;
.super Ljava/lang/Object;
.source "DaggerSideScreenBaseComponent.java"

# interfaces
.implements Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SideScreenActivitySubcomponentBuilder"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private popupViewProvider:Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

.field final synthetic this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;


# direct methods
.method private constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)V
    .locals 0

    .line 1603
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentBuilder;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V
    .locals 0

    .line 1603
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentBuilder;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)V

    return-void
.end method


# virtual methods
.method public activity(Landroid/app/Activity;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentBuilder;
    .locals 0

    .line 1611
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentBuilder;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public bridge synthetic activity(Landroid/app/Activity;)Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent$Builder;
    .locals 0

    .line 1603
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentBuilder;->activity(Landroid/app/Activity;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent;
    .locals 5

    .line 1624
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentBuilder;->popupViewProvider:Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    const-class v1, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1625
    new-instance v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentBuilder;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentBuilder;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentBuilder;->popupViewProvider:Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;Landroid/app/Activity;Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V

    return-object v0
.end method

.method public popupViewProvider(Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentBuilder;
    .locals 0

    .line 1618
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentBuilder;->popupViewProvider:Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    return-object p0
.end method

.method public bridge synthetic popupViewProvider(Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;)Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent$Builder;
    .locals 0

    .line 1603
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentBuilder;->popupViewProvider(Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentBuilder;

    move-result-object p1

    return-object p1
.end method
