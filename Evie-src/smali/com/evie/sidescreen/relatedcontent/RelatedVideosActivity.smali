.class public Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;
.super Lcom/evie/sidescreen/SideScreenActivity;
.source "RelatedVideosActivity.java"

# interfaces
.implements Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment$OnFragmentInteractionListener;
.implements Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;
.implements Ldagger/android/support/HasSupportFragmentInjector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;
    }
.end annotation


# static fields
.field public static final EXTRA_ARTICLE:Ljava/lang/String;

.field public static final EXTRA_START_DURATION:Ljava/lang/String;

.field public static final EXTRA_START_POSITION:Ljava/lang/String;

.field private static final PREFIX:Ljava/lang/String; = "com.evie.sidescreen.relatedcontent.RelatedVideosActivity"

.field static sYouTubePlayerViewClassLoaded:Z


# instance fields
.field protected firstVisibleTime:J

.field private mArticle:Lorg/schema/NewsArticle;

.field private mArticleId:Ljava/lang/String;

.field private mAspectRatio:F

.field private mAudioFocusRequest:Landroid/media/AudioFocusRequest;

.field mContainer:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mContentView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mIsActivityStarted:Z

.field private mIsActivityStopped:Z

.field private mIsAutoRotateOn:Z

.field private mIsFullScreen:Z

.field mLogo:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPlaybackControls:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

.field private mPreviousVideoHandler:Lcom/evie/sidescreen/relatedcontent/VideoHandler;

.field private mRelatedVideosFragment:Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;

.field private mRotationObserver:Landroid/database/ContentObserver;

.field private mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

.field private mShareLink:Ljava/lang/String;

.field private mStartDuration:J

.field private mStartPosition:J

.field mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mToolbarTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

.field private mVideoHandler:Lcom/evie/sidescreen/relatedcontent/VideoHandler;

.field private mVideoObject:Lorg/schema/VideoObject;

.field private mVideoVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".article"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->EXTRA_ARTICLE:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".start_position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->EXTRA_START_POSITION:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".start_duration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->EXTRA_START_DURATION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 138
    sput-boolean v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->sYouTubePlayerViewClassLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Lcom/evie/sidescreen/SideScreenActivity;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoVisible:Z

    .line 127
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mIsFullScreen:Z

    .line 151
    new-instance v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$1;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$1;-><init>(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)V

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const-wide/16 v0, -0x1

    .line 849
    iput-wide v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->firstVisibleTime:J

    return-void
.end method

.method private abandonAudioFocus()V
    .locals 4

    const-string v0, "audio"

    .line 634
    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 635
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_0

    .line 636
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v1, :cond_1

    .line 637
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    .line 638
    iput-object v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    goto :goto_0

    .line 641
    :cond_0
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Lcom/evie/sidescreen/relatedcontent/VideoHandler;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoHandler:Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mIsAutoRotateOn:Z

    return p0
.end method

.method static synthetic access$202(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mIsAutoRotateOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)F
    .locals 0

    .line 81
    iget p0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mAspectRatio:F

    return p0
.end method

