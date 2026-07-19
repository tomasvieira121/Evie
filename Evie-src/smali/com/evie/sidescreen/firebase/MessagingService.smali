.class public Lcom/evie/sidescreen/firebase/MessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "MessagingService.java"


# static fields
.field private static final NOTIFICATION_KEYS:[Ljava/lang/String;

.field private static final PROMPT_KEYS:[Ljava/lang/String;


# instance fields
.field mPromptStoreModel:Lcom/evie/models/PromptStoreModel;

.field mSideScreenSharedDependencies:Lcom/evie/sidescreen/SideScreenSharedDependencies;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "notification.title"

    const-string v1, "notification.body"

    const-string v2, "notification.expanded"

    const-string v3, "notification.color"

    const-string v4, "notification.action"

    const-string v5, "notification.priority"

    const-string v6, "notification.bitmap"

    .line 65
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/firebase/MessagingService;->NOTIFICATION_KEYS:[Ljava/lang/String;

    const-string v1, "prompt.title"

    const-string v2, "prompt.description"

    const-string v3, "prompt.image"

    const-string v4, "prompt.type"

    const-string v5, "com.evie.sidescreen.webviewer.WebViewerActivity.favicon"

    const-string v6, "com.evie.sidescreen.webviewer.WebViewerActivity.title"

    const-string v7, "com.evie.sidescreen.webviewer.WebViewerActivity.share"

    const-string v8, "com.evie.sidescreen.webviewer.WebViewerActivity.topics_json"

    const-string v9, "com.evie.sidescreen.webviewer.WebViewerActivity.url"

    const-string v10, "com.evie.sidescreen.article_id"

    .line 84
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/firebase/MessagingService;->PROMPT_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method private sendImpressionEvent(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 214
    new-instance v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v1, "item_type"

    const-string v2, "analytics.item_type"

    .line 216
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    const-string v1, "analytics_proto"

    const-string v2, "analytics.proto"

    .line 217
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    const-string v1, "impression_id"

    const-string v2, "analytics.impression_id"

    .line 218
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    const-string v1, "screen_type"

    const-string v2, "notification"

    .line 219
    invoke-virtual {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    const-string v1, "com.evie.sidescreen.article_id"

    .line 220
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "entity_id"

    const-string v2, "com.evie.sidescreen.article_id"

    .line 221
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/firebase/MessagingService;->mSideScreenSharedDependencies:Lcom/evie/sidescreen/SideScreenSharedDependencies;

    invoke-interface {p1}, Lcom/evie/sidescreen/SideScreenSharedDependencies;->analyticsHandler()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object p1

    const-string v1, "ev_ss_article_impression"

    invoke-virtual {p1, v1, v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 98
    invoke-super {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onCreate()V

    .line 99
    invoke-static {p0}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Service;)V

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 12

    .line 104
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p1

    const-string v0, "message.type"

    .line 107
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "message.type"

    .line 108
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, -0x1

    .line 114
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x3a66a69c

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_1

    const v4, 0x237a88eb

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "notification"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "prompt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :cond_2
    :goto_0
    packed-switch v2, :pswitch_data_0

    return-void

    .line 147
    :pswitch_0
    sget-object v0, Lcom/evie/sidescreen/firebase/MessagingService;->NOTIFICATION_KEYS:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 148
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 149
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const-string v0, "analytics.impression_id"

    .line 153
    new-instance v2, Ljava/math/BigInteger;

    const/16 v3, 0x40

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/firebase/MessagingService;->sendImpressionEvent(Ljava/util/Map;)V

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v2, "notification.action"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "analytics.send_tap_event"

    .line 157
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    const p1, 0x10008000

    .line 162
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v7, 0x7fffffff

    rem-long/2addr v2, v7

    long-to-int p1, v2

    .line 166
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.evie.screen.api.service.show"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.evie.sidescreen.action"

    .line 167
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 169
    invoke-static {p0, p1, v2, v6}, Lis/shortcut/compat/PendingIntentCompat;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 171
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/4 v4, 0x4

    if-lt v2, v3, :cond_6

    .line 172
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "default"

    const-string v7, "Push Notifications"

    invoke-direct {v2, v3, v7, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v3, "notification"

    .line 173
    invoke-virtual {p0, v3}, Lcom/evie/sidescreen/firebase/MessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 174
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 177
    :cond_6
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    const-string v3, "default"

    invoke-direct {v2, p0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "notification.title"

    .line 179
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    const-string v7, "notification.expanded"

    .line 180
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 181
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 182
    new-instance v8, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 183
    invoke-virtual {v8, v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v8

    .line 184
    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v7

    .line 182
    invoke-virtual {v2, v7}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_7
    :try_start_0
    const-string v7, "notification.priority"

    .line 189
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x2

    .line 190
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :catch_0
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v7, "notification.body"

    .line 196
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v7, "notification.color"

    .line 197
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    sget v7, Lcom/evie/sidescreen/R$drawable;->push_icon:I

    .line 198
    invoke-virtual {v3, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 199
    invoke-virtual {v3, v6}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    .line 200
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 201
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v4, "notification.bitmap"

    .line 202
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/utils/BitmapUtil;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 203
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 206
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_d

    .line 116
    :pswitch_1
    sget-object v0, Lcom/evie/sidescreen/firebase/MessagingService;->PROMPT_KEYS:[Ljava/lang/String;

    array-length v2, v0

    :goto_3
    if-ge v6, v2, :cond_9

    aget-object v3, v0, v6

    .line 117
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 118
    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    const-string p1, "prompt.type"

    .line 123
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, "prompt.type"

    .line 124
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "breaking"

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 130
    new-instance p1, Lcom/evie/models/breakingnews/data/BreakingNews;

    const-string v0, "com.evie.sidescreen.article_id"

    .line 131
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "com.evie.sidescreen.article_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    :cond_a
    const-string v0, "unavailable"

    :goto_4
    move-object v3, v0

    const-string v0, "prompt.title"

    .line 132
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "prompt.title"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_5

    :cond_b
    const-string v0, "unavailable"

    :goto_5
    move-object v4, v0

    const-string v0, "prompt.description"

    .line 133
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "prompt.description"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_6

    :cond_c
    const-string v0, "unavailable"

    :goto_6
    move-object v5, v0

    const-string v0, "prompt.image"

    .line 134
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "prompt.image"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_7

    :cond_d
    const-string v0, "unavailable"

    :goto_7
    move-object v6, v0

    const-string v0, "com.evie.sidescreen.webviewer.WebViewerActivity.url"

    .line 135
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "com.evie.sidescreen.webviewer.WebViewerActivity.url"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_8

    :cond_e
    const-string v0, "unavailable"

    :goto_8
    move-object v7, v0

    const-string v0, "com.evie.sidescreen.webviewer.WebViewerActivity.share"

    .line 136
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "com.evie.sidescreen.webviewer.WebViewerActivity.share"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_9

    :cond_f
    const-string v0, "unavailable"

    :goto_9
    move-object v8, v0

    const-string v0, "com.evie.sidescreen.webviewer.WebViewerActivity.title"

    .line 137
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "com.evie.sidescreen.webviewer.WebViewerActivity.title"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_a

    :cond_10
    const-string v0, "unavailable"

    :goto_a
    move-object v9, v0

    const-string v0, "com.evie.sidescreen.webviewer.WebViewerActivity.favicon"

    .line 138
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "com.evie.sidescreen.webviewer.WebViewerActivity.favicon"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_b

    :cond_11
    const-string v0, "unavailable"

    :goto_b
    move-object v10, v0

    const-string v0, "com.evie.sidescreen.webviewer.WebViewerActivity.topics_json"

    .line 139
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "com.evie.sidescreen.webviewer.WebViewerActivity.topics_json"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_c

    :cond_12
    const-string v0, "unavailable"

    :goto_c
    move-object v11, v0

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lcom/evie/models/breakingnews/data/BreakingNews;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/evie/sidescreen/firebase/MessagingService;->mPromptStoreModel:Lcom/evie/models/PromptStoreModel;

    invoke-virtual {v0, p1}, Lcom/evie/models/PromptStoreModel;->addNewBreakingNews(Lcom/evie/models/breakingnews/data/BreakingNews;)V

    :cond_13
    :goto_d
    return-void

    :cond_14
    return-void

    :cond_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method
