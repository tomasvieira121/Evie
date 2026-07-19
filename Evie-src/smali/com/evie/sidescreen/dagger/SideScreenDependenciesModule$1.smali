.class Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule$1;
.super Ljava/lang/Object;
.source "SideScreenDependenciesModule.java"

# interfaces
.implements Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;->providesSearchBarOverrides()Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule$1;->this$0:Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllAppsClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSearchBarClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSettingsClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
