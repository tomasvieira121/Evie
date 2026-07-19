.class public Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;
.super Ljava/lang/Object;
.source "SideScreenDependencies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/SideScreenDependencies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SideScreenDependenciesBuilder"
.end annotation


# instance fields
.field private abTestConfiguration:Lcom/evie/common/AbTestConfiguration;

.field private activityOverrides:Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;

.field private customMainTabPresenterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/dagger/ExternalPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private launcherInfo:Lcom/evie/sidescreen/LauncherInfo;

.field private launcherInfo$set:Z

.field private popupListener:Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;

.field private unactivatedTilesSectionOverride:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abTestConfiguration(Lcom/evie/common/AbTestConfiguration;)Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->abTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    return-object p0
.end method

.method public activityOverrides(Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;)Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->activityOverrides:Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;

    return-object p0
.end method

.method public build()Lcom/evie/sidescreen/SideScreenDependencies;
    .locals 8

    .line 22
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->launcherInfo:Lcom/evie/sidescreen/LauncherInfo;

    iget-boolean v1, p0, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->launcherInfo$set:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/evie/sidescreen/SideScreenDependencies;->access$000()Lcom/evie/sidescreen/LauncherInfo;

    move-result-object v0

    :cond_0
    move-object v2, v0

    new-instance v0, Lcom/evie/sidescreen/SideScreenDependencies;

    iget-object v3, p0, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->activityOverrides:Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;

    iget-object v4, p0, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->unactivatedTilesSectionOverride:Ljava/util/List;

    iget-object v5, p0, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->popupListener:Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;

    iget-object v6, p0, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->abTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    iget-object v7, p0, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->customMainTabPresenterFactories:Ljava/util/List;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/evie/sidescreen/SideScreenDependencies;-><init>(Lcom/evie/sidescreen/LauncherInfo;Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;Ljava/util/List;Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;Lcom/evie/common/AbTestConfiguration;Ljava/util/List;)V

    return-object v0
.end method

.method public launcherInfo(Lcom/evie/sidescreen/LauncherInfo;)Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->launcherInfo:Lcom/evie/sidescreen/LauncherInfo;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->launcherInfo$set:Z

    return-object p0
.end method

.method public popupListener(Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;)Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->popupListener:Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SideScreenDependencies.SideScreenDependenciesBuilder(launcherInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->launcherInfo:Lcom/evie/sidescreen/LauncherInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activityOverrides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->activityOverrides:Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unactivatedTilesSectionOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->unactivatedTilesSectionOverride:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", popupListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->popupListener:Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", abTestConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->abTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customMainTabPresenterFactories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->customMainTabPresenterFactories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
