.class public Lcom/evie/sidescreen/ActivityStarter;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# static fields
.field private static final PASS_FLAGS_ARRAY:[Ljava/lang/String;


# instance fields
.field private final isActivity:Z

.field private final mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

.field private final mContext:Landroid/content/Context;

.field private final mPassFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.evie.sidescreen.ActivityStarter.personalize_onboarding"

    .line 39
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/ActivityStarter;->PASS_FLAGS_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p1, p2}, Lcom/evie/sidescreen/ActivityStarter;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/ActivityStarter;->mPassFlags:Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/evie/sidescreen/ActivityStarter;->receivePassFlags(Landroid/content/Intent;)V

    .line 59
    iput-object p2, p0, Lcom/evie/sidescreen/ActivityStarter;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/evie/sidescreen/ActivityStarter;->mContext:Landroid/content/Context;

    .line 65
    :goto_0
    iput-object p3, p0, Lcom/evie/sidescreen/ActivityStarter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    .line 66
    iget-object p1, p0, Lcom/evie/sidescreen/ActivityStarter;->mContext:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    iput-boolean p1, p0, Lcom/evie/sidescreen/ActivityStarter;->isActivity:Z

    return-void
.end method

.method private addNewTaskFlagsIfNeeded(Landroid/content/Intent;)V
    .locals 1

    .line 302
    iget-boolean v0, p0, Lcom/evie/sidescreen/ActivityStarter;->isActivity:Z

    if-nez v0, :cond_0

    const v0, 0x10008000

    .line 306
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private addPassFlagsToIntent(Landroid/content/Intent;)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/evie/sidescreen/ActivityStarter;->mPassFlags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private receivePassFlags(Landroid/content/Intent;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    sget-object v0, Lcom/evie/sidescreen/ActivityStarter;->PASS_FLAGS_ARRAY:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 74
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    iget-object v5, p0, Lcom/evie/sidescreen/ActivityStarter;->mPassFlags:Ljava/util/Map;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getIntentForUrl(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 183
    invoke-virtual {p0, p8, p2, p7}, Lcom/evie/sidescreen/ActivityStarter;->getViewIntentIfAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_3

    .line 187
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p9, p2

    .line 188
    :goto_0
    invoke-static {p9, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 190
    :goto_1
    const-class p1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/ActivityStarter;->getLocalActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p6, :cond_2

    .line 192
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_2
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_2

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/util/Map$Entry;

    .line 193
    invoke-interface {p7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Ljava/lang/String;

    invoke-interface {p7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/io/Serializable;

    invoke-virtual {p1, p8, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_2

    .line 197
    :cond_2
    invoke-static {p9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p6

    invoke-virtual {p1, p6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 198
    sget-object p6, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_URL_KEY:Ljava/lang/String;

    invoke-virtual {p1, p6, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    sget-object p6, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_FALLBACK_URL_KEY:Ljava/lang/String;

    invoke-virtual {p1, p6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    sget-object p2, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_TITLE_KEY:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    sget-object p2, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_SHARE_SUBJECT_KEY:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    sget-object p2, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_TILE_ID_KEY:Ljava/lang/String;

    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    return-object p1
.end method

.method public getLocalActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2

    .line 263
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/evie/sidescreen/ActivityStarter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    invoke-direct {p0, v0}, Lcom/evie/sidescreen/ActivityStarter;->addPassFlagsToIntent(Landroid/content/Intent;)V

    .line 265
    iget-boolean p1, p0, Lcom/evie/sidescreen/ActivityStarter;->isActivity:Z

    if-nez p1, :cond_0

    const-string p1, "com.evie.sidescreen.SideScreenActivity.enable_activity_navigation_bar_hack"

    const/4 v1, 0x1

    .line 266
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public getViewIntentIfAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 233
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 238
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p2

    .line 240
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v1

    .line 243
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 245
    iget-object p2, p0, Lcom/evie/sidescreen/ActivityStarter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 247
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 248
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "ANY"

    .line 250
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 251
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const/4 p1, 0x0

    .line 254
    invoke-virtual {p2, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public startActivity(Landroid/view/View;Landroid/content/Intent;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/evie/sidescreen/ActivityStarter;->startActivity(Landroid/view/View;Landroid/content/Intent;ZZ)Z

    move-result p1

    return p1
.end method

.method public startActivity(Landroid/view/View;Landroid/content/Intent;ZZ)Z
    .locals 0

    .line 112
    invoke-static {p2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_0

    .line 115
    invoke-direct {p0, p2}, Lcom/evie/sidescreen/ActivityStarter;->addNewTaskFlagsIfNeeded(Landroid/content/Intent;)V

    .line 119
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/evie/sidescreen/ActivityStarter;->mContext:Landroid/content/Context;

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    .line 122
    iget-object p3, p0, Lcom/evie/sidescreen/ActivityStarter;->mContext:Landroid/content/Context;

    sget p4, Lcom/evie/sidescreen/R$string;->ss_no_app_found:I

    invoke-static {p3, p4, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Toast;->show()V

    .line 124
    :cond_1
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    return p2
.end method

.method public startActivityForResult(Landroid/view/View;Landroid/content/Intent;IZ)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 101
    invoke-virtual/range {v0 .. v5}, Lcom/evie/sidescreen/ActivityStarter;->startActivityForResult(Landroid/view/View;Landroid/content/Intent;IZZ)Z

    move-result p1

    return p1
.end method

.method public startActivityForResult(Landroid/view/View;Landroid/content/Intent;IZZ)Z
    .locals 1

    .line 132
    iget-boolean p1, p0, Lcom/evie/sidescreen/ActivityStarter;->isActivity:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 136
    :cond_0
    invoke-static {p2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p5, :cond_1

    .line 139
    invoke-direct {p0, p2}, Lcom/evie/sidescreen/ActivityStarter;->addNewTaskFlagsIfNeeded(Landroid/content/Intent;)V

    .line 143
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/evie/sidescreen/ActivityStarter;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const/4 p5, 0x0

    invoke-virtual {p1, p2, p3, p5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    if-eqz p4, :cond_2

    .line 146
    iget-object p2, p0, Lcom/evie/sidescreen/ActivityStarter;->mContext:Landroid/content/Context;

    sget p3, Lcom/evie/sidescreen/R$string;->ss_no_app_found:I

    invoke-static {p2, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 148
    :cond_2
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    return v0
.end method

.method public startPackageId(Landroid/view/View;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/evie/sidescreen/ActivityStarter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 211
    invoke-virtual {p0, p1, p2, p3}, Lcom/evie/sidescreen/ActivityStarter;->startActivity(Landroid/view/View;Landroid/content/Intent;Z)Z

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 214
    iget-object p1, p0, Lcom/evie/sidescreen/ActivityStarter;->mContext:Landroid/content/Context;

    sget p3, Lcom/evie/sidescreen/R$string;->ss_no_app_found:I

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-object p2
.end method

.method public startShareActivity(Ljava/lang/String;Ljava/lang/String;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/evie/sidescreen/ActivityStarter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "share"

    .line 289
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_screen_info"

    .line 290
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object p3, p0, Lcom/evie/sidescreen/ActivityStarter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_tap"

    invoke-virtual {p3, v1, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 294
    :cond_0
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    .line 295
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.SUBJECT"

    .line 296
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.TEXT"

    .line 297
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 298
    invoke-static {p3, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/evie/sidescreen/ActivityStarter;->startActivity(Landroid/view/View;Landroid/content/Intent;Z)Z

    return-void
.end method

.method public startUrl(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 156
    invoke-virtual/range {v0 .. v9}, Lcom/evie/sidescreen/ActivityStarter;->startUrl(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startUrl(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 168
    invoke-virtual/range {p0 .. p9}, Lcom/evie/sidescreen/ActivityStarter;->getIntentForUrl(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/4 p3, 0x1

    .line 169
    invoke-virtual {p0, p1, p2, p3}, Lcom/evie/sidescreen/ActivityStarter;->startActivity(Landroid/view/View;Landroid/content/Intent;Z)Z

    return-void
.end method
