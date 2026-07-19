.class public final Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/controls/AdControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewModel"
.end annotation


# instance fields
.field public adUrl:Ljava/lang/String;

.field public currentTimeText:Ljava/lang/String;

.field public durationText:Ljava/lang/String;

.field public embedClickThroughUrl:Z

.field public isAdTimeViewVisible:Z

.field public isCloseButtonVisible:Z

.field public isPauseButtonVisible:Z

.field public isPlayButtonVisible:Z

.field public isProgressViewVisible:Z

.field public seekerMaxValue:I

.field public seekerProgress:D

.field public timeLeftText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
