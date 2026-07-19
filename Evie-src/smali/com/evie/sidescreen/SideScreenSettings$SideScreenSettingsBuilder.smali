.class public Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;
.super Ljava/lang/Object;
.source "SideScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/SideScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SideScreenSettingsBuilder"
.end annotation


# instance fields
.field private backgroundEnabled:Z

.field private convertToCelsius:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private debugDataUsage:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private debugTilesRefresh:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private frequentlyUsedEnabled:Z

.field private isFullscreen:Z

.field private isPersonalizeOnboarding:Z

.field private isRtl:Z

.field private searchEnabled:Z

.field private topHeaderEnabled:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->isRtl:Z

    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->backgroundEnabled:Z

    .line 30
    iput-boolean v1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->searchEnabled:Z

    .line 31
    iput-boolean v1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->frequentlyUsedEnabled:Z

    .line 32
    iput-boolean v1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->topHeaderEnabled:Z

    .line 33
    iput-boolean v0, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->isPersonalizeOnboarding:Z

    .line 34
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->debugDataUsage:Lio/reactivex/Observable;

    .line 35
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->debugTilesRefresh:Lio/reactivex/Observable;

    .line 36
    iput-boolean v0, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->isFullscreen:Z

    .line 37
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->convertToCelsius:Lio/reactivex/Observable;

    return-void
.end method


# virtual methods
.method public backgroundEnabled(Z)Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->backgroundEnabled:Z

    return-object p0
.end method

.method public build()Lcom/evie/sidescreen/SideScreenSettings;
    .locals 12

    .line 12
    new-instance v11, Lcom/evie/sidescreen/SideScreenSettings;

    iget-boolean v1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->isRtl:Z

    iget-boolean v2, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->backgroundEnabled:Z

    iget-boolean v3, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->searchEnabled:Z

    iget-boolean v4, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->frequentlyUsedEnabled:Z

    iget-boolean v5, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->topHeaderEnabled:Z

    iget-boolean v6, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->isPersonalizeOnboarding:Z

    iget-object v7, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->debugDataUsage:Lio/reactivex/Observable;

    iget-object v8, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->debugTilesRefresh:Lio/reactivex/Observable;

    iget-boolean v9, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->isFullscreen:Z

    iget-object v10, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->convertToCelsius:Lio/reactivex/Observable;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/evie/sidescreen/SideScreenSettings;-><init>(ZZZZZZLio/reactivex/Observable;Lio/reactivex/Observable;ZLio/reactivex/Observable;)V

    return-object v11
.end method

.method public convertToCelsius(Lio/reactivex/Observable;)Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->convertToCelsius:Lio/reactivex/Observable;

    return-object p0
.end method

.method public frequentlyUsedEnabled(Z)Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->frequentlyUsedEnabled:Z

    return-object p0
.end method

.method public isFullscreen(Z)Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->isFullscreen:Z

    return-object p0
.end method

.method public isPersonalizeOnboarding(Z)Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->isPersonalizeOnboarding:Z

    return-object p0
.end method

.method public isRtl(Z)Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->isRtl:Z

    return-object p0
.end method

.method public searchEnabled(Z)Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->searchEnabled:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SideScreenSettings.SideScreenSettingsBuilder(isRtl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->isRtl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->backgroundEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", searchEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->searchEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", frequentlyUsedEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->frequentlyUsedEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", topHeaderEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->topHeaderEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPersonalizeOnboarding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->isPersonalizeOnboarding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", debugDataUsage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->debugDataUsage:Lio/reactivex/Observable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", debugTilesRefresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->debugTilesRefresh:Lio/reactivex/Observable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isFullscreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->isFullscreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", convertToCelsius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->convertToCelsius:Lio/reactivex/Observable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
