.class public Lcom/voxel/simplesearchlauncher/api/LocationHandler;
.super Ljava/lang/Object;
.source "LocationHandler.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/location/LocationListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationHandler"

.field private static instance:Lcom/voxel/simplesearchlauncher/api/LocationHandler;


# instance fields
.field private final context:Landroid/content/Context;

.field private mConnectionFailures:I

.field private mGoogleApi:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mHandler:Landroid/os/Handler;

.field private mLastLocation:Landroid/location/Location;

.field private mLocationClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

.field private mLocationSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mReceivingUpdates:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mLocationSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 81
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->context:Landroid/content/Context;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mLocationClients:Ljava/util/Map;

    .line 84
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 85
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 86
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 87
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mGoogleApi:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 89
    new-instance p1, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {p1}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 90
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v0, 0x68

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method

.method public static calculateDistance(DDDD)D
    .locals 4

    sub-double v0, p0, p4

    .line 232
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sub-double/2addr p2, p6

    .line 233
    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    const-wide/high16 p6, 0x4000000000000000L    # 2.0

    div-double/2addr v0, p6

    .line 234
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    invoke-static {p4, p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    .line 235
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double p4, p4, p0

    div-double/2addr p2, p6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double p4, p4, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double p4, p4, p0

    add-double/2addr v2, p4

    .line 236
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    mul-double p0, p0, p6

    const-wide p2, 0x41584dae00000000L    # 6371000.0

    mul-double p0, p0, p2

    return-wide p0
.end method

.method public static convertToMilesString(D)Ljava/lang/String;
    .locals 2

    const-wide v0, 0x4099255c28f5c28fL    # 1609.34

    div-double/2addr p0, v0

    .line 242
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/voxel/simplesearchlauncher/api/LocationHandler;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->instance:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    if-eqz v1, :cond_0

    .line 77
    sget-object v1, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->instance:Lcom/voxel/simplesearchlauncher/api/LocationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 74
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Instance must be initialized before trying to use."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private hasLocationPermission()Z
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 194
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->instance:Lcom/voxel/simplesearchlauncher/api/LocationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 61
    monitor-exit v0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 68
    :try_start_1
    new-instance v1, Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->instance:Lcom/voxel/simplesearchlauncher/api/LocationHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    monitor-exit v0

    return-void

    .line 65
    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must be provided."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public acquireLocation(Ljava/lang/Object;)V
    .locals 1

    const v0, 0x1b7740

    .line 94
    invoke-virtual {p0, p1, v0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->acquireLocation(Ljava/lang/Object;I)V

    return-void
.end method

.method public acquireLocation(Ljava/lang/Object;I)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mLocationClients:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->requestUpdates()V

    return-void
.end method

.method protected declared-synchronized connectToGms()V
    .locals 1

    monitor-enter p0

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mGoogleApi:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mGoogleApi:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 249
    iput v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mConnectionFailures:I

    .line 250
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mGoogleApi:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    .line 248
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->updateCurrentLocation()V

    .line 122
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mLastLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getDistanceFromHere(DD)D
    .locals 11

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    const-wide/16 v2, 0x0

    cmpl-double v4, p1, v2

    if-nez v4, :cond_0

    cmpl-double v4, p3, v2

    if-nez v4, :cond_0

    return-wide v0

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->updateCurrentLocation()V

    .line 208
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mLastLocation:Landroid/location/Location;

    if-nez v2, :cond_1

    return-wide v0

    .line 212
    :cond_1
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    move-wide v7, p1

    move-wide v9, p3

    invoke-static/range {v3 .. v10}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->calculateDistance(DDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method protected handleReconnect()V
    .locals 4

    .line 254
    iget v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mConnectionFailures:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/voxel/simplesearchlauncher/api/LocationHandler$1;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler$1;-><init>(Lcom/voxel/simplesearchlauncher/api/LocationHandler;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public observeLocation()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mLocationSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x0

    .line 276
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mReceivingUpdates:Z

    .line 277
    iput p1, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mConnectionFailures:I

    .line 278
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->requestUpdates()V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 288
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->handleReconnect()V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    .line 283
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->handleReconnect()V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 270
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mLastLocation:Landroid/location/Location;

    .line 271
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mLocationSubject:Lio/reactivex/subjects/BehaviorSubject;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mLastLocation:Landroid/location/Location;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public releaseLocation(Ljava/lang/Object;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mLocationClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mLocationClients:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->stopUpdates()V

    :cond_0
    return-void
.end method

.method protected declared-synchronized requestUpdates()V
    .locals 4

    monitor-enter p0

    .line 145
    :try_start_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->hasLocationPermission()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 146
    monitor-exit p0

    return-void

    .line 149
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->connectToGms()V

    .line 151
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mGoogleApi:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 152
    monitor-exit p0

    return-void

    .line 154
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mReceivingUpdates:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 155
    monitor-exit p0

    return-void

    :cond_2
    const v0, 0x1b7740

    .line 159
    :try_start_3
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mLocationClients:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_4

    goto :goto_0

    .line 162
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, v0, :cond_3

    .line 163
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 168
    :cond_5
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->updateCurrentLocation()V

    .line 170
    sget-object v1, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->TAG:Ljava/lang/String;

    const-string v2, "Requesting Location Updates"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 172
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const v2, 0xea60

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 174
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mGoogleApi:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-interface {v0, v1, v2, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mReceivingUpdates:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method protected declared-synchronized stopUpdates()V
    .locals 2

    monitor-enter p0

    .line 179
    :try_start_0
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mReceivingUpdates:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 180
    monitor-exit p0

    return-void

    .line 182
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mGoogleApi:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 183
    monitor-exit p0

    return-void

    .line 185
    :cond_1
    :try_start_2
    sget-object v0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->TAG:Ljava/lang/String;

    const-string v1, "Stopping Location Updates"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mGoogleApi:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mReceivingUpdates:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateCurrentLocation()V
    .locals 2

    monitor-enter p0

    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->hasLocationPermission()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 129
    monitor-exit p0

    return-void

    .line 131
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->connectToGms()V

    .line 133
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mGoogleApi:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 134
    monitor-exit p0

    return-void

    .line 136
    :cond_1
    :try_start_2
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->mGoogleApi:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->onLocationChanged(Landroid/location/Location;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
