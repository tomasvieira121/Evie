.class public Lcom/evie/sidescreen/SideScreenSettings;
.super Ljava/lang/Object;
.source "SideScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;
    }
.end annotation


# instance fields
.field private final backgroundEnabled:Z

.field private final convertToCelsius:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final debugDataUsage:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final debugTilesRefresh:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final frequentlyUsedEnabled:Z

.field private final isFullscreen:Z

.field private final isPersonalizeOnboarding:Z

.field private final isRtl:Z

.field private final searchEnabled:Z

.field private final topHeaderEnabled:Z


# direct methods
.method constructor <init>(ZZZZZZLio/reactivex/Observable;Lio/reactivex/Observable;ZLio/reactivex/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZZ",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/evie/sidescreen/SideScreenSettings;->isRtl:Z

    iput-boolean p2, p0, Lcom/evie/sidescreen/SideScreenSettings;->backgroundEnabled:Z

    iput-boolean p3, p0, Lcom/evie/sidescreen/SideScreenSettings;->searchEnabled:Z

    iput-boolean p4, p0, Lcom/evie/sidescreen/SideScreenSettings;->frequentlyUsedEnabled:Z

    iput-boolean p5, p0, Lcom/evie/sidescreen/SideScreenSettings;->topHeaderEnabled:Z

    iput-boolean p6, p0, Lcom/evie/sidescreen/SideScreenSettings;->isPersonalizeOnboarding:Z

    iput-object p7, p0, Lcom/evie/sidescreen/SideScreenSettings;->debugDataUsage:Lio/reactivex/Observable;

    iput-object p8, p0, Lcom/evie/sidescreen/SideScreenSettings;->debugTilesRefresh:Lio/reactivex/Observable;

    iput-boolean p9, p0, Lcom/evie/sidescreen/SideScreenSettings;->isFullscreen:Z

    iput-object p10, p0, Lcom/evie/sidescreen/SideScreenSettings;->convertToCelsius:Lio/reactivex/Observable;

    return-void
.end method

.method public static builder()Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;
    .locals 1

    .line 12
    new-instance v0, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;

    invoke-direct {v0}, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public backgroundEnabled()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/evie/sidescreen/SideScreenSettings;->backgroundEnabled:Z

    return v0
.end method

.method public convertToCelsius()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSettings;->convertToCelsius:Lio/reactivex/Observable;

    return-object v0
.end method

.method public debugDataUsage()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSettings;->debugDataUsage:Lio/reactivex/Observable;

    return-object v0
.end method

.method public debugTilesRefresh()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenSettings;->debugTilesRefresh:Lio/reactivex/Observable;

    return-object v0
.end method

.method public frequentlyUsedEnabled()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/evie/sidescreen/SideScreenSettings;->frequentlyUsedEnabled:Z

    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/evie/sidescreen/SideScreenSettings;->isFullscreen:Z

    return v0
.end method

.method public isPersonalizeOnboarding()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/evie/sidescreen/SideScreenSettings;->isPersonalizeOnboarding:Z

    return v0
.end method

.method public isRtl()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/evie/sidescreen/SideScreenSettings;->isRtl:Z

    return v0
.end method

.method public searchEnabled()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/evie/sidescreen/SideScreenSettings;->searchEnabled:Z

    return v0
.end method

.method public topHeaderEnabled()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/evie/sidescreen/SideScreenSettings;->topHeaderEnabled:Z

    return v0
.end method
