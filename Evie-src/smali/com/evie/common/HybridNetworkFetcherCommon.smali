.class public Lcom/evie/common/HybridNetworkFetcherCommon;
.super Ljava/lang/Object;
.source "HybridNetworkFetcherCommon.java"


# direct methods
.method private static getIconPackPackageName(Lcom/evie/common/iconpack/IconPackFilter;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/evie/common/iconpack/IconPackFilter;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getIconPackVersionCode(Lcom/evie/common/iconpack/IconPackFilter;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/evie/common/iconpack/IconPackFilter;->getVersionCode()I

    move-result p0

    return p0
.end method

.method public static getMagicResourceUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 3

    .line 33
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    .line 34
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "example.com"

    .line 35
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "476287f4b140f81a723002230fa368847065c97a"

    .line 36
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "pn"

    .line 37
    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "vc"

    .line 38
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v1, "sv"

    const/4 v2, 0x1

    .line 39
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "an"

    invoke-virtual {v0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 43
    :cond_0
    invoke-static {}, Lcom/evie/common/iconpack/IconPackFilterHolder;->getInstance()Lcom/evie/common/iconpack/IconPackFilterHolder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/evie/common/iconpack/IconPackFilterHolder;->getIconPackFilter()Lcom/evie/common/iconpack/IconPackFilter;

    move-result-object p2

    .line 45
    invoke-static {p2}, Lcom/evie/common/HybridNetworkFetcherCommon;->getIconPackPackageName(Lcom/evie/common/iconpack/IconPackFilter;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "ip"

    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 48
    :cond_1
    invoke-static {p2}, Lcom/evie/common/HybridNetworkFetcherCommon;->getIconPackVersionCode(Lcom/evie/common/iconpack/IconPackFilter;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const-string v2, "iv"

    .line 50
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    if-eqz p2, :cond_3

    .line 52
    invoke-virtual {p2, p0, p1}, Lcom/evie/common/iconpack/IconPackFilter;->isCalendarApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "cd"

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 56
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
