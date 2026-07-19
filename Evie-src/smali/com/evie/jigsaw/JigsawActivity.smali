.class public Lcom/evie/jigsaw/JigsawActivity;
.super Landroid/app/Activity;
.source "JigsawActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JigsawActivity"


# instance fields
.field private closeMethod:Lcom/evie/common/services/analytics/models/CloseMethod;

.field private error:Lcom/evie/jigsaw/components/base/AbstractComponent;

.field jigsaw:Lcom/evie/jigsaw/Jigsaw;

.field layouts:Lcom/evie/jigsaw/services/layout/LayoutService;

.field private link:Landroid/net/Uri;

.field private final mComponent:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/evie/jigsaw/components/base/AbstractComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLayoutCallback:Lretrofit2/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Callback<",
            "Lcom/evie/jigsaw/components/base/AbstractComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowComponentRunnable:Ljava/lang/Runnable;

.field private final mShowSpinnerRunnable:Ljava/lang/Runnable;

.field private root:Landroid/view/ViewGroup;

.field private spinner:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/evie/jigsaw/JigsawActivity;->mComponent:Ljava/util/concurrent/atomic/AtomicReference;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/evie/jigsaw/JigsawActivity;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance v0, Lcom/evie/jigsaw/JigsawActivity$1;

    invoke-direct {v0, p0}, Lcom/evie/jigsaw/JigsawActivity$1;-><init>(Lcom/evie/jigsaw/JigsawActivity;)V

    iput-object v0, p0, Lcom/evie/jigsaw/JigsawActivity;->mShowSpinnerRunnable:Ljava/lang/Runnable;

    .line 60
    new-instance v0, Lcom/evie/jigsaw/JigsawActivity$2;

    invoke-direct {v0, p0}, Lcom/evie/jigsaw/JigsawActivity$2;-><init>(Lcom/evie/jigsaw/JigsawActivity;)V

    iput-object v0, p0, Lcom/evie/jigsaw/JigsawActivity;->mShowComponentRunnable:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Lcom/evie/jigsaw/JigsawActivity$3;

    invoke-direct {v0, p0}, Lcom/evie/jigsaw/JigsawActivity$3;-><init>(Lcom/evie/jigsaw/JigsawActivity;)V

    iput-object v0, p0, Lcom/evie/jigsaw/JigsawActivity;->mLayoutCallback:Lretrofit2/Callback;

    .line 256
    sget-object v0, Lcom/evie/common/services/analytics/models/CloseMethod;->HARDWARE_TOUCH:Lcom/evie/common/services/analytics/models/CloseMethod;

    iput-object v0, p0, Lcom/evie/jigsaw/JigsawActivity;->closeMethod:Lcom/evie/common/services/analytics/models/CloseMethod;

    return-void
.end method

.method static synthetic access$000(Lcom/evie/jigsaw/JigsawActivity;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/evie/jigsaw/JigsawActivity;->spinner:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/evie/jigsaw/JigsawActivity;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/evie/jigsaw/JigsawActivity;->mComponent:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/evie/jigsaw/JigsawActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/evie/jigsaw/JigsawActivity;->root:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$300(Lcom/evie/jigsaw/JigsawActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/evie/jigsaw/JigsawActivity;->mShowComponentRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/evie/jigsaw/JigsawActivity;)Lcom/evie/jigsaw/components/base/AbstractComponent;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/evie/jigsaw/JigsawActivity;->error:Lcom/evie/jigsaw/components/base/AbstractComponent;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/evie/jigsaw/JigsawActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/evie/jigsaw/JigsawActivity;)Landroid/net/Uri;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/evie/jigsaw/JigsawActivity;->link:Landroid/net/Uri;

    return-object p0
.end method

