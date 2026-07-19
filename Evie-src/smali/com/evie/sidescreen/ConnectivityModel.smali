.class public Lcom/evie/sidescreen/ConnectivityModel;
.super Ljava/lang/Object;
.source "ConnectivityModel.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mPublishSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWasConnected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/ConnectivityManager;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/evie/sidescreen/ConnectivityModel$1;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/ConnectivityModel$1;-><init>(Lcom/evie/sidescreen/ConnectivityModel;)V

    iput-object v0, p0, Lcom/evie/sidescreen/ConnectivityModel;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/ConnectivityModel;->mPublishSubject:Lio/reactivex/subjects/PublishSubject;

    .line 40
    iput-object p1, p0, Lcom/evie/sidescreen/ConnectivityModel;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/evie/sidescreen/ConnectivityModel;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 42
    invoke-virtual {p0}, Lcom/evie/sidescreen/ConnectivityModel;->isConnected()Z

    move-result p1

    iput-boolean p1, p0, Lcom/evie/sidescreen/ConnectivityModel;->mWasConnected:Z

    .line 44
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/evie/sidescreen/ConnectivityModel;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/evie/sidescreen/ConnectivityModel;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p2, v0, p1}, Lis/shortcut/compat/ReceiverCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/ConnectivityModel;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/evie/sidescreen/ConnectivityModel;->mWasConnected:Z

    return p0
.end method

.method static synthetic access$002(Lcom/evie/sidescreen/ConnectivityModel;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/evie/sidescreen/ConnectivityModel;->mWasConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/evie/sidescreen/ConnectivityModel;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/evie/sidescreen/ConnectivityModel;->mPublishSubject:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/evie/sidescreen/ConnectivityModel;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/evie/sidescreen/ConnectivityModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/evie/sidescreen/ConnectivityModel;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/evie/sidescreen/ConnectivityModel;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public getObservable()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/evie/sidescreen/ConnectivityModel;->mPublishSubject:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/evie/sidescreen/ConnectivityModel;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDisposed()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/evie/sidescreen/ConnectivityModel;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
