.class public final Lcom/voxel/launcher3/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field public static final ATLEAST_JB_MR1:Z

.field public static final ATLEAST_JB_MR2:Z

.field public static final ATLEAST_KITKAT:Z

.field public static final ATLEAST_LOLLIPOP:Z

.field public static final ATLEAST_LOLLIPOP_MR1:Z

.field public static final ATLEAST_MARSHMALLOW:Z

.field public static final ATLEAST_N:Z

.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final MAXIMUM_POOL_SIZE:I

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field static sColorIndex:I = 0x0

.field static sColors:[I = null

.field public static sForceEnableRotation:Z = false

.field private static sIconHeight:I = -0x1

.field public static sIconTextureHeight:I = -0x1

.field public static sIconTextureWidth:I = -0x1

.field private static sIconWidth:I = -0x1

.field static sLoc0:[I

.field static sLoc1:[I

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static final sTrimPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/Utilities;->sCanvas:Landroid/graphics/Canvas;

    const-string v0, "^[\\s|\\p{javaSpaceChar}]*(.*)[\\s|\\p{javaSpaceChar}]*$"

    .line 89
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/voxel/launcher3/Utilities;->sTrimPattern:Ljava/util/regex/Pattern;

    .line 93
    sget-object v0, Lcom/voxel/launcher3/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    const/4 v0, 0x3

    .line 97
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/voxel/launcher3/Utilities;->sColors:[I

    const/4 v0, 0x0

    .line 98
    sput v0, Lcom/voxel/launcher3/Utilities;->sColorIndex:I

    .line 100
    new-array v1, v2, [I

    sput-object v1, Lcom/voxel/launcher3/Utilities;->sLoc0:[I

    .line 101
    new-array v1, v2, [I

    sput-object v1, Lcom/voxel/launcher3/Utilities;->sLoc1:[I

    .line 120
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    const/16 v4, 0x18

    if-lt v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/voxel/launcher3/Utilities;->ATLEAST_N:Z

    .line 122
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v1, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sput-boolean v1, Lcom/voxel/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    .line 124
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v1, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    sput-boolean v1, Lcom/voxel/launcher3/Utilities;->ATLEAST_LOLLIPOP_MR1:Z

    .line 127
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    sput-boolean v1, Lcom/voxel/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    .line 130
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v1, v4, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    sput-boolean v1, Lcom/voxel/launcher3/Utilities;->ATLEAST_KITKAT:Z

    .line 133
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v1, v4, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    sput-boolean v1, Lcom/voxel/launcher3/Utilities;->ATLEAST_JB_MR1:Z

    .line 136
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v1, v4, :cond_6

    const/4 v0, 0x1

    :cond_6
    sput-boolean v0, Lcom/voxel/launcher3/Utilities;->ATLEAST_JB_MR2:Z

    .line 141
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/voxel/launcher3/Utilities;->CPU_COUNT:I

    .line 142
    sget v0, Lcom/voxel/launcher3/Utilities;->CPU_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/voxel/launcher3/Utilities;->CORE_POOL_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    .line 143
    sput v0, Lcom/voxel/launcher3/Utilities;->MAXIMUM_POOL_SIZE:I

    .line 148
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/voxel/launcher3/Utilities;->CORE_POOL_SIZE:I

    sget v3, Lcom/voxel/launcher3/Utilities;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/voxel/simplesearchlauncher/utils/NamedThreadFactory;

    const-class v1, Lcom/voxel/launcher3/Utilities;

    .line 150
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/voxel/simplesearchlauncher/utils/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/voxel/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const-string v0, "launcher_force_rotate"

    .line 155
    invoke-static {v0}, Lcom/voxel/launcher3/Utilities;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/voxel/launcher3/Utilities;->sForceEnableRotation:Z

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addShadowToIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 196
    invoke-static {}, Lcom/voxel/launcher3/graphics/ShadowGenerator;->getInstance()Lcom/voxel/launcher3/graphics/ShadowGenerator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/graphics/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static assertWorkerThread()V
    .locals 2

    .line 741
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->isDogfoodBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 742
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 743
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static badgeWithBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 207
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0701cf

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 208
    sget-object v0, Lcom/voxel/launcher3/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v0

    .line 209
    :try_start_0
    sget-object v1, Lcom/voxel/launcher3/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 210
    sget-object v1, Lcom/voxel/launcher3/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    .line 211
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, p2

    .line 212
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v3, v4, v5, p2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-direct {p2, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 210
    invoke-virtual {v1, p1, v2, v3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 214
    sget-object p1, Lcom/voxel/launcher3/Utilities;->sCanvas:Landroid/graphics/Canvas;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 215
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4

    .line 247
    sget-object v0, Lcom/voxel/launcher3/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v0

    .line 248
    :try_start_0
    sget v1, Lcom/voxel/launcher3/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 249
    invoke-static {p1}, Lcom/voxel/launcher3/Utilities;->initStatics(Landroid/content/Context;)V

    .line 251
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    sget v0, Lcom/voxel/launcher3/Utilities;->sIconTextureWidth:I

    .line 254
    sget v1, Lcom/voxel/launcher3/Utilities;->sIconTextureHeight:I

    .line 255
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 256
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v0, :cond_1

    if-le v3, v1, :cond_1

    const/4 p1, 0x1

    .line 259
    invoke-static {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne v2, v0, :cond_2

    if-ne v3, v1, :cond_2

    return-object p0

    .line 265
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 266
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v1, p1}, Lcom/voxel/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 251
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    .line 276
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getIconNormalizationSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-static {}, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->getInstance()Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 278
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/voxel/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;F)Landroid/graphics/Bitmap;
    .locals 10

    .line 283
    sget-object v0, Lcom/voxel/launcher3/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v0

    .line 284
    :try_start_0
    sget v1, Lcom/voxel/launcher3/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 285
    invoke-static {p1}, Lcom/voxel/launcher3/Utilities;->initStatics(Landroid/content/Context;)V

    .line 288
    :cond_0
    sget v1, Lcom/voxel/launcher3/Utilities;->sIconWidth:I

    .line 289
    sget v2, Lcom/voxel/launcher3/Utilities;->sIconHeight:I

    .line 291
    instance-of v3, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v3, :cond_1

    .line 292
    move-object p1, p0

    check-cast p1, Landroid/graphics/drawable/PaintDrawable;

    .line 293
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 294
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    goto :goto_0

    .line 295
    :cond_1
    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    .line 297
    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 298
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 299
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v4

    if-nez v4, :cond_2

    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 303
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 304
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-lez p1, :cond_4

    if-lez v3, :cond_4

    int-to-float v4, p1

    int-to-float v5, v3

    div-float/2addr v4, v5

    if-le p1, v3, :cond_3

    int-to-float p1, v1

    div-float/2addr p1, v4

    float-to-int v2, p1

    goto :goto_1

    :cond_3
    if-le v3, p1, :cond_4

    int-to-float p1, v2

    mul-float p1, p1, v4

    float-to-int v1, p1

    .line 316
    :cond_4
    :goto_1
    sget p1, Lcom/voxel/launcher3/Utilities;->sIconTextureWidth:I

    .line 317
    sget v3, Lcom/voxel/launcher3/Utilities;->sIconTextureHeight:I

    .line 319
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 321
    sget-object v5, Lcom/voxel/launcher3/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 322
    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sub-int v6, p1, v1

    .line 324
    div-int/lit8 v6, v6, 0x2

    sub-int v7, v3, v2

    .line 325
    div-int/lit8 v7, v7, 0x2

    .line 338
    sget-object v8, Lcom/voxel/launcher3/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    add-int/2addr v1, v6

    add-int/2addr v2, v7

    .line 339
    invoke-virtual {p0, v6, v7, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 340
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 341
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    invoke-virtual {v5, p2, p2, p1, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 342
    invoke-virtual {p0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 343
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 344
    sget-object p1, Lcom/voxel/launcher3/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 p0, 0x0

    .line 345
    invoke-virtual {v5, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 347
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception p0

    .line 348
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static createIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    .line 225
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 228
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 230
    invoke-virtual {p0, p1, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 232
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/IconCache;->getFullResIconDpi()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 231
    invoke-static {p0, p2}, Lcom/voxel/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public static createIconDrawable(Landroid/graphics/Bitmap;)Lcom/voxel/launcher3/FastBitmapDrawable;
    .locals 1

    .line 161
    new-instance v0, Lcom/voxel/launcher3/FastBitmapDrawable;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p0, 0x1

    .line 162
    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/FastBitmapDrawable;->setFilterBitmap(Z)V

    .line 163
    invoke-static {v0}, Lcom/voxel/launcher3/Utilities;->resizeIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static findDominantColorByHue(Landroid/graphics/Bitmap;I)I
    .locals 19

    move-object/from16 v0, p0

    .line 596
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 597
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int v3, v1, v2

    .line 598
    div-int v3, v3, p1

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    const/4 v5, 0x3

    .line 604
    new-array v5, v5, [F

    const/16 v6, 0x168

    .line 608
    new-array v6, v6, [F

    const/4 v7, -0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    :goto_0
    const/high16 v13, -0x1000000

    if-ge v7, v1, :cond_5

    move v14, v11

    move v11, v10

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v2, :cond_4

    .line 614
    invoke-virtual {v0, v10, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    shr-int/lit8 v8, v15, 0x18

    and-int/lit16 v8, v8, 0xff

    const/16 v12, 0x80

    if-ge v8, v12, :cond_1

    goto :goto_2

    :cond_1
    or-int v8, v15, v13

    .line 622
    invoke-static {v8, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 624
    aget v8, v5, v9

    float-to-int v8, v8

    if-ltz v8, :cond_3

    .line 625
    array-length v12, v6

    if-lt v8, v12, :cond_2

    goto :goto_2

    .line 629
    :cond_2
    aget v12, v5, v4

    const/4 v15, 0x2

    aget v17, v5, v15

    mul-float v12, v12, v17

    .line 630
    aget v15, v6, v8

    add-float/2addr v15, v12

    aput v15, v6, v8

    .line 631
    aget v12, v6, v8

    cmpl-float v12, v12, v14

    if-lez v12, :cond_3

    .line 632
    aget v14, v6, v8

    move v11, v8

    :cond_3
    :goto_2
    add-int/2addr v10, v3

    goto :goto_1

    :cond_4
    add-int/2addr v7, v3

    move v10, v11

    move v11, v14

    goto :goto_0

    .line 638
    :cond_5
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    const/4 v7, 0x0

    const/high16 v8, -0x1000000

    const/high16 v11, -0x40800000    # -1.0f

    :goto_3
    if-ge v7, v1, :cond_a

    move v12, v11

    move v11, v8

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v2, :cond_9

    .line 646
    invoke-virtual {v0, v8, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v14

    or-int/2addr v14, v13

    .line 647
    invoke-static {v14, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 648
    aget v15, v5, v9

    float-to-int v15, v15

    if-ne v15, v10, :cond_7

    .line 650
    aget v15, v5, v4

    const/16 v16, 0x2

    .line 651
    aget v17, v5, v16

    const/high16 v18, 0x42c80000    # 100.0f

    mul-float v4, v15, v18

    float-to-int v4, v4

    const v18, 0x461c4000    # 10000.0f

    mul-float v9, v17, v18

    float-to-int v9, v9

    add-int/2addr v4, v9

    mul-float v15, v15, v17

    .line 655
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    if-nez v9, :cond_6

    goto :goto_5

    .line 656
    :cond_6
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    add-float/2addr v9, v15

    move v15, v9

    .line 657
    :goto_5
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v6, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    cmpl-float v4, v15, v12

    if-lez v4, :cond_8

    move v11, v14

    move v12, v15

    goto :goto_6

    :cond_7
    const/16 v16, 0x2

    :cond_8
    :goto_6
    add-int/2addr v8, v3

    const/4 v4, 0x1

    const/4 v9, 0x0

    goto :goto_4

    :cond_9
    const/16 v16, 0x2

    add-int/2addr v7, v3

    move v8, v11

    move v11, v12

    const/4 v4, 0x1

    const/4 v9, 0x0

    goto :goto_3

    :cond_a
    return v8
.end method

.method static findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation

    .line 675
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 676
    invoke-virtual {p1, v0, p0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 677
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 679
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 681
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 682
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string v1, "Launcher.Utilities"

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find resources for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 3

    .line 784
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x4

    .line 785
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 787
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 788
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 789
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 790
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "Favorite"

    const-string v0, "Could not write icon"

    .line 792
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F
    .locals 9

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    .line 391
    new-array v1, v1, [F

    const/4 v2, 0x0

    aget v3, p2, v2

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v3, 0x1

    aget v4, p2, v3

    int-to-float v4, v4

    aput v4, v1, v3

    move-object v4, p0

    :goto_0
    if-eq v4, p1, :cond_0

    if-eqz v4, :cond_0

    .line 396
    :try_start_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 402
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Descendant: "

    .line 403
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    .line 405
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "AncestorChain:\n"

    .line 407
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 409
    invoke-virtual {v7}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    .line 410
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v6, "root:"

    .line 413
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "Launcher.Utilities"

    .line 416
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p1, v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    :goto_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 421
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 p1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_3
    if-ge p1, v4, :cond_4

    .line 423
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-ne v6, p0, :cond_2

    if-eqz p3, :cond_3

    .line 427
    :cond_2
    aget v7, v1, v2

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    aput v7, v1, v2

    .line 428
    aget v7, v1, v3

    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    aput v7, v1, v3

    .line 431
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 432
    aget v7, v1, v2

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v1, v2

    .line 433
    aget v7, v1, v3

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v1, v3

    .line 434
    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v6

    mul-float v5, v5, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 437
    :cond_4
    aget p0, v1, v2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    aput p0, p2, v2

    .line 438
    aget p0, v1, v3

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    aput p0, p2, v3

    return v5
.end method

.method public static getIconSize(Landroid/content/Context;)I
    .locals 3

    .line 500
    sget-object v0, Lcom/voxel/launcher3/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v0

    .line 501
    :try_start_0
    sget v1, Lcom/voxel/launcher3/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 502
    invoke-static {p0}, Lcom/voxel/launcher3/Utilities;->initStatics(Landroid/content/Context;)V

    .line 505
    :cond_0
    sget p0, Lcom/voxel/launcher3/Utilities;->sIconWidth:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 506
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 1

    .line 494
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070063

    .line 495
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    sput p0, Lcom/voxel/launcher3/Utilities;->sIconHeight:I

    sput p0, Lcom/voxel/launcher3/Utilities;->sIconWidth:I

    .line 496
    sget p0, Lcom/voxel/launcher3/Utilities;->sIconWidth:I

    sput p0, Lcom/voxel/launcher3/Utilities;->sIconTextureHeight:I

    sput p0, Lcom/voxel/launcher3/Utilities;->sIconTextureWidth:I

    return-void
.end method

.method public static isAtLeast81()Z
    .locals 2

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAtLeastO()Z
    .locals 2

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLmpOrAbove()Z
    .locals 2

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNycMR1OrAbove()Z
    .locals 2

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNycOrAbove()Z
    .locals 2

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isPropertyEnabled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x2

    .line 175
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isRtl(Landroid/content/res/Resources;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 735
    sget-boolean v0, Lcom/voxel/launcher3/Utilities;->ATLEAST_JB_MR1:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .line 565
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 566
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    const/high16 v0, 0x10000

    .line 569
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 570
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 571
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 574
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 578
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_2

    .line 579
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr p0, p1

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1

    :catch_0
    return v0

    :cond_3
    return v0
.end method

.method public static mapCoordInSelfToDescendent(Landroid/view/View;Landroid/view/View;[I)F
    .locals 9

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    .line 449
    new-array v1, v1, [F

    const/4 v2, 0x0

    aget v3, p2, v2

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v3, 0x1

    aget v4, p2, v3

    int-to-float v4, v4

    aput v4, v1, v3

    :goto_0
    if-eq p0, p1, :cond_0

    .line 453
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    .line 456
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 p0, 0x3f800000    # 1.0f

    .line 459
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 460
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_1
    if-ltz v4, :cond_3

    .line 462
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-lez v4, :cond_1

    add-int/lit8 v6, v4, -0x1

    .line 463
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 465
    :goto_2
    aget v7, v1, v2

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v1, v2

    .line 466
    aget v7, v1, v3

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v7, v5

    aput v7, v1, v3

    if-eqz v6, :cond_2

    .line 469
    aget v5, v1, v2

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v5, v7

    aput v5, v1, v2

    .line 470
    aget v5, v1, v3

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v5, v7

    aput v5, v1, v3

    .line 471
    invoke-virtual {v6}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 472
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 473
    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v5

    mul-float p0, p0, v5

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 477
    :cond_3
    aget p1, v1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    aput p1, p2, v2

    .line 478
    aget p1, v1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    aput p1, p2, v3

    return p0
.end method

.method public static pointInView(Landroid/view/View;FFF)Z
    .locals 2

    neg-float v0, p3

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    .line 489
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 490
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, p3

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3

    .line 360
    sget-object v0, Lcom/voxel/launcher3/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v0

    .line 361
    :try_start_0
    sget v1, Lcom/voxel/launcher3/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 362
    invoke-static {p1}, Lcom/voxel/launcher3/Utilities;->initStatics(Landroid/content/Context;)V

    .line 365
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget v2, Lcom/voxel/launcher3/Utilities;->sIconWidth:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget v2, Lcom/voxel/launcher3/Utilities;->sIconHeight:I

    if-ne v1, v2, :cond_1

    .line 366
    monitor-exit v0

    return-object p0

    .line 368
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 369
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v2, p1}, Lcom/voxel/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 371
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static resizeIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 171
    sget v0, Lcom/voxel/launcher3/Utilities;->sIconTextureWidth:I

    sget v1, Lcom/voxel/launcher3/Utilities;->sIconTextureHeight:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public static scaleRect(Landroid/graphics/Rect;F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 516
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 517
    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 518
    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 519
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public static scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    .locals 4

    .line 543
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 544
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    neg-int v2, v0

    neg-int v3, v1

    .line 545
    invoke-virtual {p0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 546
    invoke-static {p0, p1}, Lcom/voxel/launcher3/Utilities;->scaleRect(Landroid/graphics/Rect;F)V

    .line 547
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public static setIconSize(I)V
    .locals 0

    .line 510
    sput p0, Lcom/voxel/launcher3/Utilities;->sIconHeight:I

    sput p0, Lcom/voxel/launcher3/Utilities;->sIconWidth:I

    .line 511
    sput p0, Lcom/voxel/launcher3/Utilities;->sIconTextureHeight:I

    sput p0, Lcom/voxel/launcher3/Utilities;->sIconTextureWidth:I

    return-void
.end method

.method public static setupTransparentSystemBarsForLmp(Landroid/app/Activity;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 700
    invoke-static {}, Lcom/voxel/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v1, v1, 0x700

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 706
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0xc000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 708
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v1, "FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 710
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 712
    const-class v0, Landroid/view/Window;

    const-string v1, "setStatusBarColor"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 713
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 714
    const-class v1, Landroid/view/Window;

    const-string v3, "setNavigationBarColor"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 715
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 716
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string p0, "Launcher.Utilities"

    const-string v0, "InvocationTargetException while setting up transparent bars"

    .line 727
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    const-string p0, "Launcher.Utilities"

    const-string v0, "IllegalArgumentException while setting up transparent bars"

    .line 725
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    const-string p0, "Launcher.Utilities"

    const-string v0, "IllegalAccessException while setting up transparent bars"

    .line 723
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    const-string p0, "Launcher.Utilities"

    const-string v0, "NoSuchMethodException while setting up transparent bars"

    .line 721
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_4
    const-string p0, "Launcher.Utilities"

    const-string v0, "NoSuchFieldException while setting up transparent bars"

    .line 719
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 729
    :goto_0
    throw p0

    :cond_0
    :goto_1
    return-void
.end method

.method public static startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f12002c

    .line 553
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 557
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string p0, "Launcher.Utilities"

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launcher does not have the permission to launch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 555
    :catch_1
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static trim(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 757
    :cond_0
    sget-object v0, Lcom/voxel/launcher3/Utilities;->sTrimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "$1"

    .line 758
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