.method static synthetic access$400(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mIsFullScreen:Z

    return p0
.end method

.method static synthetic access$402(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mIsFullScreen:Z

    return p1
.end method

.method static synthetic access$500(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Lorg/schema/VideoObject;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoObject:Lorg/schema/VideoObject;

    return-object p0
.end method

.method static synthetic access$600(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Landroid/view/OrientationEventListener;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    return-object p0
.end method

.method static synthetic access$602(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Landroid/view/OrientationEventListener;)Landroid/view/OrientationEventListener;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    return-object p1
.end method

.method private getAnalyticsAttributes()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 842
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "trending_video"

    .line 843
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_news_article"

    .line 844
    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mArticle:Lorg/schema/NewsArticle;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_screen_info"

    .line 845
    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getStatusBarHeight()I
    .locals 4

    .line 889
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 890
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getUsableDisplayHeight()I
    .locals 2

    const-string v0, "window"

    .line 894
    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 895
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 897
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 898
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 899
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method private getYPositionFraction(Landroid/view/View;)F
    .locals 1

    const/4 v0, 0x2

    .line 880
    new-array v0, v0, [I

    .line 881
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p1, 0x1

    .line 882
    aget p1, v0, p1

    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getStatusBarHeight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 883
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getUsableDisplayHeight()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    sub-float p1, v0, p1

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    .line 885
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    return p1
.end method

.method static synthetic lambda$requestAudioFocus$1(I)V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$setPersistentImmersiveMode$2(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Landroid/view/View;II)V
    .locals 1

    .line 807
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getIsFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 808
    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$shareVideo$0(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Lcom/evie/sidescreen/ActivityStarter;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getHeadline()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-virtual {p1, p2, v0, v1}, Lcom/evie/sidescreen/ActivityStarter;->startShareActivity(Ljava/lang/String;Ljava/lang/String;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    return-void
.end method

.method private registerAutoRotateSettingChangeListener()V
    .locals 4

    .line 283
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mIsAutoRotateOn:Z

    .line 284
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mIsAutoRotateOn:Z

    .line 286
    new-instance v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$2;-><init>(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mRotationObserver:Landroid/database/ContentObserver;

    .line 314
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accelerometer_rotation"

    .line 315
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mRotationObserver:Landroid/database/ContentObserver;

    .line 314
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private requestAudioFocus()V
    .locals 4

    const-string v0, "audio"

    .line 616
    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 617
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_1

    .line 618
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v1, :cond_0

    .line 619
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->abandonAudioFocus()V

    .line 621
    :cond_0
    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 622
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosActivity$t_QoP4p9wEZoN37Q196tJOWd3WA;->INSTANCE:Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosActivity$t_QoP4p9wEZoN37Q196tJOWd3WA;

    .line 623
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 626
    invoke-virtual {v1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 627
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x3

    .line 629
    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :goto_0
    return-void
.end method

.method private setHeader()V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getPublisherOrganization()Lorg/schema/Organization;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mToolbarTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getPublisherOrganization()Lorg/schema/Organization;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schema/Organization;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getPublisherOrganization()Lorg/schema/Organization;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 561
    invoke-virtual {v0}, Lorg/schema/Organization;->getFaviconUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 564
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mLogo:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 566
    :cond_2
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mLogo:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 567
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mLogo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private shareVideo()V
    .locals 4

    .line 599
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mShareLink:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 603
    :cond_0
    new-instance v0, Lcom/evie/sidescreen/ActivityStarter;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    invoke-direct {v0, p0, v1}, Lcom/evie/sidescreen/ActivityStarter;-><init>(Landroid/app/Activity;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    .line 605
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mSideScreenRelatedContentModel:Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    iget-object v3, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mShareLink:Ljava/lang/String;

    .line 606
    invoke-virtual {v2, v3}, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->getShortLink(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v2

    .line 607
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    .line 608
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosActivity$oGSEQGe4torg0hj-2utTBCuTowY;

    invoke-direct {v3, p0, v0}, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosActivity$oGSEQGe4torg0hj-2utTBCuTowY;-><init>(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Lcom/evie/sidescreen/ActivityStarter;)V

    .line 609
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 605
    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private switchVideoHandler()V
    .locals 10

    .line 434
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoObject:Lorg/schema/VideoObject;

    invoke-virtual {v0}, Lorg/schema/VideoObject;->isOath()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    new-instance v0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;

    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mOathPlayerObservableProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    iget-object v6, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v7, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPlaybackControls:Landroid/view/View;

    iget-object v8, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    move-object v1, v0

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v1 .. v8}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;-><init>(Ljavax/inject/Provider;Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;Lio/reactivex/disposables/CompositeDisposable;Landroid/view/View;Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;)V

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoHandler:Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    goto :goto_0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoObject:Lorg/schema/VideoObject;

    invoke-virtual {v0}, Lorg/schema/VideoObject;->isYouTube()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    new-instance v0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;-><init>(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;)V

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoHandler:Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    goto :goto_0

    .line 452
    :cond_1
    new-instance v0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;

    iget-object v4, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mExoPlayerObservableProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    iget-object v8, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v9, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    move-object v3, v0

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v3 .. v9}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;-><init>(Ljavax/inject/Provider;Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;Lio/reactivex/disposables/CompositeDisposable;Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;)V

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoHandler:Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    :goto_0
    return-void
.end method

.method private unregisterAutoRotateChangeListener()V
    .locals 2

    .line 320
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static warmup(Landroid/content/Context;)V
    .locals 1

    .line 578
    const-class p0, Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 579
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    const/4 v0, 0x0

    .line 580
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    :cond_0
    sget-boolean p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->sYouTubePlayerViewClassLoaded:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    .line 583
    sput-boolean p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->sYouTubePlayerViewClassLoaded:Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 165
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/evie/sidescreen/SideScreenActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected beginImpressionEvent()V
    .locals 2

    .line 853
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->firstVisibleTime:J

    return-void
.end method

.method public createOrientationListenerInstance()Landroid/view/OrientationEventListener;
    .locals 7

    const-string v0, "window"

    .line 908
    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/WindowManager;

    if-nez v5, :cond_0

    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_0

    .line 913
    :cond_0
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    move v6, v0

    .line 916
    :goto_0
    new-instance v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$3;

    const/4 v4, 0x3

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$3;-><init>(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Landroid/content/Context;ILandroid/view/WindowManager;I)V

    return-object v0
.end method

.method disposeVideoHandlers()V
    .locals 1

    const/4 v0, 0x0

    .line 969
    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoHandler:Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    .line 970
    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPreviousVideoHandler:Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    return-void
.end method

.method protected endImpressionEvent(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 858
    iget-wide v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->firstVisibleTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 862
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->firstVisibleTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    return-void

    :cond_1
    const-string v2, "screen_position_start"

    const/4 v3, 0x0

    .line 867
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screen_position_end"

    .line 868
    iget-object v4, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoHandler:Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    invoke-interface {v4}, Lcom/evie/sidescreen/relatedcontent/VideoHandler;->getContainerView()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getYPositionFraction(Landroid/view/View;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "is_screen_landscape"

    .line 869
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "duration"

    .line 870
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "attribute_content_tile"

    .line 871
    new-instance v1, Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v2}, Lorg/schema/NewsArticle;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/evie/models/sidescreen/data/TileType;->VIDEO_SEED:Lcom/evie/models/sidescreen/data/TileType;

    invoke-direct {v1, v2, v4, v3}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;-><init>(Ljava/lang/String;Lcom/evie/models/sidescreen/data/TileType;I)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_article_impression"

    invoke-virtual {v0, v1, p1}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    const-wide/16 v0, -0x1

    .line 876
    iput-wide v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->firstVisibleTime:J

    return-void
.end method

.method public getAspectRatioLowerLimit()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getDefaultAspectRatio()F
    .locals 1

    const v0, 0x3fe38df8

    return v0
.end method

.method public getIsFullScreen()Z
    .locals 1

    .line 979
    iget-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mIsFullScreen:Z

    return v0
.end method

.method public getIsPlaylistAutoplayEnabled()Z
    .locals 1

    .line 1063
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->getPlaylistAutoplayEnabled()Z

    move-result v0

    return v0
.end method

.method public getMediaAspectRatio()F
    .locals 1

    .line 994
    iget v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mAspectRatio:F

    return v0
.end method

.method public getMinimumImpressionDuration()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public getPopupViewProvider()Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;
    .locals 2

    .line 590
    new-instance v0, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method protected getScreenViewMetaData()Ljava/lang/String;
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mArticle:Lorg/schema/NewsArticle;

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mArticleId:Ljava/lang/String;

    return-object v0
.end method

.method protected getScreenViewProtobuf()Ljava/lang/String;
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getAnalytics()Ljava/util/Map;

    move-result-object v0

    const-string v1, "analytics_proto"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getScreenViewSubType()Ljava/lang/String;
    .locals 1

    const-string v0, "trending"

    return-object v0
.end method

.method protected getScreenViewTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getScreenViewType()Ljava/lang/String;
    .locals 1

    const-string v0, "related-videos"

    return-object v0
.end method

.method public getScreenWidthPixels()I
    .locals 2

    .line 349
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const-string v1, "window"

    .line 350
    invoke-virtual {p0, v1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 351
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 352
    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public getStartDuration()J
    .locals 2

    .line 1029
    iget-wide v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mStartDuration:J

    return-wide v0
.end method

.method public getStartPosition()J
    .locals 2

    .line 1019
    iget-wide v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mStartPosition:J

    return-wide v0
.end method

.method public getVideoControlsViewHolder()Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;
    .locals 1

    .line 1076
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    return-object v0
.end method

.method public getVideoObjectList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schema/VideoObject;",
            ">;"
        }
    .end annotation

    .line 999
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isActivityStarted()Z
    .locals 1

    .line 1004
    iget-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mIsActivityStarted:Z

    return v0
.end method

.method public manuallyExitFullScreen()V
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    invoke-virtual {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->manuallyExitFullScreen()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 325
    sget v0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->REQUEST_CODE_TOPIC_FOLLOWING_STATUS:I

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "following"

    .line 329
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    const-string p1, "following"

    const/4 p2, 0x0

    .line 331
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 332
    iget-object p2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mRelatedVideosFragment:Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;

    invoke-virtual {p2, p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->updateFollowingStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    const-string p1, "article"

    .line 337
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "article"

    .line 338
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .line 339
    instance-of p2, p1, Lorg/schema/NewsArticle;

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 341
    iput-object p2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoObject:Lorg/schema/VideoObject;

    .line 342
    check-cast p1, Lorg/schema/NewsArticle;

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->setArticle(Lorg/schema/NewsArticle;I)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mIsFullScreen:Z

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    invoke-virtual {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->manuallyExitFullScreen()V

    return-void

    .line 275
    :cond_0
    invoke-super {p0}, Lcom/evie/sidescreen/SideScreenActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 948
    invoke-super {p0, p1}, Lcom/evie/sidescreen/SideScreenActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 950
    iget-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mIsActivityStopped:Z

    if-eqz v0, :cond_0

    return-void

    .line 953
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_2

    .line 954
    iget p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mAspectRatio:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    .line 955
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    invoke-virtual {p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->onEnterFullScreen()V

    goto :goto_0

    .line 957
    :cond_1
    iget-boolean p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mIsFullScreen:Z

    if-nez p1, :cond_3

    .line 958
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    invoke-virtual {p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->onEnterFullScreen()V

    goto :goto_0

    .line 961
    :cond_2
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 962
    iget p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mAspectRatio:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    .line 963
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    invoke-virtual {p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->onExitFullScreen()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 199
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->onCreateInject()V

    .line 200
    invoke-super {p0, p1}, Lcom/evie/sidescreen/SideScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "analytics.send_tap_event"

    const/4 v1, 0x0

    .line 203
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v2, "item_type"

    const-string v3, "analytics.item_type"

    .line 206
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    const-string v2, "analytics_proto"

    const-string v3, "analytics.proto"

    .line 207
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    const-string v2, "screen_type"

    const-string v3, "notification"

    .line 208
    invoke-virtual {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    const-string v2, "entity_id"

    const-string v3, "com.evie.sidescreen.article_id"

    .line 209
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    const-string v2, "impression_id"

    const-string v3, "analytics.impression_id"

    .line 210
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    .line 212
    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    const-string v3, "ev_ss_tap"

    invoke-virtual {v2, v3, v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 215
    :cond_0
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_related_videos_activity:I

    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->setContentView(I)V

    .line 216
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 218
    new-instance v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;-><init>(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)V

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    .line 219
    new-instance v0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPlaybackControls:Landroid/view/View;

    iget-object v3, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    invoke-direct {v0, v2, v3}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;-><init>(Landroid/view/View;Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;)V

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    .line 221
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 222
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 223
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 225
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/evie/sidescreen/R$color;->dark_theme_bg:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 226
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 227
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mToolbarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mToolbarTitle:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 229
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mToolbarTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sget v3, Lcom/evie/sidescreen/R$string;->circular_font_regular:I

    invoke-virtual {p0, v3}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 231
    sget-object v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->EXTRA_ARTICLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/schema/NewsArticle;

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p0, v0, v2}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->setArticle(Lorg/schema/NewsArticle;I)V

    goto :goto_0

    :cond_1
    const-string v0, "com.evie.sidescreen.article_id"

    .line 235
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mArticleId:Ljava/lang/String;

    .line 236
    new-instance p1, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    const-string v0, "related_content"

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mArticleId:Ljava/lang/String;

    const-string v2, "related_videos"

    invoke-direct {p1, v0, v1, v2}, Lcom/evie/sidescreen/analytics/data/ScreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    .line 239
    :goto_0
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mArticle:Lorg/schema/NewsArticle;

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mArticleId:Ljava/lang/String;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->createInstance(Lorg/schema/NewsArticle;Ljava/lang/String;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mRelatedVideosFragment:Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;

    .line 240
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 241
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mRelatedVideosFragment:Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 242
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 244
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->registerAutoRotateSettingChangeListener()V

    .line 245
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    invoke-static {p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->access$100(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 508
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->unregisterAutoRotateChangeListener()V

    .line 510
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoHandler:Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler;->onActivityDestroy()V

    .line 512
    iget-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 513
    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->onVideoVisibilityChanged(Z)V

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->disposeVideoHandlers()V

    .line 517
    invoke-super {p0}, Lcom/evie/sidescreen/SideScreenActivity;->onDestroy()V

    return-void
.end method

.method public onDialogBackPressed()V
    .locals 1

    .line 1081
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    invoke-virtual {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->manuallyExitFullScreen()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->shareVideo()V

    const/4 p1, 0x1

    return p1

    .line 194
    :cond_0
    invoke-super {p0, p1}, Lcom/evie/sidescreen/SideScreenActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 3

    const-string v0, "phone"

    .line 489
    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 490
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 492
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoHandler:Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler;->onActivityPause()V

    .line 493
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 494
    invoke-super {p0}, Lcom/evie/sidescreen/SideScreenActivity;->onPause()V

    .line 495
    iput-boolean v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mIsActivityStarted:Z

    const/4 v0, 0x1

    .line 496
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mIsActivityStopped:Z

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 170
    invoke-super {p0, p1}, Lcom/evie/sidescreen/SideScreenActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/16 v0, 0x65

    .line 173
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "Share"

    .line 174
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 175
    sget v3, Lcom/evie/sidescreen/R$drawable;->ic_share_white_24dp:I

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v3, 0x2

    .line 176
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mShareLink:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 180
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 182
    :cond_1
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return v3
.end method

.method protected onResume()V
    .locals 3

    .line 475
    invoke-super {p0}, Lcom/evie/sidescreen/SideScreenActivity;->onResume()V

    const/4 v0, 0x1

    .line 476
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mIsActivityStarted:Z

    .line 477
    iget-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mIsActivityStopped:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 478
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mIsActivityStopped:Z

    .line 480
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoHandler:Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler;->onActivityResume()V

    :cond_0
    const-string v0, "phone"

    .line 483
    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 484
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 469
    invoke-super {p0}, Lcom/evie/sidescreen/SideScreenActivity;->onStart()V

    .line 470
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->requestAudioFocus()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 501
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->abandonAudioFocus()V

    .line 502
    invoke-super {p0}, Lcom/evie/sidescreen/SideScreenActivity;->onStop()V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 573
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public onVideoEnded()V
    .locals 4

    .line 815
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->getPlaylistAutoplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mRelatedVideosFragment:Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;

    invoke-virtual {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->getNextArticle()Lorg/schema/NewsArticle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 817
    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x4

    .line 820
    iget v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mAspectRatio:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 821
    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    invoke-virtual {v2}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->onExitFullScreen()V

    .line 824
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->setArticle(Lorg/schema/NewsArticle;I)V

    goto :goto_0

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPlaying(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onVideoVisibilityChanged(Z)V
    .locals 0

    .line 833
    iput-boolean p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoVisible:Z

    if-eqz p1, :cond_0

    .line 835
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->beginImpressionEvent()V

    goto :goto_0

    .line 837
    :cond_0
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getAnalyticsAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->endImpressionEvent(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public setArticle(Lorg/schema/NewsArticle;I)V
    .locals 7

    if-nez p1, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->finish()V

    return-void

    .line 362
    :cond_0
    iget-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {p0, v1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->onVideoVisibilityChanged(Z)V

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mArticle:Lorg/schema/NewsArticle;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v3, 0x0

    if-nez v0, :cond_3

    .line 369
    iput-wide v3, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mStartPosition:J

    goto :goto_1

    .line 371
    :cond_3
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 372
    sget-object v5, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->EXTRA_START_POSITION:Ljava/lang/String;

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mStartPosition:J

    .line 373
    sget-object v5, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->EXTRA_START_DURATION:Ljava/lang/String;

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mStartDuration:J

    :goto_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 377
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoHandler:Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler;->onAdInterrupted()V

    .line 378
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPlaybackControls:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    :cond_4
    invoke-virtual {p1}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schema/VideoObject;

    invoke-virtual {v0}, Lorg/schema/VideoObject;->getMediaPlayer()Ljava/lang/String;

    move-result-object v0

    .line 382
    iget-object v3, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoObject:Lorg/schema/VideoObject;

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lorg/schema/VideoObject;->getMediaPlayer()Ljava/lang/String;

    move-result-object v3

    .line 383
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 385
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mArticle:Lorg/schema/NewsArticle;

    .line 386
    new-instance p1, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    const-string v3, "related_content"

    iget-object v4, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v4}, Lorg/schema/NewsArticle;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "related_videos"

    invoke-direct {p1, v3, v4, v5}, Lcom/evie/sidescreen/analytics/data/ScreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    .line 387
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {p1}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schema/VideoObject;

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoObject:Lorg/schema/VideoObject;

    .line 388
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoObject:Lorg/schema/VideoObject;

    invoke-virtual {p1}, Lorg/schema/VideoObject;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mShareLink:Ljava/lang/String;

    .line 389
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->invalidateOptionsMenu()V

    .line 391
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoObject:Lorg/schema/VideoObject;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/schema/VideoObject;->getWidth()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoObject:Lorg/schema/VideoObject;

    invoke-virtual {p1}, Lorg/schema/VideoObject;->getWidth()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4

    :cond_7
    :goto_3
    const/16 p1, 0x10

    .line 392
    :goto_4
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoObject:Lorg/schema/VideoObject;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lorg/schema/VideoObject;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoObject:Lorg/schema/VideoObject;

    invoke-virtual {v1}, Lorg/schema/VideoObject;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_6

    :cond_9
    :goto_5
    const/16 v1, 0x9

    :goto_6
    if-eqz p1, :cond_b

    if-nez v1, :cond_a

    goto :goto_7

    :cond_a
    int-to-float p1, p1

    int-to-float v1, v1

    div-float/2addr p1, v1

    goto :goto_8

    :cond_b
    :goto_7
    const p1, 0x3fe38e39

    .line 393
    :goto_8
    iput p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mAspectRatio:F

    if-eqz v0, :cond_c

    .line 397
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoHandler:Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    invoke-interface {p1}, Lcom/evie/sidescreen/relatedcontent/VideoHandler;->samePlayerTransition()V

    goto :goto_9

    .line 399
    :cond_c
    iget-boolean p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mIsFullScreen:Z

    if-eqz p1, :cond_d

    .line 402
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    invoke-virtual {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->onExitFullScreen()V

    .line 405
    :cond_d
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoHandler:Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    if-eqz v0, :cond_e

    .line 406
    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler;->tearDown()V

    .line 409
    :cond_e
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->switchVideoHandler()V

    .line 411
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoHandler:Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPreviousVideoHandler:Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    .line 413
    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_f

    .line 414
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoHandler:Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler;->initializeParams()V

    .line 417
    :cond_f
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mVideoHandler:Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler;->setUp()V

    if-eqz p1, :cond_10

    .line 419
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    invoke-virtual {p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->onEnterFullScreen()V

    .line 423
    :cond_10
    :goto_9
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->setHeader()V

    if-eq p2, v2, :cond_11

    const/4 p1, 0x2

    if-eq p2, p1, :cond_11

    .line 428
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mRelatedVideosFragment:Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;

    iget-object p2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mArticle:Lorg/schema/NewsArticle;

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-virtual {p1, p2, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->setArticle(Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    :cond_11
    return-void
.end method

.method public setAutoplay(Z)V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->setPlaylistAutoplayEnabled(Z)V

    return-void
.end method

.method public setIsFullScreen(Z)V
    .locals 0

    .line 1009
    iput-boolean p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mIsFullScreen:Z

    return-void
.end method

.method public setPersistentImmersiveMode()V
    .locals 4

    const/4 v0, 0x0

    .line 795
    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->setToolBarVisibility(Z)V

    const/4 v0, 0x1

    .line 796
    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->setIsFullScreen(Z)V

    .line 797
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 800
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x806

    .line 802
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 806
    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mContentView:Landroid/view/View;

    new-instance v3, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosActivity$y5suLPa4zUHSWSp9IxERJu8Hq3Y;

    invoke-direct {v3, p0, v0, v1}, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosActivity$y5suLPa4zUHSWSp9IxERJu8Hq3Y;-><init>(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public setStartPosition(J)V
    .locals 0

    .line 1014
    iput-wide p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mStartPosition:J

    return-void
.end method

.method public setToolBarVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1035
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    goto :goto_0

    .line 1037
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4

    .line 252
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "KEY_TARGET_URL"

    .line 253
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Lcom/aol/mobile/sdk/controls/view/TargetUrlActivity;

    .line 256
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 258
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 259
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 261
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/evie/sidescreen/SideScreenActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public supportFragmentInjector()Ldagger/android/AndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 595
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getSupportFragmentInjector()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    return-object v0
.end method

.method public trackAdTap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 783
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "entity_id"

    .line 784
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "ad_network"

    .line 785
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "item_type"

    const-string p2, "ad"

    .line 786
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "parent_entity_id"

    .line 787
    iget-object p2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {p2}, Lorg/schema/NewsArticle;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attribute_screen_info"

    .line 788
    iget-object p2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string p2, "ev_ss_tap"

    invoke-virtual {p1, p2, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackAnalyticsModel()Lcom/evie/sidescreen/analytics/AnalyticsModel;
    .locals 1

    .line 1053
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    return-object v0
.end method
