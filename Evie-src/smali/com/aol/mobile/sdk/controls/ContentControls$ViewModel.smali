.class public final Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/controls/ContentControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;
    }
.end annotation


# instance fields
.field public final adCues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public final audioTracks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;",
            ">;"
        }
    .end annotation
.end field

.field public final ccTracks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;",
            ">;"
        }
    .end annotation
.end field

.field public compassLatitude:D

.field public compassLongitude:D

.field public isCastButtonVisible:Z

.field public isCasting:Z

.field public isCompassViewVisible:Z

.field public isLiveIndicatorVisible:Z

.field public isLoading:Z

.field public isNextButtonEnabled:Z

.field public isNextButtonVisible:Z

.field public isOnLiveEdge:Z

.field public isPauseButtonVisible:Z

.field public isPlayButtonVisible:Z

.field public isPrevButtonEnabled:Z

.field public isPrevButtonVisible:Z

.field public isReplayButtonVisible:Z

.field public isSeekBackButtonVisible:Z

.field public isSeekForwardButtonVisible:Z

.field public isSeekerVisible:Z

.field public isStreamPlaying:Z

.field public isThumbnailImageVisible:Z

.field public isTitleVisible:Z

.field public isTrackChooserButtonEnabled:Z

.field public isTrackChooserButtonVisible:Z

.field public seekerBufferedProgress:I

.field public seekerCurrentTimeText:Ljava/lang/String;

.field public seekerDurationText:Ljava/lang/String;

.field public seekerMaxValue:I

.field public seekerProgress:D

.field public seekerTimeLeftText:Ljava/lang/String;

.field public thumbnailImageUrl:Ljava/lang/String;

.field public titleText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->audioTracks:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->ccTracks:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->adCues:Ljava/util/Set;

    return-void
.end method
