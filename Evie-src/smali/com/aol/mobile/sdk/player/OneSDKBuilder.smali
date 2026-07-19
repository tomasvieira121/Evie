.class public final Lcom/aol/mobile/sdk/player/OneSDKBuilder;
.super Ljava/lang/Object;
.source "OneSDKBuilder.java"


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PublicApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;
    }
.end annotation


# instance fields
.field private advertId:Ljava/lang/String;

.field configUrl:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private extra:Lorg/json/JSONObject;

.field private limitAdTracking:Z

.field private final renderersRegistry:Lcom/aol/mobile/sdk/renderer/RenderersRegistry;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->limitAdTracking:Z

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->context:Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/aol/mobile/sdk/renderer/RenderersRegistry;

    invoke-direct {v0, p1}, Lcom/aol/mobile/sdk/renderer/RenderersRegistry;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->renderersRegistry:Lcom/aol/mobile/sdk/renderer/RenderersRegistry;

    const-string p1, "https://api.onesdk.aol.com/config"

    .line 70
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->configUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/aol/mobile/sdk/player/OneSDKBuilder;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/aol/mobile/sdk/player/OneSDKBuilder;Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;Ljava/lang/String;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->create(Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/aol/mobile/sdk/player/OneSDKBuilder;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->advertId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/aol/mobile/sdk/player/OneSDKBuilder;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->limitAdTracking:Z

    return p0
.end method

.method private create(Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;Ljava/lang/String;Z)V
    .locals 6

    .line 209
    new-instance v0, Lcom/aol/mobile/sdk/player/http/HttpService;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/aol/mobile/sdk/player/http/HttpService;-><init>(Landroid/os/Handler;)V

    .line 211
    new-instance v2, Lcom/aol/mobile/sdk/player/http/model/LocalConfig;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->context:Landroid/content/Context;

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 212
    :cond_0
    invoke-static {v1, p2}, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->getClient(Landroid/content/Context;Ljava/lang/String;)Lcom/aol/mobile/sdk/player/http/model/Client;

    move-result-object p2

    .line 213
    invoke-static {}, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->getDevice()Lcom/aol/mobile/sdk/player/http/model/Device;

    move-result-object p3

    new-instance v1, Lcom/aol/mobile/sdk/player/http/model/Sdk;

    const-string v3, "2.21"

    iget-object v4, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->renderersRegistry:Lcom/aol/mobile/sdk/renderer/RenderersRegistry;

    .line 214
    invoke-virtual {v4}, Lcom/aol/mobile/sdk/renderer/RenderersRegistry;->listRenderersId()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->getRenderers(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/aol/mobile/sdk/player/http/model/Sdk;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->extra:Lorg/json/JSONObject;

    invoke-direct {v2, p2, p3, v1, v3}, Lcom/aol/mobile/sdk/player/http/model/LocalConfig;-><init>(Lcom/aol/mobile/sdk/player/http/model/Client;Lcom/aol/mobile/sdk/player/http/model/Device;Lcom/aol/mobile/sdk/player/http/model/Sdk;Lorg/json/JSONObject;)V

    .line 217
    new-instance v4, Lcom/aol/mobile/sdk/player/http/json/RemoteConfigParser;

    invoke-direct {v4}, Lcom/aol/mobile/sdk/player/http/json/RemoteConfigParser;-><init>()V

    .line 218
    new-instance v3, Lcom/aol/mobile/sdk/player/http/json/LocalConfigSerializer;

    invoke-direct {v3}, Lcom/aol/mobile/sdk/player/http/json/LocalConfigSerializer;-><init>()V

    .line 220
    new-instance v5, Lcom/aol/mobile/sdk/player/OneSDKBuilder$2;

    invoke-direct {v5, p0, p1}, Lcom/aol/mobile/sdk/player/OneSDKBuilder$2;-><init>(Lcom/aol/mobile/sdk/player/OneSDKBuilder;Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;)V

    .line 232
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->configUrl:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/aol/mobile/sdk/player/http/HttpService;->makePost(Ljava/lang/String;Ljava/lang/Object;Lcom/aol/mobile/sdk/player/http/DataSerializer;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V

    return-void
.end method

.method private createUsingAmazonAdvertId(Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;)V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "advertising_id"

    .line 154
    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "limit_ad_tracking"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v2, v0}, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->create(Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 159
    :catch_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->advertId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->limitAdTracking:Z

    xor-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->create(Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;Ljava/lang/String;Z)V

    return-void
.end method

.method private createUsingGoogleAdvertId(Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .line 174
    new-instance v0, Lcom/aol/mobile/sdk/player/OneSDKBuilder$1;

    invoke-direct {v0, p0, p1}, Lcom/aol/mobile/sdk/player/OneSDKBuilder$1;-><init>(Lcom/aol/mobile/sdk/player/OneSDKBuilder;Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 194
    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/OneSDKBuilder$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static getClient(Landroid/content/Context;Ljava/lang/String;)Lcom/aol/mobile/sdk/player/http/model/Client;
    .locals 3

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 80
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 86
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 88
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 90
    new-instance v2, Lcom/aol/mobile/sdk/player/http/model/Client;

    invoke-direct {v2, v1, p1, v0, p0}, Lcom/aol/mobile/sdk/player/http/model/Client;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception p0

    .line 82
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static getDevice()Lcom/aol/mobile/sdk/player/http/model/Device;
    .locals 4

    .line 107
    new-instance v0, Lcom/aol/mobile/sdk/player/http/model/Device;

    const-string v1, "Android"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/aol/mobile/sdk/player/http/model/Device;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static getRenderers(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/aol/mobile/sdk/player/http/model/Sdk$Renderer;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "@"

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 99
    new-instance v2, Lcom/aol/mobile/sdk/player/http/model/Sdk$Renderer;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-direct {v2, v3, v1}, Lcom/aol/mobile/sdk/player/http/model/Sdk$Renderer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private hasAmazonAdvertisingID(Landroid/content/Context;)Z
    .locals 1

    .line 164
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "limit_ad_tracking"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private hasGoogleAdvertisingId()Z
    .locals 1

    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 200
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public create(Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->advertId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 140
    iget-boolean v1, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->limitAdTracking:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->create(Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;Ljava/lang/String;Z)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->hasAmazonAdvertisingID(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->createUsingAmazonAdvertId(Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;)V

    goto :goto_0

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->hasGoogleAdvertisingId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->createUsingGoogleAdvertId(Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;)V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->advertId:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->limitAdTracking:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->create(Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setAdvertisingId(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/OneSDKBuilder;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->advertId:Ljava/lang/String;

    return-object p0
.end method

.method public setConfigUrl(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/OneSDKBuilder;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->configUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setExtra(Lorg/json/JSONObject;)Lcom/aol/mobile/sdk/player/OneSDKBuilder;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->extra:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setLimitAdTracking(Z)Lcom/aol/mobile/sdk/player/OneSDKBuilder;
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->limitAdTracking:Z

    return-object p0
.end method
