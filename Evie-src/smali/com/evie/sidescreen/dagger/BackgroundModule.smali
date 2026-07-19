.class public Lcom/evie/sidescreen/dagger/BackgroundModule;
.super Ljava/lang/Object;
.source "BackgroundModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesBackgroundModel(ZLandroid/content/Context;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/ActivationModel;Lcom/evie/models/wallpaper/WallpaperModel;Lokhttp3/OkHttpClient;)Lcom/evie/sidescreen/background/BackgroundModel;
    .locals 8

    if-eqz p1, :cond_0

    .line 47
    new-instance p1, Lcom/evie/sidescreen/background/BackgroundModelImpl;

    const-string v0, "com.evie.sidescreen.background.prefs"

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 49
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move-object v0, p1

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/evie/sidescreen/background/BackgroundModelImpl;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;ILcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/ActivationModel;Lcom/evie/models/wallpaper/WallpaperModel;Lokhttp3/OkHttpClient;)V

    return-object p1

    .line 55
    :cond_0
    new-instance p1, Lcom/evie/sidescreen/background/BackgroundModelDisabled;

    invoke-direct {p1}, Lcom/evie/sidescreen/background/BackgroundModelDisabled;-><init>()V

    return-object p1
.end method

.method public providesWallpaperModel(Lretrofit2/Retrofit;)Lcom/evie/models/wallpaper/WallpaperModel;
    .locals 1

    .line 29
    invoke-virtual {p1}, Lretrofit2/Retrofit;->newBuilder()Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    const-class v0, Lcom/evie/models/wallpaper/WallpaperAPI;

    .line 31
    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/models/wallpaper/WallpaperAPI;

    .line 33
    new-instance v0, Lcom/evie/models/wallpaper/WallpaperModel;

    invoke-direct {v0, p1}, Lcom/evie/models/wallpaper/WallpaperModel;-><init>(Lcom/evie/models/wallpaper/WallpaperAPI;)V

    return-object v0
.end method
