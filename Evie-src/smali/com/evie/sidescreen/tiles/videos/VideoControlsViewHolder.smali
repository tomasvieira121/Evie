.class public Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;
.super Ljava/lang/Object;
.source "VideoControlsViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder$ActionHandler;
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field mDurationText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mEnterFullScreenButton:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mExitFullScreenButton:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mFullScreenBinder:Lbutterknife/Unbinder;

.field public mHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

.field mPauseButton:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPlayButton:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPositionText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mProgressBar:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mScrubListener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

.field private mSmallScreenBinder:Lbutterknife/Unbinder;

.field private mSmallScreenControls:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_popup_video_viewer_playback_control:I

    sput v0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mSmallScreenControls:Landroid/view/View;

    .line 70
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mSmallScreenControls:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mSmallScreenBinder:Lbutterknife/Unbinder;

    .line 72
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    .line 74
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mPauseButton:Landroid/widget/ImageButton;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 76
    new-instance p1, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder$1;

    invoke-direct {p1, p0}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder$1;-><init>(Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;)V

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mScrubListener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    .line 95
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mProgressBar:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    iget-object p2, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mScrubListener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->addListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V

    const/4 p1, 0x0

    .line 97
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setExpand(Z)V

    return-void
.end method

.method private static formatVideoProgressText(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x3e8

    .line 153
    div-long/2addr p0, v0

    const-wide/16 v0, 0x3c

    .line 154
    div-long v2, p0, v0

    .line 155
    rem-long/2addr p0, v0

    .line 156
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v4, v3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v4, p1

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setTextWidth(J)V
    .locals 3

    const-wide/32 v0, 0xea60

    .line 161
    div-long/2addr p1, v0

    const-wide/16 v0, 0x64

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-string p1, "000:00"

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xa

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const-string p1, "00:00"

    goto :goto_0

    :cond_1
    const-string p1, "0:00"

    .line 169
    :goto_0
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mPositionText:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    iget-object p2, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mPositionText:Landroid/widget/TextView;

    .line 170
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaddingStart()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mPositionText:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 172
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mPositionText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setWidth(I)V

    return-void
.end method


# virtual methods
.method public bindFullScreenControls(Landroid/view/View;)V
    .locals 2

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mProgressBar:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mScrubListener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->removeListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V

    .line 204
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mSmallScreenBinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 205
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mFullScreenBinder:Lbutterknife/Unbinder;

    .line 206
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mProgressBar:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mScrubListener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->addListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public bindSmallScreenControls()V
    .locals 2

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mProgressBar:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mScrubListener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->removeListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V

    .line 220
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mFullScreenBinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 221
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mSmallScreenControls:Landroid/view/View;

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mSmallScreenBinder:Lbutterknife/Unbinder;

    .line 222
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mProgressBar:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mScrubListener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->addListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 225
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onEnterFullScreen(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 177
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    invoke-virtual {p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->manuallyEnterFullScreen()V

    return-void
.end method

.method public onExitFullScreen()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    invoke-virtual {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->manuallyExitFullScreen()V

    return-void
.end method

.method public onPauseClick()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPlaying(ZZ)V

    return-void
.end method

.method public onPlayClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p0, v0, v0}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPlaying(ZZ)V

    return-void
.end method

.method public setDuration(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 112
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mProgressBar:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setDuration(J)V

    .line 113
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mProgressBar:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setPosition(J)V

    .line 114
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mProgressBar:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setEnabled(Z)V

    .line 115
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mPositionText:Landroid/widget/TextView;

    const-string p2, "0:00"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mDurationText:Landroid/widget/TextView;

    const-string p2, "-:--"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mProgressBar:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setDuration(J)V

    .line 119
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mProgressBar:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mDurationText:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->formatVideoProgressText(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setTextWidth(J)V

    :goto_0
    return-void
.end method

.method public setExpand(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mEnterFullScreenButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 188
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mExitFullScreenButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mEnterFullScreenButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 191
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mExitFullScreenButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setPlaying(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, p1, v0}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPlaying(ZZ)V

    return-void
.end method

.method public setPlaying(ZZ)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 136
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 145
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    invoke-virtual {p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->onPlay()V

    goto :goto_1

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    invoke-virtual {p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->onPause()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setPosition(J)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mProgressBar:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setPosition(J)V

    .line 127
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mPositionText:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->formatVideoProgressText(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
