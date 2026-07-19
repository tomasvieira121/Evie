.class public Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule;
.super Ljava/lang/Object;
.source "ServerUrlModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideServerUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 23
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "com.voxel.simplesearchlauncher.dagger.module.JigsawModule.PREF_ENABLE_CONTENT_STAGING"

    .line 24
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "https://api-staging.evie.com/"

    goto :goto_0

    :cond_0
    const-string p1, "https://api2.evie.com"

    :goto_0
    return-object p1
.end method
