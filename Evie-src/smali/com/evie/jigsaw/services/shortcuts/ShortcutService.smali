.class public Lcom/evie/jigsaw/services/shortcuts/ShortcutService;
.super Ljava/lang/Object;
.source "ShortcutService.java"


# static fields
.field private static final SHORTCUT_BASE_ICON_PAINT:Landroid/graphics/Paint;


# instance fields
.field private final analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

.field private final imageResolver:Lcom/evie/jigsaw/services/images/ImageResolver;

.field private final shortcutBadgeMultiplier:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->SHORTCUT_BASE_ICON_PAINT:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Lcom/evie/jigsaw/services/images/ImageResolver;Lcom/evie/common/services/analytics/AnalyticsService;F)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->imageResolver:Lcom/evie/jigsaw/services/images/ImageResolver;

    iput-object p2, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

    iput p3, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->shortcutBadgeMultiplier:F

    return-void
.end method

.method static synthetic access$000(Lcom/evie/jigsaw/services/shortcuts/ShortcutService;)Lcom/evie/common/services/analytics/AnalyticsService;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/evie/jigsaw/services/shortcuts/ShortcutService;Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Intent;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->sendShortcutIntent(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200()Landroid/graphics/Paint;
    .locals 1

    .line 49
    sget-object v0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->SHORTCUT_BASE_ICON_PAINT:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$300(Lcom/evie/jigsaw/services/shortcuts/ShortcutService;Lcom/evie/jigsaw/services/images/models/Image;ILcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->drawImage(Lcom/evie/jigsaw/services/images/models/Image;ILcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;)V

    return-void
.end method

.method private drawImage(Lcom/evie/jigsaw/services/images/models/Image;ILcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->imageResolver:Lcom/evie/jigsaw/services/images/ImageResolver;

    invoke-interface {v0, p1, p2}, Lcom/evie/jigsaw/services/images/ImageResolver;->resolve(Lcom/evie/jigsaw/services/images/models/Image;I)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->fromUri(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 188
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object p2

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p2, p1, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    .line 195
    invoke-static {}, Lcom/facebook/common/executors/UiThreadImmediateExecutorService;->getInstance()Lcom/facebook/common/executors/UiThreadImmediateExecutorService;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lcom/facebook/datasource/DataSource;->subscribe(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private getShortcutBitmap(Landroid/content/Context;Lcom/evie/jigsaw/services/images/models/Image;Lcom/evie/jigsaw/services/images/models/Image;)Landroid/graphics/Bitmap;
    .locals 11

    .line 119
    invoke-static {p1}, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->getShortcutSizeInPixels(Landroid/content/Context;)I

    move-result p1

    .line 120
    iget v0, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->shortcutBadgeMultiplier:F

    int-to-float v1, p1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 123
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 124
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sub-int v0, p1, v7

    .line 128
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 129
    new-instance v8, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$3;

    invoke-direct {v8, p0, v3, v1}, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$3;-><init>(Lcom/evie/jigsaw/services/shortcuts/ShortcutService;Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 144
    new-instance v5, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {v5, v0, v0, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 145
    new-instance v10, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$4;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$4;-><init>(Lcom/evie/jigsaw/services/shortcuts/ShortcutService;Lcom/evie/jigsaw/services/images/models/Image;Landroid/graphics/Canvas;ILandroid/graphics/Rect;Lcom/evie/jigsaw/services/images/models/Image;ILcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;)V

    .line 174
    invoke-direct {p0, p2, p1, v10}, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->drawImage(Lcom/evie/jigsaw/services/images/models/Image;ILcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;)V

    return-object v9
.end method

.method private static getShortcutSizeInPixels(Landroid/content/Context;)I
    .locals 1

    const-string v0, "activity"

    .line 219
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 220
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result p0

    return p0
.end method

.method private sendShortcutIntent(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Intent;)V
    .locals 4

    .line 199
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const-string v0, "%s:%s"

    const/4 v1, 0x2

    .line 200
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v1, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    invoke-direct {v1, p1, v0}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1, p4}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIntent(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p4

    .line 203
    invoke-static {p3}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p3

    .line 204
    invoke-virtual {p3, p2}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p2

    .line 205
    invoke-virtual {p2}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object p2

    const/4 p3, 0x0

    .line 206
    invoke-static {p1, p2, p3}, Landroidx/core/content/pm/ShortcutManagerCompat;->requestPinShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;Landroid/content/IntentSender;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ShortcutService"

    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to add shortcut "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.shortcut.NAME"

    .line 211
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.ICON"

    .line 212
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.INTENT"

    .line 213
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public loadShortcut(Landroid/content/Context;Lcom/evie/jigsaw/services/images/models/Image;)V
    .locals 1

    .line 108
    invoke-static {p1}, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->getShortcutSizeInPixels(Landroid/content/Context;)I

    move-result p1

    .line 109
    iget-object v0, p0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->imageResolver:Lcom/evie/jigsaw/services/images/ImageResolver;

    invoke-interface {v0, p2, p1}, Lcom/evie/jigsaw/services/images/ImageResolver;->resolve(Lcom/evie/jigsaw/services/images/models/Image;I)Landroid/net/Uri;

    move-result-object p1

    .line 110
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object p2

    .line 112
    invoke-virtual {p2, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInBitmapMemoryCache(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->fromUri(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p2, p1, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->prefetchToBitmapCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    :cond_0
    return-void
.end method

.method public makeShortcut(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/evie/jigsaw/services/images/models/Image;Lcom/evie/jigsaw/services/images/models/Image;Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;)V
    .locals 13

    move-object v8, p0

    move-object v3, p1

    move-object/from16 v9, p6

    .line 70
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/evie/jigsaw/R$layout;->v2_subcomponent_shortcut_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 71
    sget v1, Lcom/evie/jigsaw/R$id;->shortcut_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/EditText;

    .line 72
    sget v1, Lcom/evie/jigsaw/R$id;->shortcut_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object v7, p2

    .line 75
    invoke-virtual {v2, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 76
    invoke-direct {p0, p1, v4, v5}, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->getShortcutBitmap(Landroid/content/Context;Lcom/evie/jigsaw/services/images/models/Image;Lcom/evie/jigsaw/services/images/models/Image;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 77
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x5

    invoke-direct {v1, p1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 81
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/evie/jigsaw/R$string;->shortcut_dialog_title:I

    .line 82
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    sget v11, Lcom/evie/jigsaw/R$string;->shortcut_dialog_positive_button:I

    new-instance v12, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$2;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$2;-><init>(Lcom/evie/jigsaw/services/shortcuts/ShortcutService;Landroid/widget/EditText;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/Intent;Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/evie/jigsaw/R$string;->shortcut_dialog_negative_button:I

    new-instance v2, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$1;

    invoke-direct {v2, p0, v9}, Lcom/evie/jigsaw/services/shortcuts/ShortcutService$1;-><init>(Lcom/evie/jigsaw/services/shortcuts/ShortcutService;Lcom/evie/common/services/analytics/models/AnalyticsData;)V

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 104
    iget-object v0, v8, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

    move-object/from16 v1, p7

    invoke-interface {v0, v9, v1}, Lcom/evie/common/services/analytics/AnalyticsService;->recordShortcutRequestEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;)V

    return-void
.end method
