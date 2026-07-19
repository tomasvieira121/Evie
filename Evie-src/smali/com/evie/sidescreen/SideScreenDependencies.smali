.class public Lcom/evie/sidescreen/SideScreenDependencies;
.super Ljava/lang/Object;
.source "SideScreenDependencies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;,
        Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;,
        Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;
    }
.end annotation


# instance fields
.field private final mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

.field private final mActivityOverrides:Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;

.field private final mCustomMainTabPresenterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/dagger/ExternalPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mLauncherInfo:Lcom/evie/sidescreen/LauncherInfo;

.field private final mPopupListener:Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;

.field private final mUnactivatedTilesSectionOverride:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static $default$launcherInfo()Lcom/evie/sidescreen/LauncherInfo;
    .locals 2

    .line 22
    new-instance v0, Lcom/evie/sidescreen/LauncherInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/evie/sidescreen/LauncherInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    return-object v0
.end method

.method public constructor <init>(Lcom/evie/sidescreen/LauncherInfo;Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;Ljava/util/List;Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;Lcom/evie/common/AbTestConfiguration;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/LauncherInfo;",
            "Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;",
            "Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;",
            "Lcom/evie/common/AbTestConfiguration;",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/dagger/ExternalPresenterFactory;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenDependencies;->mLauncherInfo:Lcom/evie/sidescreen/LauncherInfo;

    iput-object p2, p0, Lcom/evie/sidescreen/SideScreenDependencies;->mActivityOverrides:Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;

    iput-object p3, p0, Lcom/evie/sidescreen/SideScreenDependencies;->mUnactivatedTilesSectionOverride:Ljava/util/List;

    iput-object p4, p0, Lcom/evie/sidescreen/SideScreenDependencies;->mPopupListener:Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;

    iput-object p5, p0, Lcom/evie/sidescreen/SideScreenDependencies;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    iput-object p6, p0, Lcom/evie/sidescreen/SideScreenDependencies;->mCustomMainTabPresenterFactories:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Lcom/evie/sidescreen/LauncherInfo;
    .locals 1

    .line 26
    invoke-static {}, Lcom/evie/sidescreen/SideScreenDependencies;->$default$launcherInfo()Lcom/evie/sidescreen/LauncherInfo;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;
    .locals 1

    .line 22
    new-instance v0, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;

    invoke-direct {v0}, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAbTestConfiguration()Lcom/evie/common/AbTestConfiguration;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenDependencies;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    return-object v0
.end method

.method public getActivityOverrides()Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenDependencies;->mActivityOverrides:Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;

    return-object v0
.end method

.method public getCustomMainTabPresenterFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/dagger/ExternalPresenterFactory;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenDependencies;->mCustomMainTabPresenterFactories:Ljava/util/List;

    return-object v0
.end method

.method public getLauncherInfo()Lcom/evie/sidescreen/LauncherInfo;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenDependencies;->mLauncherInfo:Lcom/evie/sidescreen/LauncherInfo;

    return-object v0
.end method

.method public getPopupListener()Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenDependencies;->mPopupListener:Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;

    return-object v0
.end method

.method public getUnactivatedTilesSectionOverride()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenDependencies;->mUnactivatedTilesSectionOverride:Ljava/util/List;

    return-object v0
.end method
