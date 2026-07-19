.class public Lcom/evie/common/services/links/LinkResolver;
.super Ljava/lang/Object;
.source "LinkResolver.java"


# instance fields
.field private final analytics:Lcom/evie/common/services/analytics/AnalyticsService;

.field private final events:Lcom/evie/common/services/events/EventService;


# direct methods
.method public constructor <init>(Lcom/evie/common/services/events/EventService;Lcom/evie/common/services/analytics/AnalyticsService;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/common/services/links/LinkResolver;->events:Lcom/evie/common/services/events/EventService;

    iput-object p2, p0, Lcom/evie/common/services/links/LinkResolver;->analytics:Lcom/evie/common/services/analytics/AnalyticsService;

    return-void
.end method

.method private getActionViewIntent(Landroid/net/Uri;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    .locals 2

    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 323
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "default"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 324
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 p1, 0x0

    .line 328
    invoke-virtual {p3, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 352
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 353
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 354
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 357
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getAppLaunchIntent(Landroid/net/Uri;Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "entity"

    .line 307
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "|app"

    .line 308
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "\\|"

    .line 309
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    .line 310
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    return-object v0
.end method

.method private getJigsawIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3

    .line 336
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.evie.jigsaw.OPEN_CARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 338
    new-instance p2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.evie.jigsaw.JigsawActivity"

    invoke-direct {p2, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 342
    invoke-static {p1}, Lcom/evie/common/services/links/LinkResolver;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 344
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.evie.jigsaw.JigsawActivity"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const p1, 0x10008000

    .line 345
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public resolve(Landroid/content/Context;Lcom/evie/common/services/links/LinkRequest;)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 52
    invoke-virtual/range {p2 .. p2}, Lcom/evie/common/services/links/LinkRequest;->app()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual/range {p2 .. p2}, Lcom/evie/common/services/links/LinkRequest;->analyticsData()Lcom/evie/common/services/analytics/models/AnalyticsData;

    move-result-object v3

    .line 57
    invoke-virtual/range {p2 .. p2}, Lcom/evie/common/services/links/LinkRequest;->links()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 60
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 65
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 68
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, -0x1

    .line 79
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v10, "settingsdeeplink"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x8

    goto/16 :goto_2

    :sswitch_1
    const-string v10, "settings"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x7

    goto/16 :goto_2

    :sswitch_2
    const-string v10, "contact"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x2

    goto/16 :goto_2

    :sswitch_3
    const-string v10, "termsofservice"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x9

    goto :goto_2

    :sswitch_4
    const-string v10, "topic"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xc

    goto :goto_2

    :sswitch_5
    const-string v10, "https"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :sswitch_6
    const-string v10, "http"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_2

    :sswitch_7
    const-string v10, "tel"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x5

    goto :goto_2

    :sswitch_8
    const-string v10, "app"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xb

    goto :goto_2

    :sswitch_9
    const-string v10, "websearch"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xa

    goto :goto_2

    :sswitch_a
    const-string v10, "allapps"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x6

    goto :goto_2

    :sswitch_b
    const-string v10, "market"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x4

    goto :goto_2

    :sswitch_c
    const-string v10, "jigsaw"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v7, -0x1

    :goto_2
    const/high16 v9, 0x10000000

    const/4 v10, 0x0

    packed-switch v7, :pswitch_data_0

    .line 267
    invoke-direct {v1, v5, v2, v8}, Lcom/evie/common/services/links/LinkResolver;->getActionViewIntent(Landroid/net/Uri;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v8

    const/4 v7, 0x1

    goto/16 :goto_a

    .line 258
    :pswitch_0
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 259
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v10, "com.evie.sidescreen.topicdetail.TopicDetailActivity"

    .line 260
    invoke-virtual {v8, v0, v10}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "com.evie.sidescreen.topicdetail.TopicDetailActivity.topicId"

    .line 261
    invoke-virtual {v8, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v7, 0x1

    goto/16 :goto_a

    .line 233
    :pswitch_1
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    const-string v10, "\\|"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 234
    new-instance v10, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v10, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    aget-object v13, v7, v6

    .line 239
    array-length v14, v7

    if-ne v14, v11, :cond_4

    .line 240
    aget-object v7, v7, v12

    .line 241
    new-instance v11, Landroid/content/ComponentName;

    invoke-direct {v11, v13, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 242
    invoke-virtual {v8, v10, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_6

    .line 248
    invoke-virtual {v8, v13}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-nez v7, :cond_5

    return v6

    :cond_5
    move-object v8, v7

    goto :goto_4

    :cond_6
    move-object v8, v10

    .line 254
    :goto_4
    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v7, 0x0

    goto/16 :goto_a

    .line 188
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lcom/evie/common/SearchSettings;->getInstance(Landroid/content/Context;)Lcom/evie/common/SearchSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/evie/common/SearchSettings;->getSearchEngine()I

    move-result v7

    .line 189
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v11

    const-string v13, "\\|"

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    packed-switch v7, :pswitch_data_1

    const-string v7, "http://www.google.com/search?q="

    .line 204
    array-length v13, v11

    if-le v13, v12, :cond_8

    aget-object v13, v11, v12

    const-string v14, "google"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 205
    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.intent.action.WEB_SEARCH"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v13, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v14, "com.google.android.googlequicksearchbox"

    .line 207
    invoke-virtual {v13, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "query"

    .line 208
    aget-object v15, v11, v6

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {v8, v13, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-nez v8, :cond_7

    move-object v8, v10

    goto :goto_5

    :pswitch_3
    const-string v7, "https://duckduckgo.com/?q="

    move-object v8, v10

    goto :goto_5

    :pswitch_4
    const-string v7, "http://www.bing.com/search?q="

    move-object v8, v10

    goto :goto_5

    :cond_7
    move-object v8, v13

    goto :goto_5

    :cond_8
    move-object v8, v10

    :goto_5
    if-nez v8, :cond_9

    .line 218
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v11, v6

    const-string v11, "UTF-8"

    invoke-static {v7, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    const-string v7, "Error encoding search query"

    .line 225
    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v7, v10}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    const/4 v7, 0x1

    goto/16 :goto_a

    :cond_9
    const/4 v7, 0x1

    goto/16 :goto_a

    .line 182
    :pswitch_5
    iget-object v0, v1, Lcom/evie/common/services/links/LinkResolver;->events:Lcom/evie/common/services/events/EventService;

    invoke-virtual {v0}, Lcom/evie/common/services/events/EventService;->broadcastTermsOfServiceEvent()Z

    .line 183
    invoke-virtual/range {p2 .. p2}, Lcom/evie/common/services/links/LinkRequest;->callback()Lcom/evie/common/services/links/LinkCallback;

    move-result-object v0

    invoke-interface {v0, v10}, Lcom/evie/common/services/links/LinkCallback;->onResolved(Landroid/content/Intent;)Z

    return v12

    .line 168
    :pswitch_6
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 170
    array-length v8, v7

    if-ne v8, v11, :cond_a

    .line 171
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 172
    aget-object v10, v7, v6

    aget-object v7, v7, v12

    invoke-virtual {v8, v10, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7

    .line 175
    :cond_a
    new-instance v8, Landroid/content/Intent;

    aget-object v7, v7, v6

    invoke-direct {v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_7
    const v7, 0x10008000

    .line 178
    invoke-virtual {v8, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v7, 0x0

    goto/16 :goto_a

    .line 162
    :pswitch_7
    iget-object v0, v1, Lcom/evie/common/services/links/LinkResolver;->events:Lcom/evie/common/services/events/EventService;

    invoke-virtual {v0, v3}, Lcom/evie/common/services/events/EventService;->broadcastSettingsEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;)Z

    .line 163
    invoke-virtual/range {p2 .. p2}, Lcom/evie/common/services/links/LinkRequest;->callback()Lcom/evie/common/services/links/LinkCallback;

    move-result-object v0

    invoke-interface {v0, v10}, Lcom/evie/common/services/links/LinkCallback;->onResolved(Landroid/content/Intent;)Z

    return v12

    .line 155
    :pswitch_8
    iget-object v0, v1, Lcom/evie/common/services/links/LinkResolver;->events:Lcom/evie/common/services/events/EventService;

    invoke-virtual {v0, v3}, Lcom/evie/common/services/events/EventService;->broadcastAllAppsEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;)Z

    .line 156
    invoke-virtual/range {p2 .. p2}, Lcom/evie/common/services/links/LinkRequest;->callback()Lcom/evie/common/services/links/LinkCallback;

    move-result-object v0

    invoke-interface {v0, v10}, Lcom/evie/common/services/links/LinkCallback;->onResolved(Landroid/content/Intent;)Z

    return v12

    :pswitch_9
    const-string v7, "android.permission.CALL_PHONE"

    .line 136
    invoke-virtual {v0, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_b

    .line 141
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.CALL"

    invoke-direct {v7, v8, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v8, v7

    goto :goto_8

    :cond_b
    const-string v7, "default.call"

    .line 146
    invoke-direct {v1, v5, v7, v8}, Lcom/evie/common/services/links/LinkResolver;->getActionViewIntent(Landroid/net/Uri;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v7

    move-object v8, v7

    :goto_8
    const/4 v7, 0x1

    goto :goto_a

    .line 130
    :pswitch_a
    new-instance v8, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v8, v7, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v7, 0x1

    goto :goto_a

    .line 120
    :pswitch_b
    invoke-direct {v1, v5, v8}, Lcom/evie/common/services/links/LinkResolver;->getAppLaunchIntent(Landroid/net/Uri;Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v8

    if-nez v8, :cond_c

    .line 123
    invoke-direct {v1, v0, v5}, Lcom/evie/common/services/links/LinkResolver;->getJigsawIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v8

    const/4 v7, 0x0

    goto :goto_a

    :cond_c
    const/4 v7, 0x0

    goto :goto_a

    .line 87
    :pswitch_c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 88
    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v7, v11, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 89
    invoke-virtual {v7, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {v8, v7, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_d

    move-object v8, v7

    const/4 v7, 0x1

    goto :goto_9

    :cond_d
    move-object v8, v10

    const/4 v7, 0x0

    :goto_9
    if-nez v8, :cond_e

    .line 106
    new-instance v8, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v8}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    .line 107
    invoke-virtual {v8, v12}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v8

    .line 108
    invoke-virtual {v8}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v8

    iget-object v8, v8, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 110
    invoke-virtual {v8, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v8

    if-eqz v5, :cond_e

    .line 112
    iget-object v13, v1, Lcom/evie/common/services/links/LinkResolver;->analytics:Lcom/evie/common/services/analytics/AnalyticsService;

    const-string v14, "web"

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v13 .. v18}, Lcom/evie/common/services/analytics/AnalyticsService;->recordScreenViewEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_a
    if-eqz v8, :cond_0

    .line 275
    invoke-virtual/range {p2 .. p2}, Lcom/evie/common/services/links/LinkRequest;->callback()Lcom/evie/common/services/links/LinkCallback;

    move-result-object v10

    invoke-interface {v10, v8}, Lcom/evie/common/services/links/LinkCallback;->onResolved(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz v3, :cond_f

    .line 281
    iget-object v2, v1, Lcom/evie/common/services/links/LinkResolver;->analytics:Lcom/evie/common/services/analytics/AnalyticsService;

    invoke-interface {v2, v3, v5, v8, v7}, Lcom/evie/common/services/analytics/AnalyticsService;->recordLinkResolutionEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Landroid/net/Uri;Landroid/content/Intent;Z)V

    .line 285
    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/evie/common/services/links/LinkResolver;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_10

    .line 287
    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 291
    :cond_10
    :try_start_1
    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return v12

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 293
    invoke-static {v2}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    return v6

    :cond_11
    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        -0x45261c1f -> :sswitch_c
        -0x40736bc4 -> :sswitch_b
        -0x3658746d -> :sswitch_a
        -0xe3c9e04 -> :sswitch_9
        0x17a21 -> :sswitch_8
        0x1c01b -> :sswitch_7
        0x310888 -> :sswitch_6
        0x5f008eb -> :sswitch_5
        0x696cd2f -> :sswitch_4
        0x25524757 -> :sswitch_3
        0x38b72420 -> :sswitch_2
        0x5582bc23 -> :sswitch_1
        0x5fe34009 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
