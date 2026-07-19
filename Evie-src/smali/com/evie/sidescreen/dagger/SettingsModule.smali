.class public Lcom/evie/sidescreen/dagger/SettingsModule;
.super Ljava/lang/Object;
.source "SettingsModule.java"


# instance fields
.field private final mSideScreenSettings:Lcom/evie/sidescreen/SideScreenSettings;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/SideScreenSettings;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/SettingsModule;->mSideScreenSettings:Lcom/evie/sidescreen/SideScreenSettings;

    return-void
.end method

.method static synthetic lambda$providesTilesSectionRefreshTimeLimit$0(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1388

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v0, 0xdbba0

    .line 78
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public providesBackgroundEnabledSetting()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SettingsModule;->mSideScreenSettings:Lcom/evie/sidescreen/SideScreenSettings;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenSettings;->backgroundEnabled()Z

    move-result v0

    return v0
.end method

.method public providesConvertToCelsius()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SettingsModule;->mSideScreenSettings:Lcom/evie/sidescreen/SideScreenSettings;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenSettings;->convertToCelsius()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public providesDataUsageDebugEnabled()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SettingsModule;->mSideScreenSettings:Lcom/evie/sidescreen/SideScreenSettings;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenSettings;->debugDataUsage()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public providesFrequentlyUsedEnabled()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SettingsModule;->mSideScreenSettings:Lcom/evie/sidescreen/SideScreenSettings;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenSettings;->frequentlyUsedEnabled()Z

    move-result v0

    return v0
.end method

.method public providesFullscreenSetting()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SettingsModule;->mSideScreenSettings:Lcom/evie/sidescreen/SideScreenSettings;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenSettings;->isFullscreen()Z

    move-result v0

    return v0
.end method

.method public providesIsRtl()Z
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SettingsModule;->mSideScreenSettings:Lcom/evie/sidescreen/SideScreenSettings;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenSettings;->isRtl()Z

    move-result v0

    return v0
.end method

.method public providesPersonalizeOnboardingMode()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SettingsModule;->mSideScreenSettings:Lcom/evie/sidescreen/SideScreenSettings;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenSettings;->isPersonalizeOnboarding()Z

    move-result v0

    return v0
.end method

.method public providesSearchEnabledSetting()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SettingsModule;->mSideScreenSettings:Lcom/evie/sidescreen/SideScreenSettings;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenSettings;->searchEnabled()Z

    move-result v0

    return v0
.end method

.method public providesTilesSectionRefreshTimeLimit()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SettingsModule;->mSideScreenSettings:Lcom/evie/sidescreen/SideScreenSettings;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenSettings;->debugTilesRefresh()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/evie/sidescreen/dagger/-$$Lambda$SettingsModule$YWB3ztEsOaYF2B9Et3p27N5CNXk;->INSTANCE:Lcom/evie/sidescreen/dagger/-$$Lambda$SettingsModule$YWB3ztEsOaYF2B9Et3p27N5CNXk;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public providesTopHeaderEnabled()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SettingsModule;->mSideScreenSettings:Lcom/evie/sidescreen/SideScreenSettings;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenSettings;->topHeaderEnabled()Z

    move-result v0

    return v0
.end method
