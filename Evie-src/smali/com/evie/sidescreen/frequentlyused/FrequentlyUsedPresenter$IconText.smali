.class public final Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter$IconText;
.super Ljava/lang/Object;
.source "FrequentlyUsedPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IconText"
.end annotation


# instance fields
.field public final iconUri:Landroid/net/Uri;

.field public final tag:Ljava/lang/Object;

.field public final text:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/Object;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter$IconText;->iconUri:Landroid/net/Uri;

    .line 177
    iput-object p2, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter$IconText;->text:Ljava/lang/CharSequence;

    .line 178
    iput-object p3, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter$IconText;->tag:Ljava/lang/Object;

    return-void
.end method

.method public static get(Landroid/content/Context;Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;)Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter$IconText;
    .locals 5

    const/4 v0, 0x0

    .line 183
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 185
    iget-object v1, p1, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v3, "ANY"

    .line 190
    iget-object v4, p1, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    iget-object v3, p1, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    .line 195
    :cond_1
    iget-object v3, p1, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3, v0, v1}, Lcom/evie/common/HybridNetworkFetcherCommon;->getMagicResourceUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 196
    new-instance v3, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter$IconText;

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-direct {v3, v1, p0, p1}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter$IconText;-><init>(Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/Object;)V

    return-object v3

    .line 199
    :cond_2
    invoke-virtual {p1}, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->toComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v0

    .line 202
    :cond_3
    iget-object v3, p1, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->toComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3, v4, v1}, Lcom/evie/common/HybridNetworkFetcherCommon;->getMagicResourceUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 203
    new-instance v3, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter$IconText;

    invoke-virtual {v2, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-direct {v3, v1, p0, p1}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter$IconText;-><init>(Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    return-object v0
.end method