.method private recordScreenViewEvent()V
    .locals 13

    .line 175
    iget-object v0, p0, Lcom/evie/jigsaw/JigsawActivity;->link:Landroid/net/Uri;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 180
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "link: %s"

    const/4 v3, 0x1

    .line 186
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v2, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, -0x1

    .line 188
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x4e7cb25c

    const/4 v6, 0x2

    if-eq v4, v5, :cond_3

    const v5, 0x65a39bec

    if-eq v4, v5, :cond_2

    const v5, 0x7f20c7cb

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "jigsaw:/layouts/discovery?topic=apps"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const-string v4, "jigsaw:/layouts/discovery?topic=music"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const-string v4, "jigsaw:/layouts/discovery?topic=movies"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x0

    :cond_4
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 198
    :pswitch_0
    iget-object v2, p0, Lcom/evie/jigsaw/JigsawActivity;->jigsaw:Lcom/evie/jigsaw/Jigsaw;

    invoke-virtual {v2}, Lcom/evie/jigsaw/Jigsaw;->analyticsService()Lcom/evie/common/services/analytics/AnalyticsService;

    move-result-object v7

    const-string v8, "discovery"

    const-string v9, "apps"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Lcom/evie/common/services/analytics/AnalyticsService;->recordScreenViewEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 194
    :pswitch_1
    iget-object v2, p0, Lcom/evie/jigsaw/JigsawActivity;->jigsaw:Lcom/evie/jigsaw/Jigsaw;

    invoke-virtual {v2}, Lcom/evie/jigsaw/Jigsaw;->analyticsService()Lcom/evie/common/services/analytics/AnalyticsService;

    move-result-object v7

    const-string v8, "discovery"

    const-string v9, "music"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Lcom/evie/common/services/analytics/AnalyticsService;->recordScreenViewEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 190
    :pswitch_2
    iget-object v2, p0, Lcom/evie/jigsaw/JigsawActivity;->jigsaw:Lcom/evie/jigsaw/Jigsaw;

    invoke-virtual {v2}, Lcom/evie/jigsaw/Jigsaw;->analyticsService()Lcom/evie/common/services/analytics/AnalyticsService;

    move-result-object v7

    const-string v8, "discovery"

    const-string v9, "movies"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Lcom/evie/common/services/analytics/AnalyticsService;->recordScreenViewEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v2, "jigsaw:/layouts/card?categories="

    .line 202
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 203
    iget-object v0, p0, Lcom/evie/jigsaw/JigsawActivity;->link:Landroid/net/Uri;

    const-string v2, "categories"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    if-lez v1, :cond_5

    const-string v3, "&"

    .line 208
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v3, "categories="

    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 213
    :cond_6
    iget-object v0, p0, Lcom/evie/jigsaw/JigsawActivity;->jigsaw:Lcom/evie/jigsaw/Jigsaw;

    invoke-virtual {v0}, Lcom/evie/jigsaw/Jigsaw;->analyticsService()Lcom/evie/common/services/analytics/AnalyticsService;

    move-result-object v3

    const-string v4, "collection"

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/evie/jigsaw/JigsawActivity;->link:Landroid/net/Uri;

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/evie/common/services/analytics/AnalyticsService;->recordScreenViewEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string v2, "jigsaw:/layouts/card?entity="

    .line 214
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 215
    new-instance v2, Landroid/net/UrlQuerySanitizer;

    invoke-direct {v2, v0}, Landroid/net/UrlQuerySanitizer;-><init>(Ljava/lang/String;)V

    const-string v0, "entity"

    .line 217
    invoke-virtual {v2, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v0, 0x0

    if-eqz v11, :cond_8

    const-string v2, "\\|"

    .line 221
    invoke-virtual {v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 223
    array-length v4, v2

    if-le v4, v3, :cond_8

    .line 224
    aget-object v0, v2, v3

    move-object v9, v0

    goto :goto_3

    :cond_8
    move-object v9, v0

    :goto_3
    const-string v0, "entity: %s, subtype: %s"

    .line 228
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v11, v2, v1

    aput-object v9, v2, v3

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "collection"

    .line 230
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 231
    iget-object v0, p0, Lcom/evie/jigsaw/JigsawActivity;->jigsaw:Lcom/evie/jigsaw/Jigsaw;

    invoke-virtual {v0}, Lcom/evie/jigsaw/Jigsaw;->analyticsService()Lcom/evie/common/services/analytics/AnalyticsService;

    move-result-object v7

    const-string v8, "collection"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Lcom/evie/common/services/analytics/AnalyticsService;->recordScreenViewEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 233
    :cond_9
    iget-object v0, p0, Lcom/evie/jigsaw/JigsawActivity;->jigsaw:Lcom/evie/jigsaw/Jigsaw;

    invoke-virtual {v0}, Lcom/evie/jigsaw/Jigsaw;->analyticsService()Lcom/evie/common/services/analytics/AnalyticsService;

    move-result-object v7

    const-string v8, "entity"

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Lcom/evie/common/services/analytics/AnalyticsService;->recordScreenViewEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    const-string v1, "contact:content:"

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 236
    iget-object v0, p0, Lcom/evie/jigsaw/JigsawActivity;->jigsaw:Lcom/evie/jigsaw/Jigsaw;

    invoke-virtual {v0}, Lcom/evie/jigsaw/Jigsaw;->analyticsService()Lcom/evie/common/services/analytics/AnalyticsService;

    move-result-object v1

    const-string v2, "entity"

    const-string v3, "contact"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/evie/common/services/analytics/AnalyticsService;->recordScreenViewEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_4
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Unabled to decode url"

    .line 182
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public finish(Lcom/evie/common/services/analytics/models/CloseMethod;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/evie/jigsaw/JigsawActivity;->closeMethod:Lcom/evie/common/services/analytics/models/CloseMethod;

    .line 265
    invoke-virtual {p0}, Lcom/evie/jigsaw/JigsawActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/evie/jigsaw/JigsawActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/evie/jigsaw/JigsawInjector;

    invoke-interface {p1}, Lcom/evie/jigsaw/JigsawInjector;->getJigsaw()Lcom/evie/jigsaw/Jigsaw;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/jigsaw/JigsawActivity;->jigsaw:Lcom/evie/jigsaw/Jigsaw;

    .line 119
    iget-object p1, p0, Lcom/evie/jigsaw/JigsawActivity;->jigsaw:Lcom/evie/jigsaw/Jigsaw;

    invoke-virtual {p1, p0}, Lcom/evie/jigsaw/Jigsaw;->inject(Lcom/evie/jigsaw/JigsawActivity;)V

    .line 122
    sget p1, Lcom/evie/jigsaw/R$layout;->activity_jigsaw:I

    invoke-virtual {p0, p1}, Lcom/evie/jigsaw/JigsawActivity;->setContentView(I)V

    .line 123
    sget p1, Lcom/evie/jigsaw/R$id;->root:I

    invoke-virtual {p0, p1}, Lcom/evie/jigsaw/JigsawActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/evie/jigsaw/JigsawActivity;->root:Landroid/view/ViewGroup;

    .line 126
    sget p1, Lcom/evie/jigsaw/R$id;->spinner:I

    invoke-virtual {p0, p1}, Lcom/evie/jigsaw/JigsawActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/jigsaw/JigsawActivity;->spinner:Landroid/view/View;

    .line 127
    iget-object p1, p0, Lcom/evie/jigsaw/JigsawActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/evie/jigsaw/JigsawActivity;->mShowSpinnerRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2ee

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    new-instance p1, Lcom/evie/jigsaw/components/containers/StackComponent;

    invoke-direct {p1}, Lcom/evie/jigsaw/components/containers/StackComponent;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/evie/jigsaw/components/base/AbstractComponent;

    new-instance v2, Lcom/evie/jigsaw/components/content/DialogComponent;

    invoke-direct {v2}, Lcom/evie/jigsaw/components/content/DialogComponent;-><init>()V

    iget-object v3, p0, Lcom/evie/jigsaw/JigsawActivity;->jigsaw:Lcom/evie/jigsaw/Jigsaw;

    .line 133
    invoke-virtual {v3}, Lcom/evie/jigsaw/Jigsaw;->settings()Lcom/evie/jigsaw/JigsawSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evie/jigsaw/JigsawSettings;->errorImage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/evie/jigsaw/components/content/DialogComponent;->setImage(I)Lcom/evie/jigsaw/components/content/DialogComponent;

    move-result-object v2

    sget v3, Lcom/evie/jigsaw/R$string;->confab_generic_error_text:I

    .line 134
    invoke-virtual {v2, v3}, Lcom/evie/jigsaw/components/content/DialogComponent;->setTextResource(I)Lcom/evie/jigsaw/components/content/DialogComponent;

    move-result-object v2

    sget v3, Lcom/evie/jigsaw/R$string;->confab_generic_error_subtext:I

    .line 135
    invoke-virtual {v2, v3}, Lcom/evie/jigsaw/components/content/DialogComponent;->setSubtextResource(I)Lcom/evie/jigsaw/components/content/DialogComponent;

    move-result-object v2

    sget v3, Lcom/evie/jigsaw/R$string;->confab_generic_error_button:I

    .line 136
    invoke-virtual {v2, v3}, Lcom/evie/jigsaw/components/content/DialogComponent;->setPositiveButtonTextResource(I)Lcom/evie/jigsaw/components/content/DialogComponent;

    move-result-object v2

    new-instance v3, Lcom/evie/jigsaw/JigsawActivity$4;

    invoke-direct {v3, p0}, Lcom/evie/jigsaw/JigsawActivity$4;-><init>(Lcom/evie/jigsaw/JigsawActivity;)V

    .line 137
    invoke-virtual {v2, v3}, Lcom/evie/jigsaw/components/content/DialogComponent;->setPositiveButtonListener(Landroid/view/View$OnClickListener;)Lcom/evie/jigsaw/components/content/DialogComponent;

    move-result-object v2

    sget v3, Lcom/evie/jigsaw/R$color;->evie_bluish_gray:I

    .line 146
    invoke-virtual {v2, v3}, Lcom/evie/jigsaw/components/content/DialogComponent;->setBackgroundResource(I)Lcom/evie/jigsaw/components/content/DialogComponent;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 131
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/evie/jigsaw/components/containers/StackComponent;->setItems(Ljava/util/List;)Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;

    move-result-object p1

    new-instance v1, Lcom/evie/jigsaw/components/base/AbstractComponent$Style;

    invoke-direct {v1}, Lcom/evie/jigsaw/components/base/AbstractComponent$Style;-><init>()V

    .line 147
    invoke-virtual {v1, v0}, Lcom/evie/jigsaw/components/base/AbstractComponent$Style;->setFullscreen(Z)Lcom/evie/jigsaw/components/base/AbstractComponent$Style;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;->setStyle(Lcom/evie/jigsaw/components/base/AbstractComponent$Style;)Lcom/evie/jigsaw/components/base/AbstractComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/jigsaw/JigsawActivity;->error:Lcom/evie/jigsaw/components/base/AbstractComponent;

    .line 149
    iget-object p1, p0, Lcom/evie/jigsaw/JigsawActivity;->error:Lcom/evie/jigsaw/components/base/AbstractComponent;

    iget-object v0, p0, Lcom/evie/jigsaw/JigsawActivity;->jigsaw:Lcom/evie/jigsaw/Jigsaw;

    invoke-virtual {p1, v0}, Lcom/evie/jigsaw/components/base/AbstractComponent;->initialize(Lcom/evie/jigsaw/Jigsaw;)V

    .line 152
    invoke-virtual {p0}, Lcom/evie/jigsaw/JigsawActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/jigsaw/JigsawActivity;->link:Landroid/net/Uri;

    .line 153
    iget-object p1, p0, Lcom/evie/jigsaw/JigsawActivity;->link:Landroid/net/Uri;

    if-nez p1, :cond_0

    const-string p1, "JigsawActivity with null JIGSAW_LINK_EXTRA"

    .line 155
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/evie/jigsaw/JigsawActivity;->finish()V

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/evie/jigsaw/JigsawActivity;->layouts:Lcom/evie/jigsaw/services/layout/LayoutService;

    iget-object v0, p0, Lcom/evie/jigsaw/JigsawActivity;->link:Landroid/net/Uri;

    invoke-interface {p1, v0}, Lcom/evie/jigsaw/services/layout/LayoutService;->resolve(Landroid/net/Uri;)Lretrofit2/Call;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/jigsaw/JigsawActivity;->mLayoutCallback:Lretrofit2/Callback;

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 243
    iget-object v0, p0, Lcom/evie/jigsaw/JigsawActivity;->mComponent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/jigsaw/components/base/AbstractComponent;

    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/evie/jigsaw/JigsawActivity;->closeMethod:Lcom/evie/common/services/analytics/models/CloseMethod;

    invoke-virtual {v0, v1}, Lcom/evie/jigsaw/components/base/AbstractComponent;->recordCloseEvent(Lcom/evie/common/services/analytics/models/CloseMethod;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 165
    iget-object v0, p0, Lcom/evie/jigsaw/JigsawActivity;->mComponent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/jigsaw/components/base/AbstractComponent;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/evie/jigsaw/components/base/AbstractComponent;->resume()V

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/evie/jigsaw/JigsawActivity;->recordScreenViewEvent()V

    return-void
.end method
