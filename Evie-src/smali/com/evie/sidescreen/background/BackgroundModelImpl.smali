.class public Lcom/evie/sidescreen/background/BackgroundModelImpl;
.super Lcom/evie/sidescreen/background/BackgroundModel;
.source "BackgroundModelImpl.java"


# static fields
.field static IMAGE_KEY:Ljava/lang/String; = "image"

.field static LAST_FETCH_DAY_KEY:Ljava/lang/String; = "last_fetch_day"


# instance fields
.field private final mActivationModel:Lcom/evie/sidescreen/ActivationModel;

.field private mBehaviorSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

.field private final mOkHttpClient:Lokhttp3/OkHttpClient;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mTargetDensity:Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

.field private final mWallpaperModel:Lcom/evie/models/wallpaper/WallpaperModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;ILcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/ActivationModel;Lcom/evie/models/wallpaper/WallpaperModel;Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/evie/sidescreen/background/BackgroundModel;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/evie/sidescreen/background/BackgroundModelImpl;->mContext:Landroid/content/Context;

    .line 61
    iput-object p4, p0, Lcom/evie/sidescreen/background/BackgroundModelImpl;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    .line 62
    iput-object p5, p0, Lcom/evie/sidescreen/background/BackgroundModelImpl;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    .line 63
    iput-object p6, p0, Lcom/evie/sidescreen/background/BackgroundModelImpl;->mWallpaperModel:Lcom/evie/models/wallpaper/WallpaperModel;

    .line 64
    iput-object p7, p0, Lcom/evie/sidescreen/background/BackgroundModelImpl;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 65
    iput-object p2, p0, Lcom/evie/sidescreen/background/BackgroundModelImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 67
    invoke-static {p3}, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->findClosestImageDensity(I)Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/background/BackgroundModelImpl;->mTargetDensity:Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    return-void
.end method

.method private getCacheBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/evie/sidescreen/background/BackgroundModelImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/evie/sidescreen/background/BackgroundModelImpl;->IMAGE_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 169
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 170
    array-length v3, v0

    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    :catch_0
    :cond_0
    if-nez v2, :cond_1

    .line 179
    iget-object v0, p0, Lcom/evie/sidescreen/background/BackgroundModelImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/evie/sidescreen/R$drawable;->wp_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 180
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/evie/sidescreen/background/BackgroundModelImpl;->setCacheBitmap(Landroid/graphics/Bitmap;)V

    .line 181
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public static synthetic lambda$getObservable$0(Lcom/evie/sidescreen/background/BackgroundModelImpl;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    iget-object p1, p0, Lcom/evie/sidescreen/background/BackgroundModelImpl;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    sget-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->RESUME:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 83
    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->RESUME:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 84
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getObservable$1(Lcom/evie/sidescreen/background/BackgroundModelImpl;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/evie/sidescreen/background/BackgroundModelImpl;->shouldFetch()Z

    move-result p1

    return p1
.end method

.method public static synthetic lambda$getObservable$2(Lcom/evie/sidescreen/background/BackgroundModelImpl;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    iget-object p1, p0, Lcom/evie/sidescreen/background/BackgroundModelImpl;->mWallpaperModel:Lcom/evie/models/wallpaper/WallpaperModel;

    invoke-virtual {p1}, Lcom/evie/models/wallpaper/WallpaperModel;->getWallpapers()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getObservable$3(Lcom/evie/sidescreen/background/BackgroundModelImpl;Lcom/evie/common/data/Lce;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->isLoading()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/models/wallpaper/WallpaperData;

    .line 106
    sget-object v0, Lcom/evie/sidescreen/background/BackgroundModelImpl$1;->$SwitchMap$com$evie$sidescreen$background$BackgroundModel$ImageDensity:[I

    iget-object v1, p0, Lcom/evie/sidescreen/background/BackgroundModelImpl;->mTargetDensity:Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;

    invoke-virtual {v1}, Lcom/evie/sidescreen/background/BackgroundModel$ImageDensity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 120
    invoke-virtual {p1}, Lcom/evie/models/wallpaper/WallpaperData;->getXxhdpi()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 115
    :pswitch_0
    invoke-virtual {p1}, Lcom/evie/models/wallpaper/WallpaperData;->getXhdpi()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 112
    :pswitch_1
    invoke-virtual {p1}, Lcom/evie/models/wallpaper/WallpaperData;->getHdpi()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 108
    :pswitch_2
    invoke-virtual {p1}, Lcom/evie/models/wallpaper/WallpaperData;->getMdpi()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 126
    :try_start_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 127
    iget-object v1, p0, Lcom/evie/sidescreen/background/BackgroundModelImpl;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    const/4 v1, 0x0

    .line 130
    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v0, :cond_1

    .line 136
    invoke-direct {p0, v0}, Lcom/evie/sidescreen/background/BackgroundModelImpl;->setCacheBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 139
    :cond_1
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 96
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->isError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->getErrorData()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 99
    :cond_3
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setCacheBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 188
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 189
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 190
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 191
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 194
    iget-object v0, p0, Lcom/evie/sidescreen/background/BackgroundModelImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/evie/sidescreen/background/BackgroundModelImpl;->LAST_FETCH_DAY_KEY:Ljava/lang/String;

    .line 195
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/evie/sidescreen/background/BackgroundModelImpl;->IMAGE_KEY:Ljava/lang/String;

    .line 196
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private shouldFetch()Z
    .locals 5

    .line 150
    iget-object v0, p0, Lcom/evie/sidescreen/background/BackgroundModelImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/evie/sidescreen/background/BackgroundModelImpl;->LAST_FETCH_DAY_KEY:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 151
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getObservable()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/evie/sidescreen/background/BackgroundModelImpl;->mBehaviorSubject:Lio/reactivex/subjects/BehaviorSubject;

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/evie/sidescreen/background/BackgroundModelImpl;->getCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/background/BackgroundModelImpl;->mBehaviorSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 80
    iget-object v0, p0, Lcom/evie/sidescreen/background/BackgroundModelImpl;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    invoke-virtual {v0}, Lcom/evie/sidescreen/ActivationModel;->getActivationObservable()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/background/-$$Lambda$BackgroundModelImpl$8gmY6RAA_7gxCW3kIbUAix1VUQM;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/background/-$$Lambda$BackgroundModelImpl$8gmY6RAA_7gxCW3kIbUAix1VUQM;-><init>(Lcom/evie/sidescreen/background/BackgroundModelImpl;)V

    .line 82
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/background/-$$Lambda$BackgroundModelImpl$U5Lnydn36-d5FxSj4jhrFVSGKhA;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/background/-$$Lambda$BackgroundModelImpl$U5Lnydn36-d5FxSj4jhrFVSGKhA;-><init>(Lcom/evie/sidescreen/background/BackgroundModelImpl;)V

    .line 87
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 88
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/background/-$$Lambda$BackgroundModelImpl$kwo-xbUUXroAiUWrjvLqCUHwmE8;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/background/-$$Lambda$BackgroundModelImpl$kwo-xbUUXroAiUWrjvLqCUHwmE8;-><init>(Lcom/evie/sidescreen/background/BackgroundModelImpl;)V

    .line 89
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/background/-$$Lambda$BackgroundModelImpl$punPlWG9T60F6DS1GJWngUuH7tE;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/background/-$$Lambda$BackgroundModelImpl$punPlWG9T60F6DS1GJWngUuH7tE;-><init>(Lcom/evie/sidescreen/background/BackgroundModelImpl;)V

    .line 92
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 142
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/background/BackgroundModelImpl;->mBehaviorSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 143
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/background/BackgroundModelImpl;->mBehaviorSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method
